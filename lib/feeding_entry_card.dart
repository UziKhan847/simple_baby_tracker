import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/feed_entry.dart';

class FeedEntryCard extends StatefulWidget {
  final FeedEntry entry;
  final int index;
  final bool canRemove;
  final VoidCallback onRemove;
  final VoidCallback onChanged;

  const FeedEntryCard({super.key, 
    required this.entry,
    required this.index,
    required this.canRemove,
    required this.onRemove,
    required this.onChanged,
  });

  @override
  State<FeedEntryCard> createState() => FeedEntryCardState();
}

class FeedEntryCardState extends State<FeedEntryCard> {
  late final TextEditingController _amountController;
  late final TextEditingController _durationController;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController(text: widget.entry.amount);
    _durationController = TextEditingController(text: widget.entry.duration);
  }

  @override
  void dispose() {
    _amountController.dispose();
    _durationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final f = widget.entry;

    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Feed ${widget.index + 1}',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const Spacer(),
                if (widget.canRemove)
                  IconButton(
                    icon: const Icon(Icons.close, size: 18),
                    onPressed: widget.onRemove,
                    tooltip: 'Remove this feed',
                    visualDensity: VisualDensity.compact,
                  ),
              ],
            ),
            const SizedBox(height: 8),

            // Feed mode toggle
            SegmentedButton<String>(
              segments: const [
                ButtonSegment(
                  value: 'bottle',
                  label: Text('Bottle'),
                  icon: Icon(Icons.local_drink, size: 16),
                ),
                ButtonSegment(
                  value: 'suckle',
                  label: Text('Suckle'),
                  icon: Icon(Icons.child_care, size: 16),
                ),
              ],
              selected: {f.feedMode},
              onSelectionChanged: (s) {
                setState(() => f.feedMode = s.first);
                widget.onChanged();
              },
            ),

            const SizedBox(height: 10),

            if (f.feedMode == 'bottle') ...[
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _amountController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Amount (ml)',
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                      onChanged: (v) {
                        f.amount = v;
                        widget.onChanged();
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      initialValue: f.method,
                      decoration: const InputDecoration(
                        labelText: 'Method',
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                      items: const [
                        DropdownMenuItem(
                            value: 'breast', child: Text('Breast milk')),
                        DropdownMenuItem(
                            value: 'formula', child: Text('Formula')),
                      ],
                      onChanged: (v) {
                        setState(() => f.method = v ?? 'breast');
                        widget.onChanged();
                      },
                    ),
                  ),
                ],
              ),
            ] else ...[
              TextField(
                controller: _durationController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Duration (minutes)',
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
                onChanged: (v) {
                  f.duration = v;
                  widget.onChanged();
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}
