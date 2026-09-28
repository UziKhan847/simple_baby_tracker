import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_form_scaffold.dart';
import 'package:simple_baby_tracker/widgets/pill_segmented_control.dart';

/// The allergens paediatric guidance most often names for early, deliberate
/// introduction — offered as quick-pick chips so logging a "first taste" of
/// one takes a tap, not typing.
const commonAllergens = [
  'Peanut',
  'Egg',
  'Dairy',
  'Wheat',
  'Soy',
  'Fish',
  'Shellfish',
  'Tree nuts',
  'Sesame',
];

/// A few common early foods beyond the allergen list, so the chip row isn't
/// only allergens.
const commonFirstFoods = [
  'Banana',
  'Avocado',
  'Sweet potato',
  'Rice cereal',
  'Oatmeal',
  'Carrot',
  'Apple',
  'Pea',
];

const solidsReactionSymptoms = ['Rash', 'Hives', 'Vomiting', 'Diarrhea', 'Swelling'];

String solidsAmountLabel(String amount, AppLocalizations l) => switch (amount) {
  'few_spoons' => l.solidsAmountFewSpoons,
  'half' => l.solidsAmountHalf,
  'full' => l.solidsAmountFull,
  _ => l.solidsAmountTaste,
};

String solidsReactionLabel(String reaction, AppLocalizations l) => switch (reaction) {
  'mild' => l.solidsReactionMild,
  'allergic' => l.solidsReactionAllergic,
  _ => l.solidsReactionNone,
};

class SolidsForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  /// Foods never logged before today, across every day — used to show a
  /// "first time!" badge automatically once a food is added here.
  final Set<String> triedFoods;

  const SolidsForm({
    super.key,
    required this.initialDate,
    this.existingEvent,
    this.triedFoods = const {},
  });

  @override
  State<SolidsForm> createState() => _SolidsFormState();
}

class _SolidsFormState extends State<SolidsForm> {
  TimeOfDay _time = TimeOfDay.now();
  final _customFoodCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();
  final List<String> _foods = [];
  String _amount = 'taste';
  String _liked = 'neutral';
  String _reaction = 'none';
  final Set<String> _symptoms = {};
  bool get _isEditing => widget.existingEvent != null;

  @override
  void initState() {
    super.initState();
    final e = widget.existingEvent;
    if (e != null) {
      _foods.addAll((e.data['foods'] as List?)?.cast<String>() ?? []);
      _amount = e.data['amount'] as String? ?? 'taste';
      _liked = e.data['liked'] as String? ?? 'neutral';
      _reaction = e.data['reaction'] as String? ?? 'none';
      _symptoms.addAll((e.data['symptoms'] as List?)?.cast<String>() ?? []);
      _notesCtrl.text = e.data['notes'] as String? ?? '';
      _time = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
    }
  }

  @override
  void dispose() {
    _customFoodCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  void _toggleFood(String food) {
    setState(() {
      if (_foods.contains(food)) {
        _foods.remove(food);
      } else {
        _foods.add(food);
      }
    });
  }

  void _addCustomFood() {
    final food = _customFoodCtrl.text.trim();
    if (food.isEmpty || _foods.contains(food)) return;
    setState(() {
      _foods.add(food);
      _customFoodCtrl.clear();
    });
  }

  bool _isFirstTime(String food) =>
      !widget.triedFoods.contains(food.toLowerCase()) && !_isEditing;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final suggestions = [...commonFirstFoods, ...commonAllergens];

    return AppFormScaffold(
      title: _isEditing ? l.solidsEditTitle : l.solidsLogTitle,
      time: _time,
      onTimeChanged: (t) => setState(() => _time = t),
      ctaLabel: _isEditing ? l.actionUpdate : l.actionSave,
      onSubmit: _save,
      ctaEnabled: _foods.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_foods.isNotEmpty) ...[
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: _foods.map((food) {
                final firstTime = _isFirstTime(food);
                return InputChip(
                  label: Text(firstTime ? '$food ✨' : food),
                  onDeleted: () => _toggleFood(food),
                );
              }).toList(),
            ),
            const SizedBox(height: 10),
          ],
          Text(l.solidsFoodsLabel, style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 6),
          Wrap(
            spacing: 6,
            runSpacing: 4,
            children: suggestions.map((food) {
              return ChoiceChip(
                label: Text(food, style: const TextStyle(fontSize: 12)),
                selected: _foods.contains(food),
                onSelected: (_) => _toggleFood(food),
              );
            }).toList(),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _customFoodCtrl,
                  decoration: InputDecoration(
                    labelText: l.solidsAddFoodHint,
                    border: const OutlineInputBorder(),
                    isDense: true,
                  ),
                  onSubmitted: (_) => _addCustomFood(),
                ),
              ),
              const SizedBox(width: 8),
              IconButton.filledTonal(
                icon: const Icon(Icons.add),
                onPressed: _addCustomFood,
              ),
            ],
          ),

          const SizedBox(height: 16),
          Text(l.solidsAmount, style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 6),
          PillSegmentedControl<String>(
            options: [
              PillSegmentedOption(value: 'taste', label: l.solidsAmountTaste),
              PillSegmentedOption(value: 'few_spoons', label: l.solidsAmountFewSpoons),
              PillSegmentedOption(value: 'half', label: l.solidsAmountHalf),
              PillSegmentedOption(value: 'full', label: l.solidsAmountFull),
            ],
            selected: _amount,
            onChanged: (v) => setState(() => _amount = v),
          ),

          const SizedBox(height: 16),
          Text(l.solidsLiked, style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 6),
          Row(
            children: [
              _LikedButton(emoji: '😋', selected: _liked == 'liked', onTap: () => setState(() => _liked = 'liked')),
              const SizedBox(width: 8),
              _LikedButton(emoji: '😐', selected: _liked == 'neutral', onTap: () => setState(() => _liked = 'neutral')),
              const SizedBox(width: 8),
              _LikedButton(emoji: '😖', selected: _liked == 'disliked', onTap: () => setState(() => _liked = 'disliked')),
            ],
          ),

          const SizedBox(height: 16),
          Text(l.solidsReaction, style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 6),
          PillSegmentedControl<String>(
            options: [
              PillSegmentedOption(value: 'none', label: l.solidsReactionNone),
              PillSegmentedOption(value: 'mild', label: l.solidsReactionMild),
              PillSegmentedOption(value: 'allergic', label: l.solidsReactionAllergic),
            ],
            selected: _reaction,
            onChanged: (v) => setState(() => _reaction = v),
          ),
          if (_reaction != 'none') ...[
            const SizedBox(height: 8),
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: solidsReactionSymptoms.map((s) {
                return ChoiceChip(
                  label: Text(s, style: const TextStyle(fontSize: 12)),
                  selected: _symptoms.contains(s),
                  onSelected: (sel) => setState(() {
                    sel ? _symptoms.add(s) : _symptoms.remove(s);
                  }),
                );
              }).toList(),
            ),
          ],

          const SizedBox(height: 16),
          TextField(
            controller: _notesCtrl,
            decoration: InputDecoration(
              labelText: l.solidsNotesOptional,
              border: const OutlineInputBorder(),
              isDense: true,
            ),
          ),
        ],
      ),
    );
  }

  void _save() {
    if (_foods.isEmpty) return;
    final d = widget.initialDate;
    final dt = DateTime(d.year, d.month, d.day, _time.hour, _time.minute);
    Navigator.pop(
      context,
      TrackerEvent(
        id: widget.existingEvent?.id,
        type: 'solids',
        time: dt,
        data: {
          'foods': _foods,
          'amount': _amount,
          'liked': _liked,
          'reaction': _reaction,
          'symptoms': _symptoms.toList(),
          'notes': _notesCtrl.text.trim().isEmpty ? null : _notesCtrl.text.trim(),
        },
      ),
    );
  }
}

class _LikedButton extends StatelessWidget {
  final String emoji;
  final bool selected;
  final VoidCallback onTap;

  const _LikedButton({required this.emoji, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: Container(
        width: 52,
        height: 52,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected ? scheme.primaryContainer : scheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Text(emoji, style: const TextStyle(fontSize: 22)),
      ),
    );
  }
}
