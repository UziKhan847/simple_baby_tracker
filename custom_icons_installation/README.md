# Baby Tracker custom icons: Flutter setup

> **Installed in this project — differences from the steps below:**
> - The embedded C2PA `<metadata>` block was stripped from all 285 SVGs (it was 2.2 MB of the 3.0 MB).
> - `AppIcon`'s `color`/`size` are optional (fall back to the ambient `IconTheme`), so it drops in wherever `Icon` was used. `fill` defaults to a tint of `color` over the card colour and `knockout` to the card colour — not white, which glowed on dark/OLED tints.
> - Coloured SVG strings are cached (`AppIconCache.colored`), so rebuilds don't redo the colour swap.
> - `AppColors` has no `primaryStrong`/`primarySoft`; the nav bar uses `colorScheme.primary` (via the theme) and `colorScheme.primaryContainer` as the solid icon's knockout.
> - `CategoryStyle.icon`, `EntryRow`/`StatCard`/`Stat`/`CategoryIconBadge` `icon`, and `PillSegmentedOption.icon` now take icon **names** (`AppIcons.x`).
> - Named colour pairs (`AppIcons.milestoneColor`) resolve via `colorPairNamed()` in `lib/theme/category_style.dart`.
> - Notification titles keep their emoji (Android renders emoji in notifications); notification small icons are unchanged.

285 SVGs = 95 icons x 3 styles (line / duo / solid), 24x24 grid.
Colours aren't baked in. Each SVG uses placeholder colours that `AppIcon` swaps at runtime:
- `#010101` = strong (stroke)
- `#020202` = soft (duo fill)
- `#030303` = knockout (solid-style cut-outs)

So the icons follow your existing `AppColors` pairs and work in light, dark and OLED mode.

## 1. Install

Copy `assets/icons/` into your project root and `lib/widgets/*.dart` + `lib/theme/app_icons.dart` into `lib/`.

pubspec.yaml:
```yaml
dependencies:
  flutter_svg: ^2.0.10

flutter:
  assets:
    - assets/icons/line/
    - assets/icons/duo/
    - assets/icons/solid/
```

main.dart:
```dart
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppIconCache.preload(); // loads all SVGs once, so icons render synchronously
  runApp(const MyApp());
}
```
(`toARGB32()` needs Flutter 3.27+. On older versions, use `c.value` in `_hex`.)

## 2. Which style goes where

| Where | Widget |
|---|---|
| Entry types (day list, add sheet, summary header, stat cards, "since last" strip, PDF-row replacements) | `AppIcon(..., style: duo, color: xStrong, fill: xSoft)` |
| Settings `_RowBadge` (34px tinted square) | duo, `fill: Colors.white` on the soft square |
| Bottom nav, unselected | `line`, muted colour |
| Bottom nav, selected | `solid`, `color: primaryStrong`, `knockout: primarySoft` (the pill colour) |
| Selected form pills (Bottle/Suckle, Pee/Poo, Left/Right, Sponge/Tub/Shower) | `solid`; unselected = `duo` |
| Running-timer card | `solid` |
| Small UI (close, chevron, edit, share, delete, add, app bar, time pill) | `line` |
| Milestone upcoming | `AppAvatar(..., style: coin)` (or `ring` for a quieter look) |
| Milestone achieved | `AppAvatar(..., style: sticker)` |
| Mood chips, food reactions, "first time" sparkle, temp severity, rash | `AppAvatar(..., style: coin, size: 28-32)` |
| Celebration / all achieved | `AppAvatar(celebrate, style: sticker, size: 64)` |

## 3. Swap-in examples

**category_style.dart**: change the `IconData icon` field to `String icon`:
```dart
case 'diaper': return CategoryStyle(icon: AppIcons.diaper, strong: c.diaperStrong, soft: c.diaperSoft);
// bottle -> AppIcons.bottle, breastfeeding -> AppIcons.breastfeeding, tummy -> AppIcons.tummyTime ...
default: return CategoryStyle(icon: AppIcons.other, strong: c.neutralStrong, soft: c.neutralSoft);
```

**CategoryIconBadge** (38px circle):
```dart
Container(
  width: 38, height: 38,
  decoration: BoxDecoration(color: style.soft, shape: BoxShape.circle),
  alignment: Alignment.center,
  child: AppIcon(style.icon, color: style.strong, fill: Colors.white, size: 22),
)
```

**Bottom nav (app_shell.dart)**:
```dart
NavigationDestination(
  icon: AppIcon(AppIcons.home, style: AppIconStyle.line, color: muted),
  selectedIcon: AppIcon(AppIcons.home, style: AppIconStyle.solid,
      color: c.primaryStrong, knockout: c.primarySoft),
  label: 'Home',
),
// graphs -> AppIcons.graphs, milestones -> AppIcons.milestones, settings -> AppIcons.settings
```

**Milestones (milestones.dart)**:
```dart
final icon = AppIcons.milestone[entry.key] ?? AppIcons.milestones;
final pair = colorsFor(AppIcons.milestoneColor[entry.key] ?? 'feeding'); // -> (strong, soft)
AppAvatar(icon, strong: pair.strong, soft: pair.soft, size: 38,
    style: entry.achieved ? AppAvatarStyle.sticker : AppAvatarStyle.coin);
```
Custom milestones: use `AppIcons.milestones` (star) on the feeding pair.
You can then drop the emoji prefix from the ARB titles.

**Mood chips / food reactions**: store the icon name (or keep the emoji as the stored key) and look up `AppIcons.mood[emoji]` / `AppIcons.reaction[emoji]`.

**Temperature severity** (replaces 🔴🟠🔵🟢):
fever -> `fever` + temperature pair, elevated -> `tempElevated` + medication pair,
low -> `tempLow` + misc pair, normal -> `tempNormal` + growth pair.

## 4. Replacement map (Material icon / emoji -> new icon)

| Old | New | Old | New |
|---|---|---|---|
| baby_changing_station | diaper (entries), poo (Poo pill / summary) | local_drink | bottle |
| child_care (feeding) | breastfeeding | child_care (tummy) | tummy_time |
| child_care (WHO card) | growth_spurt | water_drop (pumping) | pumping |
| water_drop (pee) | pee | water_drop (pump total) / opacity | milk_total |
| bedtime | sleep | bedtime_outlined | avg_sleep |
| thermostat | temperature | monitor_weight(_outlined) | weight |
| medication | medication | medication_outlined | medications |
| local_hospital_outlined | doctor_visit | edit_note | note |
| bathtub | bath | restaurant | solid_food |
| restaurant_outlined | foods_tried | circle (default) | other |
| circle (upcoming) | upcoming | check | check |
| home | home | bar_chart | graphs |
| star / star_border | milestones | settings | settings |
| share | share | delete | delete |
| add | add | add_circle_outline | add_circle |
| close | close | chevron_right | chevron_right |
| swap_horiz | switch_side | event_note | no_events |
| calendar_today | calendar | access_time / schedule | time |
| check_circle | given | edit_outlined | edit |
| info_outline | info | warning_amber_rounded | warning |
| trending_up | trend_up | arrow_upward / downward | arrow_up / arrow_down |
| show_chart | who_chart | boy / girl | boy / girl |
| vaccines_outlined | vaccine | dark_mode / light_mode | dark_mode / light_mode |
| nightlight_round | oled_mode | fullscreen | immersive |
| language | language | thermostat_outlined | temp_unit |
| local_drink_outlined (unit) | milk_unit | local_drink_outlined (reminder) | reminder_feed |
| baby_changing_station (reminder) | reminder_diaper | picture_as_pdf | export_pdf |
| code | export_json | file_upload_outlined | import_json |
| swipe_left_outlined | swipe | arrow_back / arrow_forward (pumping) | side_left / side_right |
| cleaning_services | sponge | shower | shower |
| local_fire_department | fever | 🔴 rash | rash |
| ✨ | sparkle | 🎉 / ⚠️ | celebrate / warning |
| 💊 notification | reminder_dose | 🍼 / 👶 notification | reminder_feed / reminder_diaper |

**Notifications:** Android notification icons must be monochrome PNGs. Export the `line` SVGs
(white stroke) to `android/app/src/main/res/drawable-*/` and remove the emoji from notification titles.

**PDF export:** the `pdf` package supports SVG via `pw.SvgImage(svg: ...)`. Load the `duo` file, apply the
same placeholder swap, and replace the row emoji.
