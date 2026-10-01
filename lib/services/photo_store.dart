import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/main.dart';

/// Where photos (daily photos, skin-condition photos) live on disk, and how
/// they get there.
///
/// Everything stays inside the app's private documents directory — nothing
/// is uploaded anywhere (the release build doesn't even request the
/// INTERNET permission). Paths stored in the database are *relative* to that
/// directory (`photos/<babyId>/<kind>/<uuid>.jpg`) so a backup restored on
/// another device, with a different absolute path, still resolves.
class PhotoStore {
  PhotoStore._();

  static Directory? _docs;
  static final _picker = ImagePicker();
  static const _kPrivacyAcknowledged = 'photo_privacy_acknowledged';

  static Future<Directory> docsDir() async =>
      _docs ??= await getApplicationDocumentsDirectory();

  static Future<File> file(String relativePath) async =>
      File('${(await docsDir()).path}/$relativePath');

  /// Shows the one-time "photos stay on this phone" explanation before the
  /// first camera/gallery use. Returns false if the parent cancels.
  static Future<bool> ensurePrivacyAcknowledged(BuildContext context) async {
    final sp = await SharedPreferences.getInstance();
    if (sp.getBool(_kPrivacyAcknowledged) ?? false) return true;
    if (!context.mounted) return false;
    final l = AppLocalizations.of(context)!;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        icon: const Icon(Icons.lock_outline),
        title: Text(l.photoPrivacyTitle),
        content: Text(l.photoPrivacyBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(l.actionCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(l.photoPrivacyContinue),
          ),
        ],
      ),
    );
    if (ok == true) await sp.setBool(_kPrivacyAcknowledged, true);
    return ok == true;
  }

  /// Lets the parent choose camera or gallery, copies the result into app
  /// storage, and returns its relative path (or null if cancelled).
  static Future<String?> pickAndStore(
    BuildContext context, {
    required String babyId,
    required String kind,
  }) async {
    if (!await ensurePrivacyAcknowledged(context)) return null;
    if (!context.mounted) return null;
    final l = AppLocalizations.of(context)!;
    final source = await showModalBottomSheet<ImageSource>(
      context: context,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.photo_camera_outlined),
              title: Text(l.photoTakePhoto),
              onTap: () => Navigator.pop(ctx, ImageSource.camera),
            ),
            ListTile(
              leading: const Icon(Icons.photo_library_outlined),
              title: Text(l.photoChooseFromGallery),
              onTap: () => Navigator.pop(ctx, ImageSource.gallery),
            ),
          ],
        ),
      ),
    );
    if (source == null) return null;
    final XFile? picked;
    try {
      // Downscaled on pick: a full-resolution phone photo is 3–8 MB, and a
      // year of daily photos at that size would be gigabytes.
      picked = await _picker.pickImage(
        source: source,
        maxWidth: 2048,
        maxHeight: 2048,
        imageQuality: 85,
      );
    } catch (e) {
      debugPrint('pickImage failed: $e');
      return null;
    }
    if (picked == null) return null;
    return storeFile(File(picked.path), babyId: babyId, kind: kind);
  }

  /// Copies [source] into app storage and returns the new relative path.
  static Future<String> storeFile(
    File source, {
    required String babyId,
    required String kind,
  }) async {
    final rel = 'photos/$babyId/$kind/${uuid.v4()}.jpg';
    final dest = await file(rel);
    await dest.parent.create(recursive: true);
    await source.copy(dest.path);
    return rel;
  }

  /// Recovers a photo the camera returned after Android killed the app in
  /// the background mid-capture (common on low-memory phones).
  static Future<File?> retrieveLostPhoto() async {
    if (!Platform.isAndroid) return null;
    try {
      final lost = await _picker.retrieveLostData();
      final f = lost.file;
      return f == null ? null : File(f.path);
    } catch (_) {
      return null;
    }
  }

  static Future<void> delete(String? relativePath) async {
    if (relativePath == null) return;
    try {
      final f = await file(relativePath);
      if (await f.exists()) await f.delete();
    } catch (e) {
      debugPrint('PhotoStore.delete failed: $e');
    }
  }

  /// Removes every photo belonging to [babyId] (used when a profile is
  /// deleted).
  static Future<void> deleteBaby(String babyId) async {
    try {
      final dir = Directory('${(await docsDir()).path}/photos/$babyId');
      if (await dir.exists()) await dir.delete(recursive: true);
    } catch (e) {
      debugPrint('PhotoStore.deleteBaby failed: $e');
    }
  }
}

/// Shows a photo stored by [PhotoStore], resolving its relative path.
class LocalPhoto extends StatefulWidget {
  final String relativePath;
  final BoxFit fit;

  const LocalPhoto(this.relativePath, {super.key, this.fit = BoxFit.cover});

  @override
  State<LocalPhoto> createState() => _LocalPhotoState();
}

class _LocalPhotoState extends State<LocalPhoto> {
  late Future<File> _file = PhotoStore.file(widget.relativePath);

  @override
  void didUpdateWidget(covariant LocalPhoto old) {
    super.didUpdateWidget(old);
    if (old.relativePath != widget.relativePath) {
      _file = PhotoStore.file(widget.relativePath);
    }
  }

  @override
  Widget build(BuildContext context) {
    final placeholder = ColoredBox(
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
    );
    return FutureBuilder<File>(
      future: _file,
      builder: (context, snap) {
        final f = snap.data;
        if (f == null) return placeholder;
        return Image.file(
          f,
          fit: widget.fit,
          // Decode at roughly display size, not full 2048px, for thumbnails.
          cacheWidth: widget.fit == BoxFit.cover ? 600 : null,
          errorBuilder: (_, _, _) => placeholder,
        );
      },
    );
  }
}
