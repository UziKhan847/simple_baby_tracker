import 'package:flutter/material.dart';

/// The mockup's group label: uppercase, letter-spaced, accent-colored —
/// e.g. "APPEARANCE", "EXPORT & BACKUP".
class AppSectionHeader extends StatelessWidget {
  const AppSectionHeader(
    this.label, {
    super.key,
    this.padding = const EdgeInsets.fromLTRB(20, 22, 20, 8),
  });

  final String label;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: padding,
      child: Text(
        label.toUpperCase(),
        style: theme.textTheme.labelSmall?.copyWith(
          fontSize: 12.5,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.6,
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }
}

/// A muted variant used for the home screen's month headings, which the
/// mockup renders in the same uppercase/letter-spaced style but in the
/// muted text color rather than the accent. Horizontal padding is left to
/// the caller (the home list already insets its children).
class AppSubsectionHeader extends StatelessWidget {
  const AppSubsectionHeader(this.label, {super.key, this.trailing});

  final String label;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 14, 0, 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label.toUpperCase(),
              style: theme.textTheme.labelSmall?.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.6,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          ?trailing,
        ],
      ),
    );
  }
}
