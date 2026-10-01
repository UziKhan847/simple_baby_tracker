import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/widgets/category_icon_badge.dart';

/// Home-screen summary tile: rounded-square tinted badge, muted label, then
/// the value in large Quicksand — matching the mockup's "Feeds today" /
/// "Diapers today" cards.
class StatCard extends StatelessWidget {
  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
    this.softColor,
  });

  final String title;
  final String value;

  /// An [AppIcons] name.
  final String icon;
  final Color color;
  final Color? softColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.cardTheme.color ?? theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.30),
            blurRadius: 18,
            offset: const Offset(0, 8),
            spreadRadius: -10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryIconBadge(
            icon: icon,
            color: color,
            softColor: softColor,
            size: 34,
            squircle: true,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            softWrap: true,
            style: theme.textTheme.labelMedium?.copyWith(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              height: 1.15,
            ),
          ),
        ],
      ),
    );
  }
}
