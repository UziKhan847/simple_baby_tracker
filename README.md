# Simple Baby Tracker

A private, offline baby tracker for Android. Log feeds, diapers, sleep, growth,
medication, solids, bottles, skin conditions and daily photos — and keep it all
on your own phone.

- **No internet access, no account, no ads, no analytics.** The release app
  doesn't even request the `INTERNET` permission. Nothing leaves your phone
  unless you export a backup and share it yourself.
- **Entries:** feeding (bottle with prepared vs drunk, or timed breastfeeding),
  diapers (with stool-colour scale and rash tracking), sleep, pumping,
  temperature, growth (weight, height, head), tummy time, medication courses
  with dose reminders, solids with allergen tracking, baths, doctor visits and
  notes.
- **Live timers** for feeding and sleep, a home-screen widget (log a diaper,
  start/stop timers, or add anything from a pop-up menu) and flexible reminders.
- **Memories:** milestones and a daily photo timeline. **Skin conditions** with
  daily photo updates and a PDF for the doctor.
- **Graphs and WHO growth charts**, PDF report, vaccination schedule.
- **Backup & restore** as a single `.zip` (data and photos).
- 20 languages (including right-to-left), light, dark and OLED themes,
  metric or imperial units.

> **Not medical advice.** This is a diary for your own records, not a medical
> device. Growth charts, temperature ranges, dose reminders and stool-colour
> notes are general information only. Follow your doctor's advice.

## Building

Requires Flutter **3.47.5** (Dart ≥ 3.10) and the Android SDK.

```sh
flutter pub get
flutter build apk --release
```

To sign release builds with your own key, create `android/key.properties`
(git-ignored):

```properties
storeFile=/absolute/path/to/keystore.jks
storePassword=...
keyAlias=...
keyPassword=...
```

Without it the release build falls back to the debug key and prints a warning —
don't distribute such a build.

Other useful commands: `flutter test`, `flutter gen-l10n` (after editing
`lib/l10n/app_en.arb`), `dart run flutter_launcher_icons` (after changing the
artwork in `assets/launcher/`).

## Credits

- Icons: created with Claude Design (`assets/icons`).
- Fonts: [Inter](https://github.com/rsms/inter) and
  [Quicksand](https://github.com/andrew-paglinawan/QuicksandFamily), both under
  the SIL Open Font License 1.1 (`assets/fonts`).
- Growth charts: [WHO Child Growth Standards](https://www.who.int/tools/child-growth-standards).
- Vaccination schedule: based on the US CDC schedule.
- Launcher icon: original artwork (`assets/launcher`).
- Built with [Flutter](https://flutter.dev) and the open-source packages listed
  under *Settings → About → Open-source licences*.

## Licence

Copyright © 2026 UziKhan847.

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version. See [LICENSE](LICENSE).
