// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Baby-Tracker';

  @override
  String get navHome => 'Start';

  @override
  String get navGraphs => 'Diagramme';

  @override
  String get navMilestones => 'Milestones';

  @override
  String get navSettings => 'Einstellungen';

  @override
  String get actionCancel => 'Abbrechen';

  @override
  String get actionSave => 'Speichern';

  @override
  String get actionUpdate => 'Aktualisieren';

  @override
  String get actionDelete => 'Löschen';

  @override
  String get actionAdd => 'Hinzufügen';

  @override
  String get actionEdit => 'Bearbeiten';

  @override
  String get actionClose => 'Schließen';

  @override
  String get actionExport => 'Daten exportieren';

  @override
  String get actionAddDay => 'Tag hinzufügen';

  @override
  String get actionLog => 'Log';

  @override
  String get cannotUndo => 'Diese Aktion kann nicht rückgängig gemacht werden';

  @override
  String get noData => 'Keine Daten';

  @override
  String get noNotes => 'No notes';

  @override
  String get noDetails => 'Keine Details';

  @override
  String get optional => '(optional)';

  @override
  String get homeTitle => 'Tracker';

  @override
  String get feedsToday => 'Heutige Mahlzeiten';

  @override
  String get diapersToday => 'Heutige Windeln';

  @override
  String get sleepToday => 'Heutiger Schlaf';

  @override
  String todayLabel(String date) {
    return 'Heute — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Ereignisse',
      one: '1 Ereignis',
      zero: 'Keine Ereignisse',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Diesen Tag löschen?';

  @override
  String deleteDayContent(String date) {
    return '$date und alle Einträge löschen? Diese Aktion kann nicht rückgängig gemacht werden';
  }

  @override
  String get rashRecorded => 'Ausschlag dokumentiert';

  @override
  String get noEntriesYet => 'Noch keine Einträge';

  @override
  String get addEntry => 'Eintrag hinzufügen';

  @override
  String get deleteEntryTitle => 'Diesen Eintrag löschen?';

  @override
  String get entryTypeDiaper => 'Windel wechseln';

  @override
  String get entryTypeFeeding => 'Fütterung';

  @override
  String get entryTypeSleep => 'Schlaf';

  @override
  String get entryTypeTemperature => 'Temperatur';

  @override
  String get entryTypeWeight => 'Gewicht';

  @override
  String get entryTypeTummyTime => 'Tummy time';

  @override
  String get entryTypeMedication => 'Medication';

  @override
  String get entryTypeDoctorVisit => 'Doctor visit';

  @override
  String get entryTypeNote => 'Daily note / journal';

  @override
  String get entryTypePumping => 'Pumping session';

  @override
  String get entryTypeBath => 'Bath';

  @override
  String get diaperPeePoo => 'Windel — Pipi + Stuhl';

  @override
  String get diaperPee => 'Windel — nur Pipi';

  @override
  String get diaperPoo => 'Windel — nur Stuhl';

  @override
  String get diaperChange => 'Windel wechseln';

  @override
  String get editDiaper => 'Windel bearbeiten';

  @override
  String get diaperContents => 'Inhalt';

  @override
  String get diaperNone => 'Keins';

  @override
  String get diaperPeeLabel => 'Pipi';

  @override
  String get diaperPooLabel => 'Stuhl';

  @override
  String get diaperBoth => 'Beides';

  @override
  String get diaperConsistency => 'Konsistenz';

  @override
  String get consistencyHard => 'Hart / Körnig';

  @override
  String get consistencyHardHint => 'Verstopfung';

  @override
  String get consistencyFirm => 'Fest';

  @override
  String get consistencyFirmHint => 'Leicht fest';

  @override
  String get consistencyNormal => 'Normal';

  @override
  String get consistencyNormalHint => 'Gesund';

  @override
  String get consistencySoft => 'Weich';

  @override
  String get consistencySoftHint => 'Leicht weich';

  @override
  String get consistencyLoose => 'Breiiig / Halbflüssig';

  @override
  String get consistencyLooseHint => 'Beobachten';

  @override
  String get consistencyWatery => 'Wässrig';

  @override
  String get consistencyWateryHint => 'Durchfall';

  @override
  String get warnConstipation => 'Anzeichen von Verstopfung — genau beobachten';

  @override
  String get warnDiarrhea => 'Anzeichen von Durchfall — genau beobachten';

  @override
  String get pooColourLabel => 'Farbe (tippen zum Auswählen)';

  @override
  String get pooColourAbnormal => '⚠️ Abnorm (blass)';

  @override
  String get pooColourNormal => '✅ Normal';

  @override
  String pooColourSelected(String label) {
    return 'Ausgewählt: $label';
  }

  @override
  String get diaperSize => 'Windelgröße';

  @override
  String get diaperBrand => 'Marke';

  @override
  String get diaperBrandCustomLabel => 'Markenname';

  @override
  String get rashPresent => 'Windelausschlag vorhanden';

  @override
  String get rashPresentHint => 'Rötung, Reizung oder Windelausschlag';

  @override
  String get rashCreamUsed => 'Creme verwendet';

  @override
  String get rashCreamCustomLabel => 'Name der Creme / Salbe';

  @override
  String get rashFollowUpTitle => '⚠️ Ausschlag-Nachsorge';

  @override
  String get rashFollowUpQuestion => 'Bei der letzten Windel wurde Ausschlag festgestellt. Hat sich gebessert?';

  @override
  String get rashImproved => 'Ja, gebessert';

  @override
  String get rashNoChange => 'Keine Veränderung / Verschlechtert';

  @override
  String get addFeeding => 'Fütterung hinzufügen';

  @override
  String get editFeeding => 'Fütterung bearbeiten';

  @override
  String feedLabel(int number) {
    return 'Fütterung $number';
  }

  @override
  String get feedModeBottle => 'Flasche';

  @override
  String get feedModeSuckle => 'Stillen';

  @override
  String get feedAmountMl => 'Menge (ml)';

  @override
  String get feedType => 'Art';

  @override
  String get feedBreastMilk => 'Muttermilch';

  @override
  String get feedFormula => 'Pre-Nahrung';

  @override
  String get feedFormulaBrand => 'Marke der Pre-Nahrung';

  @override
  String get feedFormulaBrandCustom => 'Markenname';

  @override
  String get feedDurationMinutes => 'Dauer (Minuten)';

  @override
  String get addAnotherFeed => 'Weitere Fütterung hinzufügen';

  @override
  String get bottleBreastMilk => 'Flasche — Muttermilch';

  @override
  String get bottleFormula => 'Flasche — Pre-Nahrung';

  @override
  String get breastfeedingSuckle => 'Stillen (direkt)';

  @override
  String get logSleep => 'Schlaf aufzeichnen';

  @override
  String get editSleep => 'Schlaf bearbeiten';

  @override
  String get sleepStart => 'Schlafbeginn';

  @override
  String get sleepWakeUp => 'Aufwachen';

  @override
  String sleepDuration(String duration) {
    return 'Dauer: $duration';
  }

  @override
  String get sleepInvalidTimes => 'Ungültige Uhrzeiten';

  @override
  String get sleepWrapsNextDay => '(endet am nächsten Tag)';

  @override
  String get sleepNotes => 'Notizen (optional)';

  @override
  String get sleepNotesHint => 'z.B. unruhig, kurz wach...';

  @override
  String get sleepNoNotes => 'Keine Notizen';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}h ${m}min';
  }

  @override
  String get logTemperature => 'Temperatur aufzeichnen';

  @override
  String get editTemperature => 'Temperatur bearbeiten';

  @override
  String get temperatureLabel => 'Temperatur';

  @override
  String get tempSeverityLow => 'Niedrige Temperatur — beobachten';

  @override
  String get tempSeverityNormal => 'Normale Temperatur';

  @override
  String get tempSeverityElevated => 'Leicht erhöht — genau beobachten';

  @override
  String get tempSeverityFever => 'Fieber — Arzt konsultieren';

  @override
  String get tempReference => 'Temperatur-Referenz';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ Bei Säuglingen unter 3 Monaten mit Fieber immer den Kinderarzt aufsuchen';

  @override
  String get tempLow => 'Niedrig';

  @override
  String get tempNormal => 'Normal';

  @override
  String get tempElevated => 'Erhöht';

  @override
  String get tempFever => 'Fieber';

  @override
  String get tempLatest => 'Letzte Temperatur';

  @override
  String get tempSummary => 'Temperaturübersicht';

  @override
  String get tempFeverThreshold => 'Fieberschwelle';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage',
      one: '1 Tag',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'Gewicht aufzeichnen';

  @override
  String get editWeight => 'Gewicht bearbeiten';

  @override
  String get weightLabel => 'Gewicht';

  @override
  String weightGain(String amount) {
    return '+$amount Zunahme';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount Abnahme';
  }

  @override
  String weightPrevious(String weight) {
    return 'Vorher: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'Letzte Aufzeichnung: $weight am $date';
  }

  @override
  String get weightLatest => 'Aktuellstes Gewicht';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount in diesem Zeitraum';
  }

  @override
  String get tummyTimeLog => 'Log tummy time';

  @override
  String get tummyTimeEdit => 'Edit tummy time';

  @override
  String get tummyTimeStart => 'Start time';

  @override
  String get tummyTimeEnd => 'End time';

  @override
  String get tummyTimeTip => 'Tummy time strengthens neck and shoulder muscles.';

  @override
  String get medicationLog => 'Log medication';

  @override
  String get medicationEdit => 'Edit medication';

  @override
  String get medicationName => 'Medication name *';

  @override
  String get medicationDose => 'Dose';

  @override
  String get medicationUnit => 'Unit';

  @override
  String get medicationCommon => 'Common medications';

  @override
  String get medicationWarning => 'Always follow dosage instructions for weight/age. Do not exceed recommended frequency.';

  @override
  String get medicationNotes => 'Notes (optional)';

  @override
  String get medicationNotesHint => 'e.g. reason, reaction...';

  @override
  String get doctorVisitLog => 'Doctor visit';

  @override
  String get doctorVisitEdit => 'Edit doctor visit';

  @override
  String get doctorName => 'Doctor / clinic name';

  @override
  String get doctorVisitReason => 'Reason for visit';

  @override
  String get doctorVisitMeasurements => 'Measurements (optional)';

  @override
  String get doctorVisitNotes => 'Notes';

  @override
  String get doctorVisitNotesHint => 'e.g. vaccinations given, doctor recommendations...';

  @override
  String get measurementWeightKg => 'Weight (kg)';

  @override
  String get measurementWeightLbs => 'Weight (lbs)';

  @override
  String get measurementHeightCm => 'Length / height (cm)';

  @override
  String get measurementHeadCm => 'Head circumference (cm)';

  @override
  String get dailyNoteLog => 'Daily note';

  @override
  String get dailyNoteEdit => 'Edit note';

  @override
  String get dailyNoteTitle => 'Title (optional)';

  @override
  String get dailyNoteText => 'Note';

  @override
  String get dailyNoteHint => 'What happened today? First time rolling? Fussy morning?';

  @override
  String get dailyNoteTags => 'Quick tags';

  @override
  String get pumpingLog => 'Log pumping session';

  @override
  String get pumpingEdit => 'Edit pumping session';

  @override
  String get pumpingLeft => 'Left breast (ml)';

  @override
  String get pumpingRight => 'Right breast (ml)';

  @override
  String get pumpingTotal => 'Total pumped';

  @override
  String get pumpingDuration => 'Duration (minutes)';

  @override
  String get pumpingStored => 'Stored / frozen';

  @override
  String get pumpingNotes => 'Notes (optional)';

  @override
  String get pumpingSessionTitle => 'Pumping';

  @override
  String pumpingTotalMl(int ml) {
    return '$ml ml total';
  }

  @override
  String get bathLog => 'Log bath';

  @override
  String get bathEdit => 'Edit bath';

  @override
  String get bathType => 'Bath type';

  @override
  String get bathTypeSponge => 'Sponge bath';

  @override
  String get bathTypeTub => 'Tub bath';

  @override
  String get bathTypeShower => 'Shower';

  @override
  String get bathNotes => 'Notes (optional)';

  @override
  String get bathProducts => 'Products used (optional)';

  @override
  String get vaccineTitle => 'Vaccinations';

  @override
  String get vaccineTabGiven => 'Given';

  @override
  String get vaccineTabSchedule => 'Schedule';

  @override
  String get vaccineLog => 'Log vaccine';

  @override
  String get vaccineEdit => 'Edit vaccine';

  @override
  String get vaccineName => 'Vaccine name';

  @override
  String get vaccineBrand => 'Brand / manufacturer (optional)';

  @override
  String get vaccineDate => 'Date given';

  @override
  String get vaccineDose => 'Dose number (optional)';

  @override
  String get vaccineSite => 'Injection site (optional)';

  @override
  String get vaccineNotes => 'Notes / reactions';

  @override
  String vaccineDue(String age) {
    return 'Due at $age';
  }

  @override
  String get vaccineGiven => 'Given';

  @override
  String get vaccineNoGiven => 'No vaccines logged yet.';

  @override
  String get vaccineMarkGiven => 'Mark as given';

  @override
  String get whoChartTitle => 'WHO Growth Charts';

  @override
  String get whoWeightForAge => 'Weight-for-age';

  @override
  String get whoHeightForAge => 'Length/Height-for-age';

  @override
  String get whoHeadForAge => 'Head circumference-for-age';

  @override
  String get whoGenderBoy => 'Boy';

  @override
  String get whoGenderGirl => 'Girl';

  @override
  String get whoNoData => 'No measurements logged yet.\nLog weight from a day\'s entries to see the chart.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'Your baby';

  @override
  String whoAgeMonths(int n) {
    return '$n mo';
  }

  @override
  String get whoNoBirthDate => 'Set baby\'s date of birth in the profile to see age-based charts.';

  @override
  String get notifTitle => 'Reminders';

  @override
  String get notifFeedingReminder => 'Feeding reminder';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'Remind me after ${hours}h if no feed logged';
  }

  @override
  String get notifDiaperReminder => 'Diaper reminder';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'Remind me after ${hours}h if no diaper logged';
  }

  @override
  String get notifMedicationReminder => 'Medication reminder';

  @override
  String get notifEnabled => 'Notifications enabled';

  @override
  String get notifDisabled => 'Notifications disabled';

  @override
  String get notifPermissionRequired => 'Please enable notifications in your device settings.';

  @override
  String get exportTitle => 'Export & backup';

  @override
  String get exportJson => 'Export as JSON';

  @override
  String get exportPdf => 'Export as PDF';

  @override
  String get exportPdfDesc => 'Human-readable summary for your paediatrician';

  @override
  String get exportGoogleDrive => 'Back up to Google Drive';

  @override
  String get exportGenerating => 'Generating report...';

  @override
  String get milestoneTitle => 'Milestones';

  @override
  String get milestoneTabAchieved => 'Achieved';

  @override
  String get milestoneTabUpcoming => 'Upcoming';

  @override
  String get milestoneCustomAdd => 'Custom milestone';

  @override
  String get milestoneDeleteTitle => 'Delete milestone?';

  @override
  String get milestoneEdit => 'Edit milestone';

  @override
  String get milestoneAdd => 'Add milestone';

  @override
  String get milestoneName => 'Milestone name *';

  @override
  String get milestoneDate => 'Date achieved';

  @override
  String get milestoneNotes => 'Notes (optional)';

  @override
  String get milestoneNotesHint => 'Any details worth remembering...';

  @override
  String get milestoneNoAchieved => 'No milestones logged yet.';

  @override
  String get milestoneAllDone => 'All preset milestones achieved! 🎉';

  @override
  String get milestoneFirstSmile => '😊 First smile';

  @override
  String get milestoneFirstLaugh => '😂 First laugh';

  @override
  String get milestoneFirstTooth => '🦷 First tooth';

  @override
  String get milestoneRolledBackTummy => '🔄 Rolled back → tummy';

  @override
  String get milestoneRolledTummyBack => '🔄 Rolled tummy → back';

  @override
  String get milestoneSatUnsupported => '🧸 Sat unsupported';

  @override
  String get milestoneStartedCrawling => '🐣 Started crawling';

  @override
  String get milestonePulledToStand => '🏋️ Pulled to stand';

  @override
  String get milestoneFirstSteps => '👣 First steps';

  @override
  String get milestoneFirstWord => '💬 First word';

  @override
  String get milestoneFirstSolidFood => '🥣 First solid food';

  @override
  String get milestoneFirstHaircut => '✂️ First haircut';

  @override
  String get milestoneSleptThroughNight => '🌙 Slept through the night';

  @override
  String get milestoneWavedBye => '👋 Waved bye-bye';

  @override
  String get milestoneClappedHands => '👏 Clapped hands';

  @override
  String get milestoneFirstBirthday => '🎂 First birthday';

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get settingsAppearance => 'Erscheinungsbild';

  @override
  String get settingsDarkMode => 'Dunkelmodus';

  @override
  String get settingsDarkActive => 'Dunkles Thema aktiv';

  @override
  String get settingsLightActive => 'Helles Thema aktiv';

  @override
  String get settingsUnits => 'Einheiten';

  @override
  String get settingsWeightUnit => 'Gewichtseinheit';

  @override
  String get settingsTempUnit => 'Temperatureinheit';

  @override
  String get settingsLanguage => 'Sprache';

  @override
  String get settingsNotifications => 'Notifications & reminders';

  @override
  String get settingsExport => 'Export & backup';

  @override
  String get settingsTips => 'Tipps';

  @override
  String get tipSwitchBabies => 'Baby wechseln';

  @override
  String get tipSwitchBabiesDesc => 'Tippe auf das Baby-Avatar oben, um das Baby zu wechseln oder ein Profil hinzuzufügen';

  @override
  String get tipSwipeDelete => 'Nach links wischen zum Löschen';

  @override
  String get tipSwipeDeleteDesc => 'Funktioniert bei Tageskarten und einzelnen Einträgen';

  @override
  String get tipTapToEdit => 'Tippe auf einen beliebigen Eintrag, um ihn zu bearbeiten';

  @override
  String get tipMultipleFeeds => 'Mehrere Fütterungen erfassen';

  @override
  String get tipMultipleFeedsDesc => 'Tippe im Fütterungsformular auf „Weitere Fütterung hinzufügen“, um Stillen und Flasche in einem Schritt zu erfassen';

  @override
  String get tipExportData => 'Daten exportieren';

  @override
  String get tipExportDataDesc => 'Verwende das Teilen-Symbol auf der Startseite, um alle Daten als JSON zu exportieren';

  @override
  String get babiesTitle => 'Babys';

  @override
  String get addBaby => 'Baby hinzufügen';

  @override
  String get editProfile => 'Profil bearbeiten';

  @override
  String get babyNameRequired => 'Name *';

  @override
  String get babyDobOptional => 'Geburtsdatum (optional)';

  @override
  String babyBornOn(String date) {
    return 'Geboren am $date';
  }

  @override
  String get genderUnknown => 'Nicht angegeben';

  @override
  String get genderBoy => 'Junge';

  @override
  String get genderGirl => 'Mädchen';

  @override
  String get cannotDeleteOnlyProfile => 'Das einzige Babyprofil kann nicht gelöscht werden';

  @override
  String deleteProfileTitle(String name) {
    return '$name löschen?';
  }

  @override
  String get deleteProfileContent => 'Alle Daten dieses Babys werden dauerhaft gelöscht';

  @override
  String get graphsTitle => 'Diagramme';

  @override
  String get graphsTabDaily => 'Täglich';

  @override
  String get graphsTabGrowth => 'Wachstum';

  @override
  String get graphsTabHealth => 'Gesundheit';

  @override
  String get graphsTabWho => 'WHO Charts';

  @override
  String get graphsTotalFeeds => 'Fütterungen gesamt';

  @override
  String get graphsAvgPerDay => 'Ø pro Tag';

  @override
  String get graphsTotalDiapers => 'Windeln';

  @override
  String get graphsTotalMilk => 'Milch gesamt';

  @override
  String get graphsTotalSleep => 'Schlaf gesamt';

  @override
  String get graphsAvgSleep => 'Ø Schlaf/Tag';

  @override
  String get graphsFeedsPerDay => 'Fütterungen pro Tag';

  @override
  String get graphsDiapersPerDay => 'Windeln pro Tag';

  @override
  String get graphsMilkPerDay => 'Milch pro Tag (ml)';

  @override
  String get graphsSleepPerDay => 'Schlaf pro Tag (Stunden)';

  @override
  String get graphsWeightOverTime => 'Gewicht im Zeitverlauf';

  @override
  String get graphsTempOverTime => 'Temperatur im Zeitverlauf';

  @override
  String graphsMaxLabel(String value) {
    return 'Max: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Min: $value';
  }

  @override
  String get graphsNoWeightData => 'Noch keine Gewichtseinträge\nGewicht über die Einträge eines Tages erfassen';

  @override
  String get graphsNoTempData => 'Noch keine Temperatureinträge\nTemperatur über einen Tag erfassen';

  @override
  String get timeLabel => 'Uhrzeit';

  @override
  String get noColourRecorded => 'Keine Farbe erfasst';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage',
      one: '1 Tag',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Monate',
      one: '1 Monat',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years Jahr(e) $months Monat(e)';
  }
}
