import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// line  = small UI controls (close, chevron, edit, share, app bar)
/// duo   = default for entry types, stats, settings rows
/// solid = selected / active states (nav tab, selected pills, running timer)
enum AppIconStyle { line, duo, solid }

/// Placeholder colours baked into every SVG, swapped at render time.
const _strongPlaceholder = '#010101';
const _fillPlaceholder = '#020202';
const _knockoutPlaceholder = '#030303';

class AppIconCache {
  AppIconCache._();
  static final Map<String, String> _svgs = {};

  /// Colour-substituted SVG strings, keyed by path + colours. Without this,
  /// every [AppIcon] build re-ran three `replaceAll`s and handed
  /// [SvgPicture] a brand-new string — and Home rebuilds once a second while
  /// a timer is running.
  static final Map<String, String> _colored = {};

  /// Call once in main() before runApp: `await AppIconCache.preload();`
  static Future<void> preload() async {
    if (_svgs.isNotEmpty) return;
    final manifest = await AssetManifest.loadFromAssetBundle(rootBundle);
    final paths = manifest.listAssets().where(
      (p) => p.startsWith('assets/icons/') && p.endsWith('.svg'),
    );
    await Future.wait(
      paths.map((p) async => _svgs[p] = await rootBundle.loadString(p)),
    );
  }

  static bool get isLoaded => _svgs.isNotEmpty;

  static String? get(String path) => _svgs[path];

  /// The SVG for [name] in [style] with its placeholder colours replaced, or
  /// null if it isn't loaded. Shared by [AppIcon] and the PDF export.
  static String? colored(
    String name, {
    AppIconStyle style = AppIconStyle.duo,
    required Color color,
    Color? fill,
    Color? knockout,
  }) {
    final path = 'assets/icons/${style.name}/$name.svg';
    final f = fill ?? const Color(0xFFFFFFFF);
    final k = knockout ?? const Color(0xFFFFFFFF);
    final key = '$path|${color.toARGB32()}|${f.toARGB32()}|${k.toARGB32()}';
    final cached = _colored[key];
    if (cached != null) return cached;
    final raw = _svgs[path];
    if (raw == null) return null;
    final svg = raw
        .replaceAll(_strongPlaceholder, _hex(color))
        .replaceAll(_fillPlaceholder, _hex(f))
        .replaceAll(_knockoutPlaceholder, _hex(k));
    return _colored[key] = svg;
  }
}

String _hex(Color c) =>
    '#${(c.toARGB32() & 0xFFFFFF).toRadixString(16).padLeft(6, '0')}';

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.name, {
    super.key,
    this.style = AppIconStyle.duo,
    this.color,
    this.fill,
    this.knockout,
    this.size,
    this.semanticLabel,
  });

  final String name;
  final AppIconStyle style;

  /// Stroke / main colour — your xxxStrong. Defaults to the ambient
  /// [IconTheme] colour, so AppIcon drops into IconButton, NavigationBar,
  /// etc. exactly like [Icon] does.
  final Color? color;

  /// Duo fill — your xxxSoft. Defaults to a light tint of [color] over the
  /// card colour (rather than plain white, which glows in dark/OLED mode).
  final Color? fill;

  /// Solid-style cut-out details — the colour behind the icon. Defaults to
  /// the card colour.
  final Color? knockout;

  /// Defaults to the ambient [IconTheme] size (24 if none).
  final double? size;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconTheme = IconTheme.of(context);
    final c = color ?? iconTheme.color ?? theme.colorScheme.onSurface;
    final size = this.size ?? iconTheme.size ?? 24;
    final bg = theme.cardTheme.color ?? theme.colorScheme.surface;
    final svg = AppIconCache.colored(
      name,
      style: style,
      color: c,
      fill: fill ?? Color.alphaBlend(c.withValues(alpha: 0.22), bg),
      knockout: knockout ?? bg,
    );
    if (svg == null) {
      // Only an error once the cache is loaded — in widget tests (or before
      // preload) every icon is legitimately missing.
      assert(
        !AppIconCache.isLoaded,
        'AppIcon: no asset for "$name" (${style.name}) — '
        'check lib/theme/app_icons.dart against assets/icons/',
      );
      return SizedBox.square(dimension: size);
    }
    return SvgPicture.string(
      svg,
      width: size,
      height: size,
      semanticsLabel: semanticLabel,
    );
  }
}
