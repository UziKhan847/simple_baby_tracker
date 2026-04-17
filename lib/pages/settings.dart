import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/providers/theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = ThemeProvider.of(context);
    final sp = SettingsProvider.of(context);
    final settings = sp.settings;
    final isDark = themeProvider.isDark;

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          _SectionHeader('Appearance'),
          SwitchListTile(
            secondary: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
            title: const Text('Dark mode'),
            subtitle: Text(isDark ? 'Dark theme active' : 'Light theme active'),
            value: isDark,
            onChanged: (_) => themeProvider.toggleTheme(),
          ),

          const Divider(),
          _SectionHeader('Units'),

          ListTile(
            leading: const Icon(Icons.monitor_weight_outlined),
            title: const Text('Weight unit'),
            trailing: SegmentedButton<bool>(
              segments: const [
                ButtonSegment(value: true, label: Text('kg')),
                ButtonSegment(value: false, label: Text('lbs')),
              ],
              selected: {settings.useKg},
              onSelectionChanged: (s) =>
                  sp.updateSettings(settings.copyWith(useKg: s.first)),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.thermostat_outlined),
            title: const Text('Temperature unit'),
            trailing: SegmentedButton<bool>(
              segments: const [
                ButtonSegment(value: true, label: Text('°C')),
                ButtonSegment(value: false, label: Text('°F')),
              ],
              selected: {settings.useCelsius},
              onSelectionChanged: (s) =>
                  sp.updateSettings(settings.copyWith(useCelsius: s.first)),
            ),
          ),

          const Divider(),
          _SectionHeader('Tips'),
          const ListTile(
            leading: Icon(Icons.swap_horiz_outlined),
            title: Text('Switch babies'),
            subtitle: Text(
              'Tap the baby avatar at the top to switch or add a baby profile.',
            ),
            isThreeLine: true,
          ),
          const ListTile(
            leading: Icon(Icons.swipe_left_outlined),
            title: Text('Swipe left to delete'),
            subtitle: Text('Works on day tiles and individual entries.'),
          ),
          const ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Log multiple feeds'),
            subtitle: Text(
              'In the feeding form, tap "Add another feed" to log breastfeed + bottle in one go.',
            ),
            isThreeLine: true,
          ),
          const ListTile(
            leading: Icon(Icons.share_outlined),
            title: Text('Export data'),
            subtitle: Text(
              'Use the share icon on Home to export all data as JSON.',
            ),
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
