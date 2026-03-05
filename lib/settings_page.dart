import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/main.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = MyApp.of(context);
    final isDark = appState.themeMode == ThemeMode.dark;

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          const _SectionHeader('Appearance'),
          SwitchListTile(
            secondary: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
            title: const Text('Dark mode'),
            subtitle: Text(isDark ? 'Dark theme active' : 'Light theme active'),
            value: isDark,
            onChanged: (_) => appState.toggleTheme(),
          ),

          const Divider(),
          const _SectionHeader('About'),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Simple Baby Tracker'),
            subtitle: const Text('Track feeds, diapers, and more'),
          ),
          ListTile(
            leading: const Icon(Icons.baby_changing_station),
            title: const Text('How to use'),
            subtitle: const Text(
              'Add days from the Home tab. Tap a day to log feeds and diapers. '
              'Swipe left on any entry to delete it. '
              'View trends in the Graphs tab.',
            ),
            isThreeLine: true,
          ),

          const Divider(),
          const _SectionHeader('Tips'),
          const ListTile(
            leading: Icon(Icons.swipe_left_outlined),
            title: Text('Swipe left to delete'),
            subtitle: Text('Works on both days and entries'),
          ),
          const ListTile(
            leading: Icon(Icons.edit_outlined),
            title: Text('Tap any entry to edit it'),
          ),
          const ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Multiple feeds at once'),
            subtitle: Text(
                'When adding a feeding, tap "Add another feed" to log a suckle + bottle in one go.'),
            isThreeLine: true,
          ),
          const ListTile(
            leading: Icon(Icons.share_outlined),
            title: Text('Export data'),
            subtitle: Text('Use the share icon on the Home tab to export all data as JSON.'),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}