import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/forms/bath.dart';
import 'package:simple_baby_tracker/forms/daily_note.dart';
import 'package:simple_baby_tracker/forms/diaper.dart';
import 'package:simple_baby_tracker/forms/doctor_visit.dart';
import 'package:simple_baby_tracker/forms/feeding.dart';
import 'package:simple_baby_tracker/forms/medication.dart';
import 'package:simple_baby_tracker/forms/pumping.dart';
import 'package:simple_baby_tracker/forms/sleep.dart';
import 'package:simple_baby_tracker/forms/temperature.dart';
import 'package:simple_baby_tracker/forms/tummy_time.dart';
import 'package:simple_baby_tracker/forms/weight.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/summary_header_delegate.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/category_style.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/category_icon_badge.dart';
import 'package:simple_baby_tracker/widgets/entry_row.dart';
import 'package:simple_baby_tracker/widgets/gradient_pill_button.dart';

class DayPage extends StatefulWidget {
  const DayPage({super.key, required this.date, required this.babyId});

  final DateTime date;
  final String babyId;

  @override
  State<DayPage> createState() => _DayPageState();
}

class _DayPageState extends State<DayPage> {
  Map<String, List<TrackerEvent>> _data = {};
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final loaded = await Storage.loadAll(widget.babyId);
    if (mounted) {
      setState(() {
        _data = loaded;
        _loading = false;
      });
    }
  }

  List<TrackerEvent> _events() {
    return (List<TrackerEvent>.from(_data[dateKey(widget.date)] ?? []))
      ..sort((a, b) => a.time.compareTo(b.time));
  }

  Future<void> _save() async {
    await Storage.saveAll(widget.babyId, _data);
    if (mounted) await _load();
  }

  Map<String, int> _totals(List<TrackerEvent> events) {
    int poos = 0, pees = 0, milk = 0, breastMin = 0, sleepMin = 0;
    for (final e in events) {
      if (e.type == 'diaper') {
        if (e.data['poo'] == true) poos++;
        if (e.data['pee'] == true) pees++;
      } else if (e.type == 'feeding') {
        final isBottle = (e.data['isBottle'] as bool?) ?? true;
        if (isBottle) {
          milk += (e.data['amountMl'] as num?)?.toInt() ?? 0;
        } else {
          breastMin += (e.data['durationMin'] as num?)?.toInt() ?? 0;
        }
      } else if (e.type == 'sleep') {
        sleepMin += (e.data['durationMin'] as num?)?.toInt() ?? 0;
      }
    }
    return {
      'poos': poos,
      'pees': pees,
      'milk': milk,
      'breastMinutes': breastMin,
      'sleepMinutes': sleepMin,
    };
  }

  ({double kg, DateTime date})? _lastWeight() {
    final allEvents =
        _data.entries
            .expand((e) => e.value)
            .where((e) => e.type == 'weight')
            .where((e) => dateKey(e.time) != dateKey(widget.date))
            .toList()
          ..sort((a, b) => b.time.compareTo(a.time));
    if (allEvents.isEmpty) return null;
    final kg = (allEvents.first.data['valueKg'] as num?)?.toDouble();
    if (kg == null) return null;
    return (kg: kg, date: allEvents.first.time);
  }

  bool _lastDiaperHadRash() {
    final allDiapers =
        _data.entries
            .expand((e) => e.value)
            .where((e) => e.type == 'diaper')
            .toList()
          ..sort((a, b) => b.time.compareTo(a.time));
    if (allDiapers.isEmpty) return false;
    return allDiapers.first.data['rash'] == true;
  }

  // ─── Add/edit routing ─────────────────────────────────────────────────────

  Future<void> _add(String type, {TrackerEvent? existing, int? index}) async {
    final key = dateKey(widget.date);
    _data.putIfAbsent(key, () => []);

    void insertOrReplace(TrackerEvent result) {
      if (existing != null && index != null) {
        _data[key]![index] = result;
      } else {
        _data[key]!.add(result);
      }
    }

    switch (type) {
      case 'diaper':
        final result = await Navigator.push<TrackerEvent>(
          context,
          MaterialPageRoute(
            builder: (_) => DiaperForm(
              initialDate: widget.date,
              existingEvent: existing,
              previousRash: existing == null ? _lastDiaperHadRash() : false,
            ),
          ),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }

      case 'feeding':
        final result = await Navigator.push<dynamic>(
          context,
          MaterialPageRoute(
            builder: (_) =>
                FeedingForm(initialDate: widget.date, existingEvent: existing),
          ),
        );
        if (result == null) return;
        if (result is List) {
          for (final ev in result.cast<TrackerEvent>()) {
            _data[key]!.add(ev);
          }
        } else if (result is TrackerEvent) {
          insertOrReplace(result);
        }
        await _save();

      case 'pumping':
        final result = await Navigator.push<TrackerEvent>(
          context,
          MaterialPageRoute(
            builder: (_) => PumpingForm(
              initialDate: widget.date,
              existingEvent: existing,
            ),
          ),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }

      case 'sleep':
        final result = await Navigator.push<TrackerEvent>(
          context,
          MaterialPageRoute(
            builder: (_) =>
                SleepForm(initialDate: widget.date, existingEvent: existing),
          ),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }

      case 'temperature':
        final result = await Navigator.push<TrackerEvent>(
          context,
          MaterialPageRoute(
            builder: (_) => TemperatureForm(
              initialDate: widget.date,
              existingEvent: existing,
            ),
          ),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }

      case 'weight':
        final lw = _lastWeight();
        final result = await Navigator.push<TrackerEvent>(
          context,
          MaterialPageRoute(
            builder: (_) => WeightForm(
              initialDate: widget.date,
              existingEvent: existing,
              lastWeightKg: lw?.kg,
              lastWeightDate: lw?.date,
            ),
          ),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }

      case 'tummy_time':
        final result = await Navigator.push<TrackerEvent>(
          context,
          MaterialPageRoute(
            builder: (_) => TummyTimeForm(
              initialDate: widget.date,
              existingEvent: existing,
            ),
          ),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }

      case 'medication':
        final result = await Navigator.push<TrackerEvent>(
          context,
          MaterialPageRoute(
            builder: (_) => MedicationForm(
              initialDate: widget.date,
              existingEvent: existing,
            ),
          ),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }

      case 'doctor_visit':
        final result = await Navigator.push<TrackerEvent>(
          context,
          MaterialPageRoute(
            builder: (_) => DoctorVisitForm(
              initialDate: widget.date,
              existingEvent: existing,
            ),
          ),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }

      case 'note':
        final result = await Navigator.push<TrackerEvent>(
          context,
          MaterialPageRoute(
            builder: (_) => DailyNoteForm(
              initialDate: widget.date,
              existingEvent: existing,
            ),
          ),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }

      case 'bath':
        final result = await Navigator.push<TrackerEvent>(
          context,
          MaterialPageRoute(
            builder: (_) =>
                BathForm(initialDate: widget.date, existingEvent: existing),
          ),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }
    }
  }

  Future<void> _deleteEvent(TrackerEvent event) async {
    final l = AppLocalizations.of(context)!;
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(l.deleteEntryTitle),
        content: Text(l.cannotUndo),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l.actionCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l.actionDelete),
          ),
        ],
      ),
    );
    if (ok == true) {
      final key = dateKey(widget.date);
      _data[key]?.remove(event);
      if (_data[key]?.isEmpty ?? false) _data.remove(key);
      await _save();
    }
  }

  // ─── Build ────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(body: Center(child: CircularProgressIndicator())),
      );
    }

    // Only look up inherited providers after the loading guard —
    // the new route's context is fully wired up by this point.
    final l = AppLocalizations.of(context)!;
    final events = _events();
    final totals = _totals(events);
    final settings = SettingsProvider.of(context).settings;

    return Scaffold(
      appBar: AppBar(
        // Smaller than the tab screens' 28px heading — the mockup gives
        // the day detail a 19px title next to a circular back button.
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
          fontSize: 19,
        ),
        title: Text(displayDate(widget.date)),
      ),
      body: events.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.event_note,
                    size: 64,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  const SizedBox(height: 12),
                  Text(l.noEntriesYet),
                  const SizedBox(height: 8),
                  FilledButton.icon(
                    onPressed: _showAddSheet,
                    icon: const Icon(Icons.add),
                    label: Text(l.addEntry),
                  ),
                ],
              ),
            )
          : CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: SummaryHeaderDelegate(
                    poos: totals['poos']!,
                    pees: totals['pees']!,
                    milk: totals['milk']!,
                    breastMinutes: totals['breastMinutes']!,
                    sleepMinutes: totals['sleepMinutes']!,
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(
                    left: 12,
                    right: 12,
                    bottom: MediaQuery.of(context).padding.bottom + 80,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate((_, i) {
                      final e = events[i];
                      return Dismissible(
                        key: ValueKey(e.id),
                        direction: DismissDirection.endToStart,
                        confirmDismiss: (_) async => showDialog<bool>(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text(l.deleteEntryTitle),
                            content: Text(l.cannotUndo),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, false),
                                child: Text(l.actionCancel),
                              ),
                              FilledButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: Text(l.actionDelete),
                              ),
                            ],
                          ),
                        ),
                        onDismissed: (_) => _deleteEvent(e),
                        background: Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.error,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Icon(
                            Icons.delete,
                            color: Theme.of(context).colorScheme.onError,
                          ),
                        ),
                        child: Builder(
                          builder: (context) {
                            final style = _styleFor(context, e);
                            return EntryRow(
                              icon: style.icon,
                              color: style.strong,
                              softColor: style.soft,
                              title: _title(e, l, settings),
                              subtitle:
                                  '${_subtitle(e, l, settings)}  •  ${formatTime(e.time)}',
                              trailing: const Icon(Icons.chevron_right),
                              onTap: () => _add(e.type, existing: e, index: i),
                            );
                          },
                        ),
                      );
                    }, childCount: events.length),
                  ),
                ),
              ],
            ),
      floatingActionButton: GradientFab(onPressed: _showAddSheet),
    );
  }

  Future<void> _showAddSheet() async {
    final l = AppLocalizations.of(context)!;
    final type = await showModalBottomSheet<String>(
      context: context,
      builder: (_) => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 8),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 4),
              // Core tracking
              _SheetTile(l.entryTypeDiaper, 'diaper'),
              _SheetTile(l.entryTypeFeeding, 'feeding'),
              _SheetTile(l.pumpingSessionTitle, 'pumping'),
              _SheetTile(l.entryTypeSleep, 'sleep'),
              _SheetTile(l.entryTypeTemperature, 'temperature'),
              _SheetTile(l.entryTypeWeight, 'weight'),
              const Divider(height: 1),
              // Additional tracking
              _SheetTile(l.entryTypeTummyTime, 'tummy_time'),
              _SheetTile(l.entryTypeMedication, 'medication'),
              _SheetTile(l.entryTypeDoctorVisit, 'doctor_visit'),
              _SheetTile(l.entryTypeNote, 'note'),
              _SheetTile(l.entryTypeBath, 'bath'),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
    if (type != null) _add(type);
  }

  // ─── Icon / title / subtitle helpers ──────────────────────────────────────

  /// Resolves the icon/color pair for an event, sourcing colors from the
  /// current theme's [AppColors] extension so they adapt to light/dark/OLED.
  CategoryStyle _styleFor(BuildContext context, TrackerEvent e) {
    final colors = Theme.of(context).extension<AppColors>()!;
    if (e.type == 'feeding') {
      final isBottle = (e.data['isBottle'] as bool?) ?? true;
      return CategoryStyle(
        isBottle ? Icons.local_drink : Icons.child_care,
        colors.feedingStrong,
        colors.feedingSoft,
      );
    }
    return categoryStyleFor(e.type, colors);
  }

  String _title(TrackerEvent e, AppLocalizations l, dynamic settings) {
    switch (e.type) {
      case 'diaper':
        final pee = e.data['pee'] == true;
        final poo = e.data['poo'] == true;
        final rash = e.data['rash'] == true;
        final base = (pee && poo)
            ? l.diaperPeePoo
            : pee
            ? l.diaperPee
            : poo
            ? l.diaperPoo
            : l.diaperChange;
        return rash ? '$base  🔴' : base;
      case 'sleep':
        final min = (e.data['durationMin'] as num?)?.toInt() ?? 0;
        final h = min ~/ 60;
        final rem = min % 60;
        return '${l.entryTypeSleep}  (${h > 0 ? '${h}h ${rem}m' : '${rem}m'})';
      case 'temperature':
        final c = (e.data['valueCelsius'] as num?)?.toDouble() ?? 0;
        final dot = switch (tempSeverity(c)) {
          'fever' => '🔴',
          'elevated' => '🟠',
          'low' => '🔵',
          _ => '🟢',
        };
        return '${l.entryTypeTemperature}  $dot';
      case 'weight':
        return l.entryTypeWeight;
      case 'tummy_time':
        final min = (e.data['durationMin'] as num?)?.toInt() ?? 0;
        final h = min ~/ 60;
        final rem = min % 60;
        return '${l.entryTypeTummyTime}  (${h > 0 ? '${h}h ${rem}m' : '${rem}m'})';
      case 'medication':
        return l.medicationLabel((e.data['name'] as String?) ?? '');
      case 'doctor_visit':
        final reason =
            e.data['reason'] as String? ?? l.doctorVisitDefaultReason;
        return l.doctorVisitLabel(reason);
      case 'note':
        final title = e.data['title'] as String?;
        return title != null && title.isNotEmpty
            ? l.noteLabel(title)
            : l.noteDefaultTitle;
      case 'pumping':
        return l.pumpingSessionTitle;
      case 'bath':
        final type = e.data['bathType'] as String? ?? 'tub';
        return switch (type) {
          'sponge' => l.bathTypeSponge,
          'shower' => l.bathTypeShower,
          _ => l.bathTypeTub,
        };
      default:
        final isBottle = (e.data['isBottle'] as bool?) ?? true;
        if (isBottle) {
          return (e.data['method'] as String?) == 'formula'
              ? l.bottleFormula
              : l.bottleBreastMilk;
        }
        return l.breastfeedingSuckle;
    }
  }

  String _subtitle(TrackerEvent e, AppLocalizations l, dynamic settings) {
    switch (e.type) {
      case 'diaper':
        final parts = <String>[];
        final cons = e.data['consistency'] as String?;
        if (cons != null) parts.add('${l.diaperConsistency}: $cons');
        final size = e.data['size'] as String?;
        if (size != null) parts.add('${l.diaperSize} $size');
        final brand = e.data['brand'] as String?;
        if (brand != null) parts.add(brand);
        return parts.isEmpty ? l.noDetails : parts.join('  •  ');
      case 'feeding':
        final isBottle = (e.data['isBottle'] as bool?) ?? true;
        if (isBottle) {
          final ml = (e.data['amountMl'] as num?) ?? 0;
          final brand = e.data['formulaBrand'] as String?;
          final amount = formatMilkMl(ml);
          return brand != null ? '$amount  •  $brand' : amount;
        }
        return '${e.data['durationMin'] ?? 0} min';
      case 'sleep':
        return (e.data['notes'] as String?) ?? l.sleepNoNotes;
      case 'temperature':
        final c = (e.data['valueCelsius'] as num?)?.toDouble() ?? 0.0;
        try {
          return formatTemp(
            c,
            useCelsius: (settings.useCelsius as bool?) ?? true,
          );
        } catch (_) {
          return '${c.toStringAsFixed(1)} °C';
        }
      case 'weight':
        final kg = (e.data['valueKg'] as num?)?.toDouble() ?? 0.0;
        try {
          return formatWeight(kg, useKg: (settings.useKg as bool?) ?? true);
        } catch (_) {
          return '${kg.toStringAsFixed(3)} kg';
        }
      case 'tummy_time':
        return (e.data['notes'] as String?) ?? l.noNotes;
      case 'medication':
        final dose = e.data['dose'];
        final unit = e.data['unit'] ?? '';
        return dose != null ? '$dose $unit' : unit;
      case 'doctor_visit':
        final doctor = e.data['doctorName'] as String?;
        return doctor != null
            ? l.doctorVisitWithDoctor(doctor)
            : l.doctorVisitNoDoctorRecorded;
      case 'note':
        final text = e.data['text'] as String? ?? '';
        return text.length > 60 ? '${text.substring(0, 60)}…' : text;
      case 'pumping':
        final total =
            ((e.data['leftMl'] as num?) ?? 0) +
            ((e.data['rightMl'] as num?) ?? 0);
        return formatMilkMl(total);
      case 'bath':
        final products = e.data['products'] as String?;
        final notes = e.data['notes'] as String?;
        return [?products, ?notes].join('  •  ');
      default:
        return '';
    }
  }
}

/// Helper widget for the add-entry bottom sheet tiles.
class _SheetTile extends StatelessWidget {
  final String label;
  final String type;

  const _SheetTile(this.label, this.type);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final style = categoryStyleFor(type, colors);
    return InkWell(
      onTap: () => Navigator.pop(context, type),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            CategoryIconBadge(
              icon: style.icon,
              color: style.strong,
              softColor: style.soft,
              size: 42,
            ),
            const SizedBox(width: 14),
            Text(label, style: Theme.of(context).textTheme.titleSmall),
          ],
        ),
      ),
    );
  }
}
