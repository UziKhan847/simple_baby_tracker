import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/models/photo_entry.dart';
import 'package:simple_baby_tracker/services/photo_store.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';

/// "Watch them grow": one photo per day, shown as a month-by-month timeline
/// with the baby's age on every photo. Lives as a tab inside Memories.
class PhotosView extends StatefulWidget {
  final String babyId;
  final DateTime? birthDate;

  const PhotosView({super.key, required this.babyId, this.birthDate});

  @override
  State<PhotosView> createState() => _PhotosViewState();
}

class _PhotosViewState extends State<PhotosView>
    with AutomaticKeepAliveClientMixin {
  List<PhotoEntry> _photos = [];
  bool _loading = true;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void didUpdateWidget(covariant PhotosView old) {
    super.didUpdateWidget(old);
    if (old.babyId != widget.babyId) _load();
  }

  Future<void> _load() async {
    final photos = await Storage.loadPhotos(widget.babyId);
    photos.sort((a, b) => b.date.compareTo(a.date));
    if (!mounted) return;
    setState(() {
      _photos = photos;
      _loading = false;
    });
    // A camera capture can outlive the app process on low-memory phones —
    // if so, file it as today's photo now that we're back.
    final lost = await PhotoStore.retrieveLostPhoto();
    if (lost != null && mounted) {
      final rel = await PhotoStore.storeFile(
        lost,
        babyId: widget.babyId,
        kind: 'daily',
      );
      await _setPhotoFor(DateTime.now(), rel);
    }
  }

  PhotoEntry? _photoOn(DateTime day) {
    final key = dateKey(day);
    for (final p in _photos) {
      if (dateKey(p.date) == key) return p;
    }
    return null;
  }

  /// One photo per day: replaces (and deletes the file of) any existing
  /// photo on that day.
  Future<void> _setPhotoFor(DateTime day, String relativePath) async {
    final existing = _photoOn(day);
    if (existing != null) {
      await PhotoStore.delete(existing.relativePath);
      existing.relativePath = relativePath;
    } else {
      _photos.add(
        PhotoEntry(
          date: DateTime(day.year, day.month, day.day),
          relativePath: relativePath,
        ),
      );
    }
    _photos.sort((a, b) => b.date.compareTo(a.date));
    await Storage.savePhotos(widget.babyId, _photos);
    if (mounted) setState(() {});
  }

  Future<void> _addFor(DateTime day) async {
    final rel = await PhotoStore.pickAndStore(
      context,
      babyId: widget.babyId,
      kind: 'daily',
    );
    if (rel != null) await _setPhotoFor(day, rel);
  }

  Future<void> _addForOtherDay() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: widget.birthDate ?? DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked != null && mounted) await _addFor(picked);
  }

  Future<void> _delete(PhotoEntry p) async {
    _photos.removeWhere((x) => x.id == p.id);
    await PhotoStore.delete(p.relativePath);
    await Storage.savePhotos(widget.babyId, _photos);
    if (mounted) setState(() {});
  }

  Future<void> _editCaption(PhotoEntry p) async {
    final l = AppLocalizations.of(context)!;
    final ctrl = TextEditingController(text: p.caption ?? '');
    final result = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.photoCaption),
        content: TextField(
          controller: ctrl,
          autofocus: true,
          textCapitalization: TextCapitalization.sentences,
          maxLines: 3,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l.actionCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, ctrl.text.trim()),
            child: Text(l.actionSave),
          ),
        ],
      ),
    );
    ctrl.dispose();
    if (result == null) return;
    p.caption = result.isEmpty ? null : result;
    await Storage.savePhotos(widget.babyId, _photos);
    if (mounted) setState(() {});
  }

  String? _ageLabel(DateTime date, AppLocalizations l) {
    final birth = widget.birthDate;
    if (birth == null) return null;
    return ageAt(birth, date, l);
  }

  void _openViewer(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => _PhotoViewer(
          photos: _photos,
          initialIndex: index,
          ageLabel: _ageLabel,
          onDelete: _delete,
          onEditCaption: _editCaption,
        ),
      ),
    );
  }

  void _openCompare() {
    final l = AppLocalizations.of(context)!;
    final first = _photos.last;
    final latest = _photos.first;
    showDialog(
      context: context,
      builder: (ctx) => Dialog(
        insetPadding: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(l.photoCompare, style: Theme.of(ctx).textTheme.titleMedium),
              const SizedBox(height: 12),
              Row(
                children: [
                  for (final p in [first, latest])
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Column(
                          children: [
                            AspectRatio(
                              aspectRatio: 3 / 4,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: LocalPhoto(p.relativePath),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              fullDate(p.date),
                              style: Theme.of(ctx).textTheme.labelMedium,
                              textAlign: TextAlign.center,
                            ),
                            if (_ageLabel(p.date, l) case final age?)
                              Text(
                                age,
                                style: Theme.of(ctx).textTheme.bodySmall,
                                textAlign: TextAlign.center,
                              ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.pop(ctx),
                  child: Text(l.actionClose),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l = AppLocalizations.of(context)!;
    if (_loading) return const Center(child: CircularProgressIndicator());

    final today = _photoOn(DateTime.now());

    // Month groups, newest first; each holds (index into _photos, entry).
    final groups = <String, List<(int, PhotoEntry)>>{};
    for (var i = 0; i < _photos.length; i++) {
      final p = _photos[i];
      final key = '${p.date.year}-${p.date.month}';
      groups.putIfAbsent(key, () => []).add((i, p));
    }

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
          sliver: SliverToBoxAdapter(
            child: _TodayCard(
              photo: today,
              ageLabel: _ageLabel(DateTime.now(), l),
              onAdd: () => _addFor(DateTime.now()),
              onOpen: today == null
                  ? null
                  : () => _openViewer(_photos.indexOf(today)),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          sliver: SliverToBoxAdapter(
            child: Wrap(
              spacing: 8,
              children: [
                ActionChip(
                  avatar: const AppIcon(AppIcons.calendar, size: 16),
                  label: Text(l.photoAddOtherDay),
                  onPressed: _addForOtherDay,
                ),
                if (_photos.length >= 2)
                  ActionChip(
                    avatar: const AppIcon(AppIcons.growthSpurt, size: 16),
                    label: Text(l.photoCompare),
                    onPressed: _openCompare,
                  ),
              ],
            ),
          ),
        ),
        if (_photos.isEmpty)
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Text(
                  l.photoEmpty,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ),
          ),
        for (final entry in groups.entries) ...[
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 18, 20, 8),
            sliver: SliverToBoxAdapter(
              child: Text(
                '${fullMonthName(entry.value.first.$2.date)} '
                '${entry.value.first.$2.date.year}',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
              childAspectRatio: 3 / 4,
              children: [
                for (final (i, p) in entry.value)
                  _Thumb(
                    photo: p,
                    ageLabel: _ageLabel(p.date, l),
                    onTap: () => _openViewer(i),
                  ),
              ],
            ),
          ),
        ],
        const SliverToBoxAdapter(child: SizedBox(height: 96)),
      ],
    );
  }
}

class _TodayCard extends StatelessWidget {
  final PhotoEntry? photo;
  final String? ageLabel;
  final VoidCallback onAdd;
  final VoidCallback? onOpen;

  const _TodayCard({
    required this.photo,
    required this.ageLabel,
    required this.onAdd,
    required this.onOpen,
  });

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.extension<AppColors>()!;
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        gradient: colors.todayGradient,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: SizedBox(
              width: 72,
              height: 96,
              child: photo == null
                  ? ColoredBox(
                      color: theme.colorScheme.onSurface.withValues(
                        alpha: 0.08,
                      ),
                      child: Icon(
                        Icons.photo_camera_outlined,
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.6,
                        ),
                      ),
                    )
                  : InkWell(
                      onTap: onOpen,
                      child: LocalPhoto(photo!.relativePath),
                    ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l.photoToday,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (ageLabel != null)
                  Text(ageLabel!, style: theme.textTheme.bodySmall),
                const SizedBox(height: 8),
                FilledButton.tonal(
                  onPressed: onAdd,
                  child: Text(photo == null ? l.photoAddToday : l.photoReplace),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Thumb extends StatelessWidget {
  final PhotoEntry photo;
  final String? ageLabel;
  final VoidCallback onTap;

  const _Thumb({
    required this.photo,
    required this.ageLabel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        fit: StackFit.expand,
        children: [
          LocalPhoto(photo.relativePath),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(6, 14, 6, 5),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black54],
                ),
              ),
              child: Text(
                ageLabel ?? '${photo.date.month}/${photo.date.day}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(onTap: onTap),
          ),
        ],
      ),
    );
  }
}

class _PhotoViewer extends StatefulWidget {
  final List<PhotoEntry> photos;
  final int initialIndex;
  final String? Function(DateTime, AppLocalizations) ageLabel;
  final Future<void> Function(PhotoEntry) onDelete;
  final Future<void> Function(PhotoEntry) onEditCaption;

  const _PhotoViewer({
    required this.photos,
    required this.initialIndex,
    required this.ageLabel,
    required this.onDelete,
    required this.onEditCaption,
  });

  @override
  State<_PhotoViewer> createState() => _PhotoViewerState();
}

class _PhotoViewerState extends State<_PhotoViewer> {
  late final _controller = PageController(initialPage: widget.initialIndex);
  late int _index = widget.initialIndex;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _confirmDelete(PhotoEntry p) async {
    final l = AppLocalizations.of(context)!;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.photoDeleteTitle),
        content: Text(l.cannotUndo),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(l.actionCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(l.actionDelete),
          ),
        ],
      ),
    );
    if (ok != true) return;
    await widget.onDelete(p);
    if (!mounted) return;
    if (widget.photos.isEmpty) {
      Navigator.pop(context);
    } else {
      setState(() => _index = _index.clamp(0, widget.photos.length - 1));
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    if (widget.photos.isEmpty) return const SizedBox.shrink();
    final p = widget.photos[_index];
    final age = widget.ageLabel(p.date, l);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 16),
        title: Text(fullDate(p.date)),
        actions: [
          IconButton(
            tooltip: l.photoCaption,
            icon: const AppIcon(AppIcons.edit, style: AppIconStyle.line),
            onPressed: () async {
              await widget.onEditCaption(p);
              if (mounted) setState(() {});
            },
          ),
          IconButton(
            tooltip: l.actionDelete,
            icon: const AppIcon(AppIcons.delete, style: AppIconStyle.line),
            onPressed: () => _confirmDelete(p),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: widget.photos.length,
              onPageChanged: (i) => setState(() => _index = i),
              itemBuilder: (_, i) => InteractiveViewer(
                child: Center(
                  child: LocalPhoto(
                    widget.photos[i].relativePath,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 16),
              child: Column(
                children: [
                  if (age != null)
                    Text(
                      age,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  if (p.caption != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      p.caption!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white70),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
