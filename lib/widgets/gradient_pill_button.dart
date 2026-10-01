import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';

/// The mockup's primary call-to-action: a full-width pill filled with the
/// accent gradient and lifted by a soft accent-tinted shadow.
///
/// Material's [FilledButton] can't produce either (its fill is a flat color
/// and its elevation shadow is a hard neutral umbra), so this is a plain
/// [Ink]-decorated container with its own [InkWell].
class GradientPillButton extends StatelessWidget {
  const GradientPillButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.expand = true,
  });

  final String label;
  final VoidCallback? onPressed;
  final String? icon;

  /// Stretch to the available width (the form CTA) vs. hug the label
  /// (the "Custom milestone" button).
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.extension<AppColors>()!;
    final enabled = onPressed != null;

    return Opacity(
      opacity: enabled ? 1 : 0.45,
      child: Container(
        decoration: BoxDecoration(
          gradient: colors.accentGradient,
          borderRadius: BorderRadius.circular(999),
          boxShadow: enabled
              ? [
                  BoxShadow(
                    color: colors.accentSolid.withValues(alpha: 0.55),
                    blurRadius: 24,
                    offset: const Offset(0, 10),
                    spreadRadius: -8,
                  ),
                ]
              : null,
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(999),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onPressed,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: expand ? 24 : 22,
                vertical: 15,
              ),
              child: Row(
                mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) ...[
                    AppIcon(
                      icon!,
                      style: AppIconStyle.line,
                      size: 19,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                  ],
                  Flexible(
                    child: Text(
                      label,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Circular gradient FAB, matching [GradientPillButton]'s fill and shadow.
/// Used in place of [FloatingActionButton] so the gradient and the soft
/// colored shadow survive.
class GradientFab extends StatelessWidget {
  const GradientFab({
    super.key,
    required this.onPressed,
    this.icon = AppIcons.add,
    this.tooltip,
    this.size = 56,
  });

  final VoidCallback onPressed;
  final String icon;
  final String? tooltip;
  final double size;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;

    final button = Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: colors.accentGradient,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: colors.accentSolid.withValues(alpha: 0.6),
            blurRadius: 28,
            offset: const Offset(0, 14),
            spreadRadius: -8,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        shape: const CircleBorder(),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: AppIcon(
              icon,
              style: AppIconStyle.line,
              color: Colors.white,
              size: size * 0.42,
            ),
          ),
        ),
      ),
    );

    return tooltip == null ? button : Tooltip(message: tooltip!, child: button);
  }
}
