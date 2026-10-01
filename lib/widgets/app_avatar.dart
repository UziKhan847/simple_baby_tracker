import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';

/// coin    = default (moods, reactions, health markers, upcoming milestones)
/// ring    = optional quieter "not yet" milestone
/// sticker = achieved milestones, notifications, celebration
enum AppAvatarStyle { coin, ring, sticker }

class AppAvatar extends StatelessWidget {
  const AppAvatar(
    this.icon, {
    super.key,
    required this.strong,
    required this.soft,
    this.style = AppAvatarStyle.coin,
    this.size = 40,
  });

  final String icon;
  final Color strong;
  final Color soft;
  final AppAvatarStyle style;
  final double size;

  @override
  Widget build(BuildContext context) {
    final glyph = size * 0.5;
    final surface = Theme.of(context).colorScheme.surface;
    switch (style) {
      case AppAvatarStyle.coin:
        return _disc(
          soft,
          null,
          null,
          AppIcon(
            icon,
            style: AppIconStyle.duo,
            color: strong,
            fill: surface,
            size: glyph,
          ),
        );
      case AppAvatarStyle.ring:
        return _disc(
          surface,
          Border.all(color: strong, width: 2),
          null,
          AppIcon(icon, style: AppIconStyle.line, color: strong, size: glyph),
        );
      case AppAvatarStyle.sticker:
        return _disc(
          strong,
          Border.all(color: surface, width: 3),
          [
            BoxShadow(
              color: strong.withValues(alpha: 0.33),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
          AppIcon(
            icon,
            style: AppIconStyle.duo,
            color: Colors.white,
            fill: Color.lerp(strong, Colors.white, 0.28),
            size: glyph,
          ),
        );
    }
  }

  Widget _disc(
    Color bg,
    BoxBorder? border,
    List<BoxShadow>? shadow,
    Widget child,
  ) => Container(
    width: size,
    height: size,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: bg,
      shape: BoxShape.circle,
      border: border,
      boxShadow: shadow,
    ),
    child: child,
  );
}
