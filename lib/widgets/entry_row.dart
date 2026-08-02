import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/widgets/category_icon_badge.dart';

/// Shared "list row" card: icon badge + title/subtitle + optional trailing
/// widget, with the mockup's soft diffuse shadow instead of Material's
/// default hard elevation shadow.
class EntryRow extends StatelessWidget {
  const EntryRow({
    super.key,
    required this.icon,
    required this.color,
    this.softColor,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.margin = const EdgeInsets.symmetric(vertical: 4),
  });

  final IconData icon;
  final Color color;
  final Color? softColor;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: theme.cardTheme.color ?? theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow.withValues(alpha: 0.08),
            blurRadius: 10,
            offset: const Offset(0, 3),
            spreadRadius: -6,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(18),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Row(
              children: [
                CategoryIconBadge(icon: icon, color: color, softColor: softColor),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: theme.textTheme.titleSmall),
                      if (subtitle != null) ...[
                        const SizedBox(height: 1),
                        Text(
                          subtitle!,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                ?trailing,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
