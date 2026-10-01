import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/forms/bath.dart';
import 'package:simple_baby_tracker/forms/daily_note.dart';
import 'package:simple_baby_tracker/forms/diaper.dart';
import 'package:simple_baby_tracker/forms/doctor_visit.dart';
import 'package:simple_baby_tracker/forms/feeding.dart';
import 'package:simple_baby_tracker/forms/medication.dart';
import 'package:simple_baby_tracker/forms/pumping.dart';
import 'package:simple_baby_tracker/forms/sleep.dart';
import 'package:simple_baby_tracker/forms/solids.dart';
import 'package:simple_baby_tracker/forms/temperature.dart';
import 'package:simple_baby_tracker/forms/tummy_time.dart';
import 'package:simple_baby_tracker/forms/weight.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/models/bottle.dart';
import 'package:simple_baby_tracker/pages/foods.dart';
import 'package:simple_baby_tracker/pages/medications.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/services/notification.dart';
import 'package:simple_baby_tracker/services/widget_service.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/summary_header_delegate.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/theme/category_style.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_avatar.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';
import 'package:simple_baby_tracker/widgets/category_icon_badge.dart';
import 'package:simple_baby_tracker/widgets/entry_row.dart';
import 'package:simple_baby_tracker/widgets/gradient_pill_button.dart';

class DayPage extends StatefulWidget {
  const DayPage({
    super.key,
    required this.date,
    required this.babyId,
    required this.data,
    required this.onDataChanged,
    this.autoOpenAddSheet = false,
  });

  final DateTime date;
  final String babyId;

  /// The full (all-days) data map, owned by the caller — [AppShell] already
  /// holds it in memory, so this page works on it directly instead of
  /// re-decoding it from [Storage] a second time on open and a third time
  /// on pop.
  final Map<String, List<TrackerEvent>> data;
  final void Function(Map<String, List<TrackerEvent>>) onDataChanged;

  /// Opens the add-entry sheet right away — used by Home's fast-add FAB, so
  /// tapping it goes straight to "pick a type" instead of landing on an
  /// empty day the parent then has to tap + on again.
  final bool autoOpenAddSheet;

  @override
  State<DayPage> createState() => _DayPageState();
}

class _DayPageState extends State<DayPage> with WidgetsBindingObserver {
  late Map<String, List<TrackerEvent>> _data;

  /// Bottle id → bottle, for showing which bottle a feed used.
  Map<String, Bottle> _bottles = {};

  @override
  void initState() {
    super.initState();
    _data = Map<String, List<TrackerEvent>>.from(widget.data);
    WidgetsBinding.instance.addObserver(this);
    Storage.loadBottles().then((list) {
      if (mounted) setState(() => _bottles = {for (final b in list) b.id: b});
    });
    if (widget.autoOpenAddSheet) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _showAddSheet();
      });
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  /// Entries may have been added from the home-screen widget while this page
  /// sat in the background. Reload, so the list is current and a later save
  /// here doesn't write back a stale copy over them.
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state != AppLifecycleState.resumed) return;
    Storage.loadAll(widget.babyId).then((fresh) {
      if (mounted) setState(() => _data = fresh);
    });
  }

  List<TrackerEvent> _events() {
    return (List<TrackerEvent>.from(_data[dateKey(widget.date)] ?? []))
      ..sort((a, b) => a.time.compareTo(b.time));
  }

  Future<void> _save() async {
    await Storage.saveAll(widget.babyId, _data);
    widget.onDataChanged(_data);
    unawaited(maybeRescheduleReminders(_data));
    unawaited(WidgetService.refresh(babyId: widget.babyId, data: _data));
    if (mounted) setState(() {});
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

  ({double kg, DateTime date, String? condition})? _lastWeight() {
    final allEvents =
        _data.entries
            .expand((e) => e.value)
            .where((e) => e.type == 'weight')
            .where((e) => dateKey(e.time) != dateKey(widget.date))
            .toList()
          ..sort((a, b) => b.time.compareTo(a.time));
    // The most recent 'weight' event might only have carried a height/head
    // measurement (both are optional on a growth entry) — keep looking
    // further back for one that actually has a weight to compare against.
    for (final e in allEvents) {
      final kg = (e.data['valueKg'] as num?)?.toDouble();
      if (kg != null) {
        return (
          kg: kg,
          date: e.time,
          condition: e.data['condition'] as String?,
        );
      }
    }
    return null;
  }

  /// The side of the most recent breastfeeding session across every day —
  /// used to suggest starting on the other side next time.
  String? _lastBreastSide() {
    final allFeeds =
        _data.entries
            .expand((e) => e.value)
            .where(
              (e) =>
                  e.type == 'feeding' && (e.data['isBottle'] as bool?) == false,
            )
            .toList()
          ..sort((a, b) => b.time.compareTo(a.time));
    if (allFeeds.isEmpty) return null;
    return allFeeds.first.data['side'] as String?;
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

  Future<void> _add(String type, {TrackerEvent? existing}) async {
    final key = dateKey(widget.date);
    _data.putIfAbsent(key, () => []);

    void insertOrReplace(TrackerEvent result) {
      // Look up by id rather than a list position: the list on screen is a
      // *sorted* copy (see `_events()`), so a position from it doesn't line
      // up with this unsorted stored list whenever events aren't already in
      // time order — using it here could silently overwrite a different
      // event than the one being edited.
      final i = existing == null
          ? -1
          : _data[key]!.indexWhere((e) => e.id == existing.id);
      if (i != -1) {
        _data[key]![i] = result;
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
            builder: (_) => FeedingForm(
              initialDate: widget.date,
              existingEvent: existing,
              lastBreastSide: existing == null ? _lastBreastSide() : null,
            ),
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
            builder: (_) =>
                PumpingForm(initialDate: widget.date, existingEvent: existing),
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
              lastCondition: lw?.condition,
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
        final courses = await Storage.loadMedicationCourses(widget.babyId);
        if (!mounted) return;
        final result = await Navigator.push<TrackerEvent>(
          context,
          MaterialPageRoute(
            builder: (_) => MedicationForm(
              initialDate: widget.date,
              existingEvent: existing,
              activeCourses: courses.where((c) => c.isActive).toList(),
              data: _data,
              onManageCourses: () {
                Navigator.pop(context); // close the form
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        MedicationsPage(babyId: widget.babyId, data: _data),
                  ),
                );
              },
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

      case 'solids':
        final result = await Navigator.push<TrackerEvent>(
          context,
          MaterialPageRoute(
            builder: (_) => SolidsForm(
              initialDate: widget.date,
              existingEvent: existing,
              triedFoods: triedFoodNames(_data, before: widget.date),
            ),
          ),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }
    }
  }

  /// Removes [event] without asking for confirmation — the [Dismissible]'s
  /// own `confirmDismiss` already asked once; asking again here (as the
  /// previous, dialog-showing version of this method did) meant cancelling
  /// left a dismissed `Dismissible` in the tree, which raises a framework
  /// assertion.
  Future<void> _removeEvent(TrackerEvent event) async {
    final key = dateKey(widget.date);
    _data[key]?.remove(event);
    if (_data[key]?.isEmpty ?? false) _data.remove(key);
    await _save();
  }

  // ─── Build ────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final events = _events();
    final totals = _totals(events);
    final settings = SettingsProvider.of(context).settings;

    return Scaffold(
      appBar: AppBar(
        // Smaller than the tab screens' 28px heading — the mockup gives
        // the day detail a 19px title next to a circular back button.
        titleTextStyle: Theme.of(
          context,
        ).appBarTheme.titleTextStyle?.copyWith(fontSize: 19),
        title: Text(displayDate(widget.date)),
      ),
      body: events.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppIcon(
                    AppIcons.noEvents,
                    size: 64,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  const SizedBox(height: 12),
                  Text(l.noEntriesYet),
                  const SizedBox(height: 8),
                  FilledButton.icon(
                    onPressed: _showAddSheet,
                    icon: const AppIcon(AppIcons.add, style: AppIconStyle.line),
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
                    useMl: (settings.useMl as bool?) ?? true,
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
                        onDismissed: (_) => _removeEvent(e),
                        background: Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.error,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: AppIcon(
                            AppIcons.delete,
                            style: AppIconStyle.line,
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
                              titleBadge: _titleBadge(context, e),
                              subtitle:
                                  '${_subtitle(e, l, settings)}  •  ${formatTime(e.time)}',
                              trailing: const AppIcon(
                                AppIcons.chevronRight,
                                style: AppIconStyle.line,
                              ),
                              onTap: () => _add(e.type, existing: e),
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
                  color: Theme.of(context).colorScheme.outlineVariant,
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
              _SheetTile(l.entryTypeSolids, 'solids'),
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
        isBottle ? AppIcons.bottle : AppIcons.breastfeeding,
        colors.feedingStrong,
        colors.feedingSoft,
      );
    }
    return categoryStyleFor(e.type, colors);
  }

  /// Rash flag on diapers, severity marker on temperatures — icons from the
  /// custom pack, replacing the 🔴/🟠/🔵/🟢 emoji that used to be appended
  /// to the title text.
  Widget? _titleBadge(BuildContext context, TrackerEvent e) {
    final c = Theme.of(context).extension<AppColors>()!;
    if (e.type == 'diaper' && e.data['rash'] == true) {
      return AppAvatar(
        AppIcons.rash,
        strong: c.temperatureStrong,
        soft: c.temperatureSoft,
        size: 22,
      );
    }
    if (e.type == 'temperature') {
      final celsius = (e.data['valueCelsius'] as num?)?.toDouble() ?? 0;
      final (icon, strong, soft) = switch (tempSeverity(celsius)) {
        'fever' => (AppIcons.fever, c.temperatureStrong, c.temperatureSoft),
        'elevated' => (
          AppIcons.tempElevated,
          c.medicationStrong,
          c.medicationSoft,
        ),
        'low' => (AppIcons.tempLow, c.miscStrong, c.miscSoft),
        _ => (AppIcons.tempNormal, c.growthStrong, c.growthSoft),
      };
      return AppAvatar(icon, strong: strong, soft: soft, size: 22);
    }
    return null;
  }

  String _title(TrackerEvent e, AppLocalizations l, dynamic settings) {
    switch (e.type) {
      case 'diaper':
        final pee = e.data['pee'] == true;
        final poo = e.data['poo'] == true;
        final base = (pee && poo)
            ? l.diaperPeePoo
            : pee
            ? l.diaperPee
            : poo
            ? l.diaperPoo
            : l.diaperChange;
        return base;
      case 'sleep':
        final min = (e.data['durationMin'] as num?)?.toInt() ?? 0;
        final h = min ~/ 60;
        final rem = min % 60;
        return '${l.entryTypeSleep}  (${h > 0 ? '${h}h ${rem}m' : '${rem}m'})';
      case 'temperature':
        return l.entryTypeTemperature;
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
      case 'solids':
        final foods = (e.data['foods'] as List?)?.cast<String>() ?? [];
        return foods.isEmpty ? l.entryTypeSolids : foods.join(', ');
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
          final useMl = (settings.useMl as bool?) ?? true;
          final prepared = e.data['preparedMl'] as num?;
          // "90 / 120 ml" (drank / prepared) when a bottle's prepared amount
          // was recorded, otherwise just the amount drunk.
          var amount = prepared == null
              ? formatMilk(ml, useMl: useMl)
              : '${useMl ? ml.round() : mlToOz(ml.toDouble()).toStringAsFixed(1)}'
                    ' / ${formatMilk(prepared, useMl: useMl)}';
          final bottle = _bottles[e.data['bottleId']];
          if (bottle != null) amount = '${bottle.displayName}  •  $amount';
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
        final kg = (e.data['valueKg'] as num?)?.toDouble();
        final heightCm = (e.data['heightCm'] as num?)?.toDouble();
        final headCm = (e.data['headCm'] as num?)?.toDouble();
        final condition = e.data['condition'] as String?;
        final useKg = (settings.useKg as bool?) ?? true;
        final parts = <String>[
          if (kg != null) formatWeight(kg, useKg: useKg),
          if (kg != null && condition != null)
            weighConditionLabel(condition, l),
          if (heightCm != null)
            l.growthHeightValue(heightCm.toStringAsFixed(1)),
          if (headCm != null) l.growthHeadValue(headCm.toStringAsFixed(1)),
        ];
        return parts.isEmpty ? l.noDetails : parts.join('  •  ');
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
        return formatMilk(total, useMl: (settings.useMl as bool?) ?? true);
      case 'bath':
        final products = e.data['products'] as String?;
        final notes = e.data['notes'] as String?;
        return [?products, ?notes].join('  •  ');
      case 'solids':
        final amount = e.data['amount'] as String? ?? 'taste';
        final reaction = e.data['reaction'] as String? ?? 'none';
        final parts = [
          solidsAmountLabel(amount, l),
          if (reaction != 'none') solidsReactionLabel(reaction, l),
        ];
        return parts.join('  •  ');
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
