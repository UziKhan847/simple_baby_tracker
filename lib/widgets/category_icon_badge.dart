import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';

/// Soft-tinted icon badge used throughout the app for entry-type icons.
///
/// The mockup uses two shapes: circles for list rows and the add-entry
/// sheet, and rounded squares (12px radius) for the stat cards and settings
/// rows. [squircle] picks the latter.
class CategoryIconBadge extends StatelessWidget {
  const CategoryIconBadge({
    super.key,
    required this.icon,
    required this.color,
    this.softColor,
    this.size = 38,
    this.squircle = false,
  });

  /// An [AppIcons] name.
  final String icon;
  final Color color;
  final Color? softColor;
  final double size;
  final bool squircle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: softColor ?? color.withValues(alpha: 0.16),
        shape: squircle ? BoxShape.rectangle : BoxShape.circle,
        borderRadius: squircle ? BorderRadius.circular(12) : null,
      ),
      // Duo fill uses the card colour rather than the icon pack's suggested
      // plain white, which glows on the dark/OLED soft tints.
      child: AppIcon(
        icon,
        color: color,
        fill: theme.cardTheme.color ?? theme.colorScheme.surface,
        size: size * 0.58,
      ),
    );
  }
}
