# Icons & milestones reference

A full inventory of every icon, emoji and image asset the app uses, plus every
preset milestone — for making your own custom icon set. This is a reference
only; the app still renders Material icons directly (`Icons.xxx`) and emoji as
plain text, there is no image-swapping system wired in.

If you want to swap any of these for your own art, the natural approach is to
add PNG/SVG files under `assets/icons/` (declared in `pubspec.yaml`'s
`assets:` list) and replace the `Icon(Icons.xxx, ...)` widgets below with
`Image.asset(...)` at each call site named here.

---

## 1. Entry-type icons (the big one)

The single source of truth for these is
[`lib/theme/category_style.dart`](../lib/theme/category_style.dart), via
`categoryStyleFor(type, colors)`. It's used by the day list, the "add entry"
sheet, the day summary header, and the medications list. Each type also has a
`strong`/`soft` color pair defined in
[`lib/theme/app_colors.dart`](../lib/theme/app_colors.dart) (e.g.
`feedingStrong`/`feedingSoft`) — replacing an icon usually means keeping the
same color pair so the rest of the theme still matches.

| Entry type | Icon | Color pair | Notes |
|---|---|---|---|
| diaper | `Icons.baby_changing_station` | `diaperStrong`/`diaperSoft` | |
| feeding (bottle) | `Icons.local_drink` | `feedingStrong`/`feedingSoft` | `day.dart`'s `_styleFor` overrides this per-event |
| feeding (breastfeeding) | `Icons.child_care` | `feedingStrong`/`feedingSoft` | same override |
| pumping | `Icons.water_drop` | `miscStrong`/`miscSoft` | |
| sleep | `Icons.bedtime` | `sleepStrong`/`sleepSoft` | |
| temperature | `Icons.thermostat` | `temperatureStrong`/`temperatureSoft` | |
| weight / growth | `Icons.monitor_weight` | `weightStrong`/`weightSoft` | |
| tummy time | `Icons.child_care` | `growthStrong`/`growthSoft` | |
| medication | `Icons.medication` | `medicationStrong`/`medicationSoft` | |
| doctor visit | `Icons.local_hospital_outlined` | `miscStrong`/`miscSoft` | |
| note | `Icons.edit_note` | `noteStrong`/`noteSoft` | |
| bath | `Icons.bathtub` | `miscStrong`/`miscSoft` | |
| solid food | `Icons.restaurant` | `growthStrong`/`growthSoft` | new |
| (unrecognized/default) | `Icons.circle` | `neutralStrong`/`neutralSoft` | |

## 2. Bottom navigation bar

[`lib/app_shell.dart`](../lib/app_shell.dart):

| Tab | Unselected | Selected |
|---|---|---|
| Home | `Icons.home_outlined` | `Icons.home` |
| Graphs | `Icons.bar_chart_outlined` | `Icons.bar_chart` |
| Milestones | `Icons.star_outline` | `Icons.star` |
| Settings | `Icons.settings_outlined` | `Icons.settings` |

## 3. Home page

[`lib/pages/homepage.dart`](../lib/pages/homepage.dart):

- `Icons.medication_outlined` — app bar, opens Medications
- `Icons.share` — app bar, export
- `Icons.delete` — swipe-to-delete background
- Stat cards: `Icons.local_drink` (Feeds today), `Icons.baby_changing_station` (Diapers today), `Icons.bedtime` (Sleep today)
- FAB: `Icons.add` (default in `GradientFab`/`GradientPillButton`)
- Running-timer card: `Icons.child_care` (feeding) / `Icons.bedtime` (sleep), `Icons.swap_horiz` (switch side), `Icons.close` (discard)
- "Since last" strip: `Icons.local_drink` (feed), `Icons.baby_changing_station` (diaper), `Icons.bedtime` (sleep), `Icons.medication` (next dose due)

## 4. Day page

[`lib/pages/day.dart`](../lib/pages/day.dart):

- `Icons.event_note` — empty state
- `Icons.add` — add entry button / FAB
- `Icons.delete` — swipe background
- `Icons.chevron_right` — row trailing chevron
- Summary header ([`lib/summary_header_delegate.dart`](../lib/summary_header_delegate.dart)): `Icons.baby_changing_station` (poos), `Icons.water_drop` (pees), `Icons.local_drink` (milk), `Icons.child_care` (breastfeeding), `Icons.bedtime` (sleep)

## 5. Graphs page

[`lib/pages/graphs.dart`](../lib/pages/graphs.dart):

- Daily summary tiles: `Icons.local_drink` (total feeds), `Icons.trending_up` (avg/day), `Icons.baby_changing_station` (total diapers), `Icons.opacity` (total milk), `Icons.bedtime` (total sleep), `Icons.bedtime_outlined` (avg sleep)
- Growth tab: `Icons.monitor_weight_outlined` (empty state), `Icons.monitor_weight` (latest weight), `Icons.arrow_upward`/`Icons.arrow_downward` (gain/loss), `Icons.show_chart` (WHO charts button)
- Health tab: `Icons.thermostat` (empty state + latest reading)

[`lib/pages/who_charts.dart`](../lib/pages/who_charts.dart):

- `Icons.boy` / `Icons.girl` — sex toggle
- `Icons.info_outline` — missing-birth-date warning
- `Icons.child_care` — latest-measurement card

## 6. Milestones & vaccinations

[`lib/pages/milestones.dart`](../lib/pages/milestones.dart):

- `Icons.restaurant_outlined` — app bar, opens Foods tried (new)
- `Icons.vaccines_outlined` — app bar, opens Vaccinations
- `Icons.add` — "Custom milestone" button
- `Icons.star_border` — empty state
- `Icons.delete` — swipe background
- `Icons.check` — achieved-row badge
- `Icons.edit_outlined` — edit
- `Icons.circle` — upcoming-row badge

[`lib/pages/vaccinations.dart`](../lib/pages/vaccinations.dart):

- `Icons.calendar_today` — date field
- `Icons.check_circle` / `Icons.schedule` — tab icons (Given / Schedule)
- `Icons.add` — add button
- `Icons.vaccines_outlined` — empty state
- `Icons.delete`, `Icons.edit_outlined`, `Icons.check`

## 7. Foods tried & medications (new pages)

[`lib/pages/foods.dart`](../lib/pages/foods.dart): `Icons.restaurant` (per-food row, empty state), `Icons.warning_amber_rounded` (a food with a logged reaction)

[`lib/pages/medications.dart`](../lib/pages/medications.dart): `Icons.medication` (course row), `Icons.medication_outlined` (empty state), `Icons.add` (FAB)

## 8. Settings

[`lib/pages/settings.dart`](../lib/pages/settings.dart), row badges (`_RowBadge`, a 34px tinted square):

| Row | Icon |
|---|---|
| Dark mode | `Icons.dark_mode` / `Icons.light_mode` |
| OLED mode | `Icons.nightlight_round` |
| Immersive mode | `Icons.fullscreen` |
| Language | `Icons.language` (+ `Icons.chevron_right` trailing) |
| Weight unit | `Icons.monitor_weight_outlined` |
| Temperature unit | `Icons.thermostat_outlined` |
| Milk volume unit | `Icons.local_drink_outlined` (new) |
| Feeding reminder | `Icons.local_drink_outlined` |
| Diaper reminder | `Icons.baby_changing_station` |
| Export PDF | `Icons.picture_as_pdf` |
| Export JSON | `Icons.code` |
| Import JSON | `Icons.file_upload_outlined` |
| Tips | `Icons.swap_horiz_outlined`, `Icons.swipe_left_outlined`, `Icons.edit_outlined`, `Icons.add_circle_outline` |

## 9. Forms

- `app_form_scaffold.dart`: `Icons.close` (header X), `Icons.access_time` (time pill)
- `feeding.dart`: `Icons.add` (add another feed), `Icons.close` (remove feed card), `Icons.local_drink` (Bottle pill), `Icons.child_care` (Suckle pill)
- `diaper.dart`: `Icons.water_drop` (Pee), `Icons.baby_changing_station` (Poo), `Icons.warning_amber_rounded` (consistency warning), `Icons.check_circle` (selected colour photo)
- `pumping.dart`: `Icons.arrow_back` (Left), `Icons.arrow_forward` (Right), `Icons.water_drop` (total)
- `sleep.dart`: `Icons.bedtime`, `Icons.access_time`
- `tummy_time.dart`: `Icons.child_care`, `Icons.access_time`
- `temperature.dart`: `Icons.thermostat` (low), `Icons.check_circle` (normal), `Icons.warning_amber_rounded` (elevated), `Icons.local_fire_department` (fever)
- `weight.dart`: `Icons.arrow_upward` / `Icons.arrow_downward` (gain/loss)
- `medication.dart`: `Icons.warning_amber_rounded` (OTC dosage warning)
- `doctor_visit.dart`: `Icons.local_hospital_outlined`
- `bath.dart`: `Icons.cleaning_services` (Sponge), `Icons.bathtub` (Tub), `Icons.shower` (Shower)
- `solids.dart` (new): no dedicated icon inside the form — uses emoji buttons (see below) instead of Material icons for the "liked it?" row

## 10. Emoji used as icons

Plain text, not `Icon` widgets — easiest to swap for a small image if you want,
since they're just `Text('🍼', ...)`.

- Rash marker: 🔴 — `homepage.dart`, `day.dart`
- Temperature severity dots: 🔴 (fever) 🟠 (elevated) 🔵 (low) 🟢 (normal) — `day.dart`
- Daily-note mood chips: 😊 😴 😢 🤒 🌟 💊 🦷 📈 🎉 — `daily_note.dart`
- Solid-food "liked it?" buttons (new): 😋 (liked) 😐 (neutral) 😖 (disliked) — `solids.dart`
- Solid-food "first time!" badge (new): ✨ — appended to a food chip's label in `solids.dart`
- Notification titles: 🍼 (feeding reminder), 👶 (diaper reminder), 💊 (medication due, new) — `notification.dart`
- PDF export row icons: 👶 diaper, 🍼 bottle, 🤱 breastfeeding, 😴 sleep, 🌡️ temperature, ⚖️ weight, 🏋️ tummy time, 💊 medication, 🏥 doctor visit, 🥛 pumping, 🛁 bath, 📝 note, 🥣 solids (new) — `pdf_export.dart`
- WHO chart disclaimer: ⚠️ — `who_charts.dart`
- "All milestones achieved" celebration: 🎉 — `milestones.dart`

## 11. Image assets

- `assets/1.jpg` … `assets/9.jpg` — 256×256 photos used only in the diaper
  form's poo-colour picker (`diaper.dart`). IDs 1–6 are "Pale" (abnormal
  colours worth flagging), 7–9 are "Normal".
- `assets/apk_icons/` — launcher icon source images
  (`adaptive_icon_background.png`, `adaptive_icon_foreground.png`,
  `adaptive_icon_monochrome.png`, `app_launcher_icon.png`, `baby.png`), used
  only by `flutter_launcher_icons.yaml`, not at runtime.
- `assets/apk_icons/svgs/drawing.svg` — the Inkscape source for the launcher
  icon; not referenced by the app itself.

---

## 12. Milestones

All 16 presets are defined in
[`lib/models/milestone_entry.dart`](../lib/models/milestone_entry.dart)
(`presetMilestoneKeys`) as plain string keys. There's no age range or
category field on them today — a milestone is just a key, a date, and
optional notes. Titles (with an emoji prefix) come from
`lib/l10n/app_en.arb` (and the other 19 language files) via these keys, looked
up in `milestones.dart`'s `_presetTitle`.

If you want a custom icon per milestone, the natural place to add it is a
`Map<String, String>` from key → asset path, used in `milestones.dart`
wherever `_presetTitle` is called, alongside (or instead of) the emoji.

| # | Key | Emoji | English title (ARB key) |
|---|---|---|---|
| 1 | `first_smile` | 😊 | First smile (`milestoneFirstSmile`) |
| 2 | `first_laugh` | 😂 | First laugh (`milestoneFirstLaugh`) |
| 3 | `first_tooth` | 🦷 | First tooth (`milestoneFirstTooth`) |
| 4 | `rolled_back_to_tummy` | 🔄 | Rolled back → tummy (`milestoneRolledBackTummy`) |
| 5 | `rolled_tummy_to_back` | 🔄 | Rolled tummy → back (`milestoneRolledTummyBack`) |
| 6 | `sat_unsupported` | 🧸 | Sat unsupported (`milestoneSatUnsupported`) |
| 7 | `started_crawling` | 🐣 | Started crawling (`milestoneStartedCrawling`) |
| 8 | `pulled_to_stand` | 🏋️ | Pulled to stand (`milestonePulledToStand`) |
| 9 | `first_steps` | 👣 | First steps (`milestoneFirstSteps`) |
| 10 | `first_word` | 💬 | First word (`milestoneFirstWord`) |
| 11 | `first_solid_food` | 🥣 | First solid food (`milestoneFirstSolidFood`) |
| 12 | `first_haircut` | ✂️ | First haircut (`milestoneFirstHaircut`) |
| 13 | `slept_through_night` | 🌙 | Slept through the night (`milestoneSleptThroughNight`) |
| 14 | `waved_bye` | 👋 | Waved bye-bye (`milestoneWavedBye`) |
| 15 | `clapped_hands` | 👏 | Clapped hands (`milestoneClappedHands`) |
| 16 | `first_birthday` | 🎂 | First birthday (`milestoneFirstBirthday`) |

Rendering: every milestone (achieved or upcoming) is drawn with `EntryRow` →
`CategoryIconBadge`, a 38px circle. Achieved milestones get `Icons.check` on
the feeding colour pair; upcoming ones get `Icons.circle` on the neutral
colour pair — the *type* of milestone doesn't currently affect the icon at
all, only whether it's been logged. `CategoryIconBadge` only accepts an
`IconData`, so giving each milestone its own image would also mean adding an
`Image`-based variant of that widget (or a sibling widget) and passing it a
`key → asset` lookup instead of a single `IconData`.

## 13. Vaccine schedule

[`lib/models/vaccination_entry.dart`](../lib/models/vaccination_entry.dart)'s
`vaccineSchedule` lists ~26 standard vaccines/doses with name and age label,
but — like milestones — no per-vaccine icon; every row uses the same
`Icons.check` / `Icons.schedule` regardless of which vaccine it is.
