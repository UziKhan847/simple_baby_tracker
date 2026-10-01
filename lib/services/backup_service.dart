import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/services/photo_store.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

/// Backups as a single `.zip`: `backup.json` (the [Storage] envelope) plus
/// every photo it references under `photos/…`, at the same relative paths
/// the app uses on disk. Plain `.json` backups from older versions still
/// import (data only).
class BackupService {
  BackupService._();

  static const _jsonName = 'backup.json';

  /// Writes the backup zip into the app's documents directory and returns
  /// it, ready to hand to the share sheet.
  static Future<File> exportZip({
    required String babyId,
    required String babyName,
    required Map<String, List<TrackerEvent>> data,
  }) async {
    final envelope = await Storage.buildBackupEnvelope(babyId, data);
    final bundle = Storage.parseImportJson(json.encode(envelope));
    final docs = (await PhotoStore.docsDir()).path;
    final safeName = babyName.replaceAll(RegExp(r'[^A-Za-z0-9_-]+'), '_');
    final outPath =
        '$docs/baby_tracker_backup_${safeName}_${dateKey(DateTime.now())}.zip';
    final jsonText = json.encode(envelope);
    final photoPaths = bundle.photoPaths.toSet().toList();

    // Reading and zipping a year of photos can take a while — off the UI
    // isolate so the app doesn't freeze while it runs.
    await Isolate.run(() {
      final archive = Archive()
        ..addFile(ArchiveFile.string(_jsonName, jsonText));
      for (final rel in photoPaths) {
        final f = File('$docs/$rel');
        if (!f.existsSync()) continue;
        final bytes = f.readAsBytesSync();
        // JPEGs are already compressed; deflating them again only costs time.
        archive.addFile(ArchiveFile.noCompress(rel, bytes.length, bytes));
      }
      File(outPath).writeAsBytesSync(ZipEncoder().encodeBytes(archive));
    });
    return File(outPath);
  }

  /// Parses a picked backup file — a `.zip` from this version or a plain
  /// `.json` from older ones. Returns null if it isn't a Baby Tracker
  /// backup. For zips, [PendingImport.restorePhotos] then writes the
  /// photos into place once the parent confirms.
  static Future<PendingImport?> read(String fileName, Uint8List bytes) async {
    final isZip =
        fileName.toLowerCase().endsWith('.zip') ||
        (bytes.length > 3 && bytes[0] == 0x50 && bytes[1] == 0x4B);
    if (!isZip) {
      final bundle = Storage.tryParseImportJson(utf8.decode(bytes));
      return bundle == null ? null : PendingImport._(bundle, const {});
    }
    try {
      // Decoded off the UI isolate; only plain name → bytes comes back.
      final files = await Isolate.run(() {
        final out = <String, Uint8List>{};
        for (final f in ZipDecoder().decodeBytes(bytes)) {
          if (!f.isFile) continue;
          final b = f.readBytes();
          if (b != null) out[f.name] = b;
        }
        return out;
      });
      final jsonBytes = files.remove(_jsonName);
      if (jsonBytes == null) return null;
      final bundle = Storage.tryParseImportJson(utf8.decode(jsonBytes));
      if (bundle == null) return null;
      final photos = {
        for (final e in files.entries)
          if (e.key.startsWith('photos/')) e.key: e.value,
      };
      return PendingImport._(bundle, photos);
    } catch (_) {
      return null;
    }
  }
}

/// A parsed backup waiting for the parent's merge/replace choice.
class PendingImport {
  final ImportBundle bundle;
  final Map<String, Uint8List> _photoFiles;

  PendingImport._(this.bundle, this._photoFiles);

  int get photoCount => _photoFiles.length;

  /// Writes the backup's photos into [babyId]'s photo folder and points the
  /// imported photo/skin records at them. With [replace], the baby's
  /// existing photos are removed first (their records are being replaced
  /// too). Call before [Storage.importData].
  Future<void> restorePhotos(String babyId, {required bool replace}) async {
    if (replace) await PhotoStore.deleteBaby(babyId);
    final sourcePrefix = RegExp(r'^photos/[^/]+/');
    for (final entry in _photoFiles.entries) {
      final rel = entry.key.replaceFirst(sourcePrefix, 'photos/$babyId/');
      final f = await PhotoStore.file(rel);
      await f.parent.create(recursive: true);
      await f.writeAsBytes(entry.value);
    }
    bundle.retargetPhotos(babyId);
  }
}

/// Builds the backup zip for [babyId] and opens the share sheet (or, on
/// Linux desktop where share_plus can't share files, shows the saved path).
/// Shared by Home's share button and Settings → Export backup.
Future<void> exportAndShareBackup(
  BuildContext context, {
  required String babyId,
  required Map<String, List<TrackerEvent>> data,
}) async {
  final l = AppLocalizations.of(context)!;
  final messenger = ScaffoldMessenger.of(context);
  messenger.showSnackBar(SnackBar(content: Text(l.backupPreparing)));
  final profiles = await Storage.loadProfiles();
  final name = profiles
      .where((p) => p.id == babyId)
      .map((p) => p.name)
      .firstOrNull;
  final File file;
  try {
    file = await BackupService.exportZip(
      babyId: babyId,
      babyName: name ?? 'baby',
      data: data,
    );
  } catch (e) {
    messenger.showSnackBar(SnackBar(content: Text(l.backupFailed)));
    return;
  }
  messenger.hideCurrentSnackBar();
  if (!context.mounted) return;

  if (Theme.of(context).platform == TargetPlatform.linux) {
    await showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.actionExport),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l.backupSavedTo),
            const SizedBox(height: 8),
            SelectableText(
              file.path,
              style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l.actionClose),
          ),
        ],
      ),
    );
    return;
  }

  await SharePlus.instance.share(
    ShareParams(
      files: [XFile(file.path, mimeType: 'application/zip')],
      subject: l.backupShareSubject,
    ),
  );
}
