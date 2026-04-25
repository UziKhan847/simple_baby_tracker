import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/models/vaccination_entry.dart';
import 'package:simple_baby_tracker/storage.dart';

class VaccinationsPage extends StatefulWidget {
  final String babyId;
  final String babyName;

  const VaccinationsPage({
    super.key,
    required this.babyId,
    required this.babyName,
  });

  @override
  State<VaccinationsPage> createState() => _VaccinationsPageState();
}

class _VaccinationsPageState extends State<VaccinationsPage>
    with SingleTickerProviderStateMixin {
  List<VaccinationEntry> _given = [];
  bool _loading = true;
  late final TabController _tabs;

  Set<String> get _givenNames => _given.map((v) => v.name).toSet();

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 2, vsync: this);
    _load();
  }

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    final data = await Storage.loadVaccinations(widget.babyId);
    if (mounted) {
      setState(() {
        _given = data..sort((a, b) => b.date.compareTo(a.date));
        _loading = false;
      });
    }
  }

  Future<void> _save() async {
    await Storage.saveVaccinations(widget.babyId, _given);
  }

  Future<void> _showVaccineDialog({
    VaccinationEntry? existing,
    String? prefillName,
  }) async {
    final nameCtrl = TextEditingController(
      text: existing?.name ?? prefillName ?? '',
    );
    final brandCtrl = TextEditingController(text: existing?.brand ?? '');
    final siteCtrl = TextEditingController(text: existing?.site ?? '');
    final notesCtrl = TextEditingController(text: existing?.notes ?? '');
    DateTime pickedDate = existing?.date ?? DateTime.now();
    int? dose = existing?.doseNumber;

    final result = await showDialog<VaccinationEntry>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, set) => AlertDialog(
          title: Text(existing != null ? 'Edit vaccine' : 'Log vaccine'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameCtrl,
                  textCapitalization: TextCapitalization.words,
                  decoration: const InputDecoration(
                    labelText: 'Vaccine name *',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: brandCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Brand / manufacturer (optional)',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  leading: const Icon(Icons.calendar_today, size: 20),
                  title: Text(fullDate(pickedDate)),
                  subtitle: const Text('Date given'),
                  onTap: () async {
                    final p = await showDatePicker(
                      context: ctx,
                      initialDate: pickedDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    );
                    if (p != null) set(() => pickedDate = p);
                  },
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: siteCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Injection site (optional)',
                    hintText: 'e.g. left thigh',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: notesCtrl,
                  maxLines: 2,
                  decoration: const InputDecoration(
                    labelText: 'Notes / reactions',
                    hintText: 'e.g. mild fever, fussiness, no reaction...',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () {
                if (nameCtrl.text.trim().isEmpty) return;
                Navigator.pop(
                  ctx,
                  VaccinationEntry(
                    id: existing?.id,
                    name: nameCtrl.text.trim(),
                    date: pickedDate,
                    brand: brandCtrl.text.trim().isEmpty
                        ? null
                        : brandCtrl.text.trim(),
                    doseNumber: dose,
                    site: siteCtrl.text.trim().isEmpty
                        ? null
                        : siteCtrl.text.trim(),
                    notes: notesCtrl.text.trim().isEmpty
                        ? null
                        : notesCtrl.text.trim(),
                  ),
                );
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );

    if (result != null) {
      if (existing != null) {
        final i = _given.indexWhere((v) => v.id == existing.id);
        if (i != -1) _given[i] = result;
      } else {
        _given.add(result);
      }
      _given.sort((a, b) => b.date.compareTo(a.date));
      await _save();
      if (mounted) setState(() {});
    }
  }

  Future<void> _delete(VaccinationEntry v) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Delete vaccine record?'),
        content: const Text('This cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
    if (ok == true) {
      _given.removeWhere((x) => x.id == v.id);
      await _save();
      if (mounted) setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.babyName} — Vaccinations'),
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabs,
          tabs: const [
            Tab(icon: Icon(Icons.check_circle), text: 'Given'),
            Tab(icon: Icon(Icons.schedule), text: 'Schedule'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        heroTag: 'vaccinations_fab',
        onPressed: () => _showVaccineDialog(),
        icon: const Icon(Icons.add),
        label: const Text('Log vaccine'),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : TabBarView(
              controller: _tabs,
              children: [
                _GivenTab(
                  given: _given,
                  onEdit: (v) => _showVaccineDialog(existing: v),
                  onDelete: _delete,
                ),
                _ScheduleTab(
                  givenNames: _givenNames,
                  onLog: (name) => _showVaccineDialog(prefillName: name),
                ),
              ],
            ),
    );
  }
}

class _GivenTab extends StatelessWidget {
  final List<VaccinationEntry> given;
  final void Function(VaccinationEntry) onEdit;
  final void Function(VaccinationEntry) onDelete;

  const _GivenTab({
    required this.given,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    if (given.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.vaccines_outlined,
              size: 64,
              color: Colors.grey.shade400,
            ),
            const SizedBox(height: 12),
            const Text(
              'No vaccines logged yet.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 8),
            const Text(
              'Use the + button or tap "Mark as given" in the Schedule tab.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 88),
      itemCount: given.length,
      itemBuilder: (context, i) {
        final v = given[i];
        return Dismissible(
          key: ValueKey(v.id),
          direction: DismissDirection.endToStart,
          confirmDismiss: (_) async => showDialog<bool>(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('Delete vaccine record?'),
              content: const Text('This cannot be undone.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text('Cancel'),
                ),
                FilledButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: const Text('Delete'),
                ),
              ],
            ),
          ),
          onDismissed: (_) => onDelete(v),
          background: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.delete, color: Colors.white),
          ),
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green.withAlpha(30),
                child: const Icon(Icons.check, color: Colors.green),
              ),
              title: Text(
                v.name,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                '${fullDate(v.date)}'
                '${v.brand != null ? '  ·  ${v.brand}' : ''}'
                '${v.site != null ? '  ·  ${v.site}' : ''}',
              ),
              trailing: IconButton(
                icon: const Icon(Icons.edit_outlined, size: 18),
                onPressed: () => onEdit(v),
              ),
              onTap: v.notes != null
                  ? () => showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: Text(v.name),
                        content: Text(v.notes!),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Close'),
                          ),
                        ],
                      ),
                    )
                  : null,
            ),
          ),
        );
      },
    );
  }
}

class _ScheduleTab extends StatelessWidget {
  final Set<String> givenNames;
  final void Function(String) onLog;

  const _ScheduleTab({required this.givenNames, required this.onLog});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 24),
      itemCount: vaccineSchedule.length,
      itemBuilder: (context, i) {
        final v = vaccineSchedule[i];
        final name = v['name'] as String;
        final age = v['ageLabel'] as String;
        final isGiven = givenNames.contains(name);

        return Card(
          margin: const EdgeInsets.symmetric(vertical: 3),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: isGiven
                  ? Colors.green.withAlpha(30)
                  : Theme.of(context).colorScheme.secondaryContainer,
              child: Icon(
                isGiven ? Icons.check : Icons.schedule,
                color: isGiven
                    ? Colors.green
                    : Theme.of(context).colorScheme.onSecondaryContainer,
                size: 20,
              ),
            ),
            title: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                decoration: isGiven ? TextDecoration.lineThrough : null,
                color: isGiven ? Colors.grey : null,
              ),
            ),
            subtitle: Text('Due: $age'),
            trailing: isGiven
                ? const Icon(Icons.check_circle, color: Colors.green, size: 20)
                : FilledButton.tonal(
                    onPressed: () => onLog(name),
                    child: const Text('Mark given'),
                  ),
          ),
        );
      },
    );
  }
}
