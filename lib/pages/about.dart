import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';

/// Where the source code lives (shown as selectable text — the app has no
/// internet access, so it can't open a browser itself).
const sourceCodeUrl = 'https://github.com/UziKhan847/simple_baby_tracker';

/// Version, licence, disclaimer, privacy statement and credits.
///
/// The "not medical advice" and privacy texts matter beyond courtesy: the app
/// shows fever ranges, dose limits and stool-colour guidance, which are
/// general information only.
class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  String _version = '';

  @override
  void initState() {
    super.initState();
    _loadVersion();
  }

  Future<void> _loadVersion() async {
    try {
      final info = await PackageInfo.fromPlatform();
      if (mounted) setState(() => _version = info.version);
    } catch (_) {
      // No platform plugin (tests, unsupported platform): show no version.
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(l.aboutTitle)),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 8),
                Text(l.appTitle, style: theme.textTheme.headlineSmall),
                if (_version.isNotEmpty)
                  Text(
                    l.aboutVersion(_version),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                const SizedBox(height: 4),
                Text('© 2026 UziKhan847', style: theme.textTheme.bodySmall),
                const SizedBox(height: 12),
              ],
            ),
          ),
          _InfoCard(
            icon: AppIcons.info,
            title: l.aboutDisclaimerTitle,
            body: l.aboutDisclaimerBody,
            tint: theme.colorScheme.errorContainer,
          ),
          _InfoCard(
            icon: AppIcons.reminderDose,
            title: l.aboutPrivacyTitle,
            body: l.aboutPrivacyBody,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l.aboutLicenseLine, style: theme.textTheme.bodyMedium),
                  const SizedBox(height: 10),
                  Text(
                    l.aboutSourceCode,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SelectableText(sourceCodeUrl),
                ],
              ),
            ),
          ),
          _InfoCard(
            icon: AppIcons.sparkle,
            title: l.aboutCreditsTitle,
            body: l.aboutCreditsBody,
          ),
          const SizedBox(height: 8),
          OutlinedButton.icon(
            icon: const AppIcon(AppIcons.info, style: AppIconStyle.line),
            label: Text(l.aboutLicencesButton),
            onPressed: () => showLicensePage(
              context: context,
              applicationName: l.appTitle,
              applicationVersion: _version.isEmpty ? null : _version,
              applicationLegalese: '© 2026 UziKhan847 — GPL-3.0-or-later',
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({
    required this.icon,
    required this.title,
    required this.body,
    this.tint,
  });

  final String icon;
  final String title;
  final String body;
  final Color? tint;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: tint?.withValues(alpha: 0.45),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppIcon(icon, style: AppIconStyle.line, size: 22),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: theme.textTheme.titleSmall),
                  const SizedBox(height: 6),
                  Text(body, style: theme.textTheme.bodyMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
