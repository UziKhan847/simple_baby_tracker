import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';

/// A rounded card that groups related rows, with hairline rules between
/// them — the container the mockup uses under every settings section
/// header. Material's [Card] can't do the soft diffuse shadow (its
/// elevation shadow is a hard neutral umbra), hence the explicit
/// [BoxDecoration].
class AppSettingsGroup extends StatelessWidget {
  const AppSettingsGroup({
    super.key,
    required this.children,
    this.margin = const EdgeInsets.symmetric(horizontal: 20),
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
  });

  final List<Widget> children;
  final EdgeInsets margin;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.extension<AppColors>()!;

    final rows = <Widget>[];
    for (var i = 0; i < children.length; i++) {
      rows.add(children[i]);
      if (i != children.length - 1) {
        rows.add(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Divider(height: 1, thickness: 1, color: colors.innerDivider),
          ),
        );
      }
    }

    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: theme.cardTheme.color ?? theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow.withValues(alpha: 0.10),
            blurRadius: 10,
            offset: const Offset(0, 3),
            spreadRadius: -6,
          ),
        ],
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: rows),
    );
  }
}
