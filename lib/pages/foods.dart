import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/forms/solids.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/entry_row.dart';

/// Every distinct food name (lowercased) logged before [before] — the
/// "already tried" set the solid-food form checks a newly-added food
/// against to decide whether it earns a "first time!" badge.
Set<String> triedFoodNames(
  Map<String, List<TrackerEvent>> data, {
  DateTime? before,
}) {
  final names = <String>{};
  for (final events in data.values) {
    for (final e in events) {
      if (e.type != 'solids') continue;
      if (before != null && !e.time.isBefore(before)) continue;
      for (final food in (e.data['foods'] as List?)?.cast<String>() ?? []) {
        names.add(food.toLowerCase());
      }
    }
  }
  return names;
}

class _FoodSummary {
  final String name;
  DateTime firstTried;
  int timesEaten = 0;
  String? lastReaction;
  DateTime? lastTried;

  _FoodSummary(this.name, this.firstTried);
}

/// Every distinct food logged across every day, each with when it was first
/// tried, how many times, and its most recent reaction — the running record
/// of "what's been introduced" a parent otherwise has to reconstruct by
/// scrolling back through the day list.
class FoodsPage extends StatelessWidget {
  final Map<String, List<TrackerEvent>> data;

  const FoodsPage({super.key, required this.data});

  List<_FoodSummary> _summaries() {
    final byName = <String, _FoodSummary>{};
    final events =
        data.values.expand((e) => e).where((e) => e.type == 'solids').toList()
          ..sort((a, b) => a.time.compareTo(b.time));

    for (final e in events) {
      final foods = (e.data['foods'] as List?)?.cast<String>() ?? [];
      final reaction = e.data['reaction'] as String? ?? 'none';
      for (final food in foods) {
        final key = food.toLowerCase();
        final summary = byName.putIfAbsent(key, () => _FoodSummary(food, e.time));
        summary.timesEaten++;
        summary.lastTried = e.time;
        if (reaction != 'none') summary.lastReaction = reaction;
      }
    }

    final list = byName.values.toList()
      ..sort((a, b) => b.firstTried.compareTo(a.firstTried));
    return list;
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final foods = _summaries();
    final introducedAllergens = foods.map((f) => f.name.toLowerCase()).toSet();
    final notYetAllergens = commonAllergens
        .where((a) => !introducedAllergens.contains(a.toLowerCase()))
        .toList();
    final colors = Theme.of(context).extension<AppColors>()!;

    return Scaffold(
      appBar: AppBar(title: Text(l.foodsTitle)),
      body: foods.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.restaurant, size: 56, color: Colors.grey.shade400),
                  const SizedBox(height: 12),
                  Text(l.foodsEmpty, style: TextStyle(color: Colors.grey.shade600)),
                ],
              ),
            )
          : ListView(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
              children: [
                if (notYetAllergens.isNotEmpty) ...[
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(l.foodsAllergensNotYet, style: Theme.of(context).textTheme.titleSmall),
                          const SizedBox(height: 8),
                          Wrap(
                            spacing: 6,
                            runSpacing: 4,
                            children: notYetAllergens
                                .map((a) => Chip(label: Text(a, style: const TextStyle(fontSize: 12))))
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
                Text(
                  l.foodsTriedCount(foods.length),
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 8),
                for (final f in foods)
                  EntryRow(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    icon: f.lastReaction != null ? Icons.warning_amber_rounded : Icons.restaurant,
                    color: f.lastReaction != null ? Colors.orange : colors.noteStrong,
                    softColor: f.lastReaction != null ? Colors.orange.withAlpha(30) : colors.noteSoft,
                    title: f.name,
                    subtitle: [
                      l.foodsFirstTried(fullDate(f.firstTried)),
                      l.foodsTimesEaten(f.timesEaten),
                      if (f.lastReaction != null)
                        solidsReactionLabel(f.lastReaction!, l),
                    ].join('  •  '),
                  ),
              ],
            ),
    );
  }
}
