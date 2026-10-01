import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/labels.dart';
import 'package:simple_baby_tracker/models/bottle.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';
import 'package:simple_baby_tracker/widgets/entry_row.dart';
import 'package:simple_baby_tracker/widgets/gradient_pill_button.dart';

/// The household's bottle list (Settings → My bottles), used by the feeding
/// form's bottle picker when "Track bottles" is on.
class BottlesPage extends StatefulWidget {
  const BottlesPage({super.key});

  @override
  State<BottlesPage> createState() => _BottlesPageState();
}

class _BottlesPageState extends State<BottlesPage> {
  List<Bottle> _bottles = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final loaded = await Storage.loadBottles();
    if (mounted) {
      setState(() {
        _bottles = loaded;
        _loading = false;
      });
    }
  }

  Future<void> _save() => Storage.saveBottles(_bottles);

  Future<void> _edit([Bottle? existing]) async {
    final result = await showDialog<Bottle>(
      context: context,
      builder: (_) => _BottleDialog(
        existing: existing,
        suggestedLabel: '#${_bottles.length + 1}',
      ),
    );
    if (result == null) return;
    final i = _bottles.indexWhere((b) => b.id == result.id);
    if (i == -1) {
      _bottles.add(result);
    } else {
      _bottles[i] = result;
    }
    await _save();
    if (mounted) setState(() {});
  }

  Future<void> _delete(Bottle b) async {
    final l = AppLocalizations.of(context)!;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.bottleDeleteTitle(b.displayName)),
        content: Text(l.bottleDeleteBody),
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
    _bottles.removeWhere((x) => x.id == b.id);
    await _save();
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final colors = Theme.of(context).extension<AppColors>()!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(l.bottlesTitle)),
      floatingActionButton: GradientFab(
        onPressed: () => _edit(),
        tooltip: l.bottleAdd,
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _bottles.isEmpty
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppIcon(
                      AppIcons.bottle,
                      size: 56,
                      color: theme.colorScheme.outline,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      l.bottlesEmpty,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : ListView(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 96),
              children: [
                for (final b in _bottles)
                  Opacity(
                    opacity: b.retired ? 0.55 : 1,
                    child: EntryRow(
                      icon: AppIcons.bottle,
                      color: colors.feedingStrong,
                      softColor: colors.feedingSoft,
                      title: b.displayName,
                      subtitle: [
                        if (b.capacityMl != null) '${b.capacityMl} ml',
                        if (b.material case final m?) bottleMaterialLabel(m, l),
                        ?b.nippleSize,
                        if (b.retired) l.bottleRetired,
                      ].join('  •  '),
                      onTap: () => _edit(b),
                      trailing: PopupMenuButton<String>(
                        onSelected: (v) async {
                          if (v == 'retire') {
                            b.retired = !b.retired;
                            await _save();
                            if (mounted) setState(() {});
                          } else if (v == 'delete') {
                            await _delete(b);
                          }
                        },
                        itemBuilder: (_) => [
                          PopupMenuItem(
                            value: 'retire',
                            child: Text(
                              b.retired ? l.bottleUnretire : l.bottleRetire,
                            ),
                          ),
                          PopupMenuItem(
                            value: 'delete',
                            child: Text(l.actionDelete),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
    );
  }
}

class _BottleDialog extends StatefulWidget {
  final Bottle? existing;
  final String suggestedLabel;

  const _BottleDialog({this.existing, required this.suggestedLabel});

  @override
  State<_BottleDialog> createState() => _BottleDialogState();
}

class _BottleDialogState extends State<_BottleDialog> {
  late final _labelCtrl = TextEditingController(
    text: widget.existing?.label ?? widget.suggestedLabel,
  );
  late final _brandCtrl = TextEditingController(
    text: widget.existing?.brand ?? '',
  );
  late final _capacityCtrl = TextEditingController(
    text: widget.existing?.capacityMl?.toString() ?? '',
  );
  late final _nippleCtrl = TextEditingController(
    text: widget.existing?.nippleSize ?? '',
  );
  late final _notesCtrl = TextEditingController(
    text: widget.existing?.notes ?? '',
  );
  late String? _material = widget.existing?.material;

  @override
  void dispose() {
    _labelCtrl.dispose();
    _brandCtrl.dispose();
    _capacityCtrl.dispose();
    _nippleCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  String? _opt(TextEditingController c) =>
      c.text.trim().isEmpty ? null : c.text.trim();

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    return AlertDialog(
      title: Text(widget.existing == null ? l.bottleAdd : l.bottleEdit),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _labelCtrl,
              decoration: InputDecoration(labelText: l.bottleLabel),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _brandCtrl,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(labelText: l.bottleBrand),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _capacityCtrl,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                labelText: l.bottleCapacity,
                suffixText: 'ml',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _nippleCtrl,
              decoration: InputDecoration(labelText: l.bottleNipple),
            ),
            const SizedBox(height: 10),
            Text(
              l.bottleMaterial,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(height: 4),
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: [
                for (final m in bottleMaterials)
                  ChoiceChip(
                    label: Text(
                      bottleMaterialLabel(m, l),
                      style: const TextStyle(fontSize: 12),
                    ),
                    selected: _material == m,
                    onSelected: (sel) =>
                        setState(() => _material = sel ? m : null),
                  ),
              ],
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _notesCtrl,
              decoration: InputDecoration(labelText: l.medicationNotesOptional),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(l.actionCancel),
        ),
        FilledButton(
          onPressed: _labelCtrl.text.trim().isEmpty
              ? null
              : () => Navigator.pop(
                  context,
                  Bottle(
                    id: widget.existing?.id,
                    label: _labelCtrl.text.trim(),
                    brand: _opt(_brandCtrl),
                    material: _material,
                    capacityMl: int.tryParse(_capacityCtrl.text),
                    nippleSize: _opt(_nippleCtrl),
                    notes: _opt(_notesCtrl),
                    retired: widget.existing?.retired ?? false,
                  ),
                ),
          child: Text(l.actionSave),
        ),
      ],
    );
  }
}
