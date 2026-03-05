import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/feed_entry.dart';
import 'package:simple_baby_tracker/feeding_entry_card.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class FeedingForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const FeedingForm({
    super.key,
    required this.initialDate,
    this.existingEvent,
  });

  @override
  State<FeedingForm> createState() => _FeedingFormState();
}

class _FeedingFormState extends State<FeedingForm> {
  TimeOfDay _time = TimeOfDay.now();
  final List<FeedEntry> _feeds = [];
  bool get _isEditing => widget.existingEvent != null;

  @override
  void initState() {
    super.initState();

    final existing = widget.existingEvent;
    if (existing != null) {
      final isBottle = (existing.data['isBottle'] as bool?) ?? true;
      _feeds.add(FeedEntry(
        feedMode: isBottle ? 'bottle' : 'suckle',
        method: existing.data['method'] as String? ?? 'breast',
        amount: existing.data['amountMl']?.toString() ?? '',
        duration: existing.data['durationMin']?.toString() ?? '',
      ));
      _time =
          TimeOfDay(hour: existing.time.hour, minute: existing.time.minute);
    } else {
      _feeds.add(FeedEntry());
    }
  }

  void _addFeed() => setState(() => _feeds.add(FeedEntry()));

  void _removeFeed(int i) {
    if (_feeds.length > 1) setState(() => _feeds.removeAt(i));
  }

  Future<void> _pickTime() async {
    final t = await showTimePicker(context: context, initialTime: _time);
    if (t != null) setState(() => _time = t);
  }

  void _save() {
    if (_feeds.isEmpty) return;

    final d = widget.initialDate;
    final dt = DateTime(d.year, d.month, d.day, _time.hour, _time.minute);

    if (_isEditing || _feeds.length == 1) {
      // Single event (edit mode or only 1 feed)
      final f = _feeds.first;
      final isBottle = f.feedMode == 'bottle';
      Navigator.pop(
        context,
        TrackerEvent(
          id: widget.existingEvent?.id,
          type: 'feeding',
          time: dt,
          data: {
            'isBottle': isBottle,
            if (isBottle) 'method': f.method,
            'amountMl': isBottle ? (int.tryParse(f.amount) ?? 0) : 0,
            if (!isBottle) 'durationMin': int.tryParse(f.duration) ?? 0,
          },
        ),
      );
    } else {
      // Multiple feeds — return a list so the caller can insert all
      final events = _feeds.map((f) {
        final isBottle = f.feedMode == 'bottle';
        return TrackerEvent(
          type: 'feeding',
          time: dt,
          data: {
            'isBottle': isBottle,
            if (isBottle) 'method': f.method,
            'amountMl': isBottle ? (int.tryParse(f.amount) ?? 0) : 0,
            if (!isBottle) 'durationMin': int.tryParse(f.duration) ?? 0,
          },
        );
      }).toList();
      Navigator.pop(context, events);
    }
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final bottomPadding =
        media.viewInsets.bottom > 0 ? media.viewInsets.bottom : media.padding.bottom + 16;

    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  _isEditing ? 'Edit feeding' : 'Add feeding',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: _pickTime,
                  icon: const Icon(Icons.access_time, size: 18),
                  label: Text(_time.format(context)),
                ),
              ],
            ),
            const SizedBox(height: 8),

            ..._feeds.asMap().entries.map((entry) {
              final i = entry.key;
              final f = entry.value;
              return FeedEntryCard(
                entry: f,
                index: i,
                canRemove: _feeds.length > 1,
                onRemove: () => _removeFeed(i),
                onChanged: () => setState(() {}),
              );
            }),

            if (!_isEditing)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: OutlinedButton.icon(
                  onPressed: _addFeed,
                  icon: const Icon(Icons.add),
                  label: const Text('Add another feed'),
                ),
              ),

            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: FilledButton(
                onPressed: _save,
                child: Text(_isEditing ? 'Update' : 'Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}