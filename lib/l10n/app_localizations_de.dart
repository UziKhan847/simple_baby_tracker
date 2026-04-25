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
  String get navMilestones => 'Meilensteine';

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
  String get actionLog => 'Erfassen';

  @override
  String get cannotUndo => 'Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get noData => 'Keine Daten';

  @override
  String get noNotes => 'Keine Notizen';

  @override
  String get noDetails => 'Keine Details';

  @override
  String get optional => '(optional)';

  @override
  String get homeTitle => 'Tracker';

  @override
  String get feedsToday => 'Mahlzeiten heute';

  @override
  String get diapersToday => 'Windeln heute';

  @override
  String get sleepToday => 'Schlaf heute';

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
      zero: 'keine Ereignisse',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Tag löschen?';

  @override
  String deleteDayContent(String date) {
    return '$date und alle Einträge darin löschen? Dies kann nicht rückgängig gemacht werden.';
  }

  @override
  String get rashRecorded => 'Windelausschlag erfasst';

  @override
  String get noEntriesYet => 'Noch keine Einträge';

  @override
  String get addEntry => 'Eintrag hinzufügen';

  @override
  String get deleteEntryTitle => 'Eintrag löschen?';

  @override
  String get entryTypeDiaper => 'Windelwechsel';

  @override
  String get entryTypeFeeding => 'Mahlzeit';

  @override
  String get entryTypeSleep => 'Schlaf';

  @override
  String get entryTypeTemperature => 'Temperatur';

  @override
  String get entryTypeWeight => 'Gewicht';

  @override
  String get entryTypeTummyTime => 'Bauchlage';

  @override
  String get entryTypeMedication => 'Medikament';

  @override
  String get entryTypeDoctorVisit => 'Arztbesuch';

  @override
  String get entryTypeNote => 'Tägliche Notiz / Tagebuch';

  @override
  String get entryTypePumping => 'Abpumpen';

  @override
  String get entryTypeBath => 'Bad';

  @override
  String get diaperPeePoo => 'Windel — Urin + Stuhl';

  @override
  String get diaperPee => 'Windel — Urin';

  @override
  String get diaperPoo => 'Windel — Stuhl';

  @override
  String get diaperChange => 'Windel wechseln';

  @override
  String get editDiaper => 'Windel bearbeiten';

  @override
  String get diaperContents => 'Inhalt';

  @override
  String get diaperNone => 'Keins';

  @override
  String get diaperPeeLabel => 'Urin';

  @override
  String get diaperPooLabel => 'Stuhl';

  @override
  String get diaperBoth => 'Beides';

  @override
  String get diaperConsistency => 'Konsistenz';

  @override
  String get consistencyHard => 'Hart / Kügelchen';

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
  String get consistencyLoose => 'Flüssig / breiig';

  @override
  String get consistencyLooseHint => 'Beobachten';

  @override
  String get consistencyWatery => 'Wässrig';

  @override
  String get consistencyWateryHint => 'Durchfall';

  @override
  String get warnConstipation => 'Anzeichen von Verstopfung – genau beobachten';

  @override
  String get warnDiarrhea => 'Anzeichen von Durchfall – genau beobachten';

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
  String get rashCreamUsed => 'Ausschlagcreme verwendet';

  @override
  String get rashCreamCustomLabel => 'Name der Creme / Salbe';

  @override
  String get rashFollowUpTitle => '⚠️ Nachkontrolle des Ausschlags';

  @override
  String get rashFollowUpQuestion => 'Bei der letzten Windel wurde Ausschlag erfasst. Ist eine Besserung eingetreten?';

  @override
  String get rashImproved => 'Ja, verbessert';

  @override
  String get rashNoChange => 'Keine Veränderung / verschlechtert';

  @override
  String get addFeeding => 'Mahlzeit hinzufügen';

  @override
  String get editFeeding => 'Mahlzeit bearbeiten';

  @override
  String feedLabel(int number) {
    return 'Mahlzeit $number';
  }

  @override
  String get feedModeBottle => 'Flasche';

  @override
  String get feedModeSuckle => 'Stillen';

  @override
  String get feedAmountMl => 'Menge (ml)';

  @override
  String get feedType => 'Typ';

  @override
  String get feedBreastMilk => 'Muttermilch';

  @override
  String get feedFormula => 'Pre-Nahrung';

  @override
  String get feedFormulaBrand => 'Marke der Pre-Nahrung';

  @override
  String get feedFormulaBrandCustom => 'Name der Pre-Nahrung-Marke';

  @override
  String get feedDurationMinutes => 'Dauer (Minuten)';

  @override
  String get addAnotherFeed => 'Weitere Mahlzeit hinzufügen';

  @override
  String get bottleBreastMilk => 'Flasche — Muttermilch';

  @override
  String get bottleFormula => 'Flasche — Pre-Nahrung';

  @override
  String get breastfeedingSuckle => 'Stillen (an der Brust)';

  @override
  String get logSleep => 'Schlaf erfassen';

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
    return '${h}h ${m}m';
  }

  @override
  String get logTemperature => 'Temperatur erfassen';

  @override
  String get editTemperature => 'Temperatur bearbeiten';

  @override
  String get temperatureLabel => 'Temperatur';

  @override
  String get tempSeverityLow => 'Niedrige Temperatur – beobachten';

  @override
  String get tempSeverityNormal => 'Normale Temperatur';

  @override
  String get tempSeverityElevated => 'Leicht erhöht – genau beobachten';

  @override
  String get tempSeverityFever => 'Fieber – suchen Sie einen Arzt auf';

  @override
  String get tempReference => 'Temperaturreferenz';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ Bei Fieber bei Säuglingen unter 3 Monaten konsultieren Sie immer Ihren Kinderarzt.';

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
      zero: 'kein Tag',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'Gewicht erfassen';

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
    return 'Zuletzt erfasst: $weight am $date';
  }

  @override
  String get weightLatest => 'Letztes Gewicht';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount im Zeitraum';
  }

  @override
  String get tummyTimeLog => 'Bauchlage erfassen';

  @override
  String get tummyTimeEdit => 'Bauchlage bearbeiten';

  @override
  String get tummyTimeStart => 'Startzeit';

  @override
  String get tummyTimeEnd => 'Endzeit';

  @override
  String get tummyTimeTip => 'Bauchlage stärkt die Nacken- und Schultermuskulatur.';

  @override
  String get medicationLog => 'Medikament erfassen';

  @override
  String get medicationEdit => 'Medikament bearbeiten';

  @override
  String get medicationName => 'Medikamentenname *';

  @override
  String get medicationDose => 'Dosis';

  @override
  String get medicationUnit => 'Einheit';

  @override
  String get medicationCommon => 'Häufige Medikamente';

  @override
  String get medicationWarning => 'Befolgen Sie stets die Dosierungsanweisungen nach Gewicht/Alter. Überschreiten Sie nicht die empfohlene Häufigkeit.';

  @override
  String get medicationNotes => 'Notizen (optional)';

  @override
  String get medicationNotesHint => 'z.B. Grund, Reaktion...';

  @override
  String get doctorVisitLog => 'Arztbesuch';

  @override
  String get doctorVisitEdit => 'Arztbesuch bearbeiten';

  @override
  String get doctorName => 'Name des Arztes / der Klinik';

  @override
  String get doctorVisitReason => 'Grund des Besuchs';

  @override
  String get doctorVisitMeasurements => 'Messwerte (optional)';

  @override
  String get doctorVisitNotes => 'Notizen';

  @override
  String get doctorVisitNotesHint => 'z.B. verabreichte Impfungen, Empfehlungen des Arztes...';

  @override
  String get measurementWeightKg => 'Gewicht (kg)';

  @override
  String get measurementWeightLbs => 'Gewicht (lbs)';

  @override
  String get measurementHeightCm => 'Länge / Größe (cm)';

  @override
  String get measurementHeadCm => 'Kopfumfang (cm)';

  @override
  String get dailyNoteLog => 'Tägliche Notiz';

  @override
  String get dailyNoteEdit => 'Notiz bearbeiten';

  @override
  String get dailyNoteTitle => 'Titel (optional)';

  @override
  String get dailyNoteText => 'Notiz';

  @override
  String get dailyNoteHint => 'Was ist heute passiert? Erstes Drehen? Mürrischer Morgen?';

  @override
  String get dailyNoteTags => 'Schnell-Tags';

  @override
  String get pumpingLog => 'Abpump-Session erfassen';

  @override
  String get pumpingEdit => 'Abpump-Session bearbeiten';

  @override
  String get pumpingLeft => 'Linke Brust (ml)';

  @override
  String get pumpingRight => 'Rechte Brust (ml)';

  @override
  String get pumpingTotal => 'Insgesamt abgepumpt';

  @override
  String get pumpingDuration => 'Dauer (Minuten)';

  @override
  String get pumpingStored => 'Gelagert / eingefroren';

  @override
  String get pumpingNotes => 'Notizen (optional)';

  @override
  String get pumpingSessionTitle => 'Abpumpen';

  @override
  String pumpingTotalMl(int ml) {
    return 'Insgesamt $ml ml';
  }

  @override
  String get bathLog => 'Bad erfassen';

  @override
  String get bathEdit => 'Bad bearbeiten';

  @override
  String get bathType => 'Badetyp';

  @override
  String get bathTypeSponge => 'Waschung mit Schwamm';

  @override
  String get bathTypeTub => 'Badewanne';

  @override
  String get bathTypeShower => 'Dusche';

  @override
  String get bathNotes => 'Notizen (optional)';

  @override
  String get bathProducts => 'Verwendete Produkte (optional)';

  @override
  String get vaccineTitle => 'Impfungen';

  @override
  String get vaccineTabGiven => 'Gegeben';

  @override
  String get vaccineTabSchedule => 'Impfplan';

  @override
  String get vaccineLog => 'Impfung erfassen';

  @override
  String get vaccineEdit => 'Impfung bearbeiten';

  @override
  String get vaccineName => 'Impfstoffname';

  @override
  String get vaccineBrand => 'Marke / Hersteller (optional)';

  @override
  String get vaccineDate => 'Datum der Gabe';

  @override
  String get vaccineDose => 'Dosisnummer (optional)';

  @override
  String get vaccineSite => 'Injektionsstelle (optional)';

  @override
  String get vaccineNotes => 'Notizen / Reaktionen';

  @override
  String vaccineDue(String age) {
    return 'Fällig mit $age';
  }

  @override
  String get vaccineGiven => 'Gegeben';

  @override
  String get vaccineNoGiven => 'Noch keine Impfungen erfasst.';

  @override
  String get vaccineMarkGiven => 'Als gegeben markieren';

  @override
  String get whoChartTitle => 'WHO-Wachstumsdiagramme';

  @override
  String get whoWeightForAge => 'Gewicht für das Alter';

  @override
  String get whoHeightForAge => 'Länge/Größe für das Alter';

  @override
  String get whoHeadForAge => 'Kopfumfang für das Alter';

  @override
  String get whoGenderBoy => 'Junge';

  @override
  String get whoGenderGirl => 'Mädchen';

  @override
  String get whoNoData => 'Noch keine Messwerte erfasst.\nErfassen Sie Gewicht über die Einträge eines Tages, um das Diagramm zu sehen.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'Ihr Baby';

  @override
  String whoAgeMonths(int n) {
    return '$n Mo';
  }

  @override
  String get whoNoBirthDate => 'Legen Sie das Geburtsdatum des Babys im Profil fest, um altersbasierte Diagramme zu sehen.';

  @override
  String get notifTitle => 'Erinnerungen';

  @override
  String get notifFeedingReminder => 'Erinnerung für Mahlzeit';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'Mich nach $hours Stunden erinnern, wenn keine Mahlzeit erfasst wurde';
  }

  @override
  String get notifDiaperReminder => 'Erinnerung für Windel';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'Mich nach $hours Stunden erinnern, wenn keine Windel erfasst wurde';
  }

  @override
  String get notifMedicationReminder => 'Erinnerung für Medikament';

  @override
  String get notifEnabled => 'Benachrichtigungen aktiviert';

  @override
  String get notifDisabled => 'Benachrichtigungen deaktiviert';

  @override
  String get notifPermissionRequired => 'Bitte aktivieren Sie Benachrichtigungen in den Geräteeinstellungen.';

  @override
  String get exportTitle => 'Export & Backup';

  @override
  String get exportJson => 'Als JSON exportieren';

  @override
  String get exportPdf => 'Als PDF exportieren';

  @override
  String get exportPdfDesc => 'Menschenlesbare Zusammenfassung für Ihren Kinderarzt';

  @override
  String get exportGoogleDrive => 'Backup auf Google Drive';

  @override
  String get exportGenerating => 'Bericht wird erstellt...';

  @override
  String get milestoneTitle => 'Meilensteine';

  @override
  String get milestoneTabAchieved => 'Erreicht';

  @override
  String get milestoneTabUpcoming => 'Bevorstehend';

  @override
  String get milestoneCustomAdd => 'Benutzerdefinierter Meilenstein';

  @override
  String get milestoneDeleteTitle => 'Meilenstein löschen?';

  @override
  String get milestoneEdit => 'Meilenstein bearbeiten';

  @override
  String get milestoneAdd => 'Meilenstein hinzufügen';

  @override
  String get milestoneName => 'Name des Meilensteins *';

  @override
  String get milestoneDate => 'Datum der Erreichung';

  @override
  String get milestoneNotes => 'Notizen (optional)';

  @override
  String get milestoneNotesHint => 'Details, die es wert sind, erinnert zu werden...';

  @override
  String get milestoneNoAchieved => 'Noch keine Meilensteine erfasst.';

  @override
  String get milestoneAllDone => 'Alle voreingestellten Meilensteine erreicht! 🎉';

  @override
  String get milestoneFirstSmile => '😊 Erstes Lächeln';

  @override
  String get milestoneFirstLaugh => '😂 Erstes Lachen';

  @override
  String get milestoneFirstTooth => '🦷 Erster Zahn';

  @override
  String get milestoneRolledBackTummy => '🔄 Vom Rücken auf den Bauch gedreht';

  @override
  String get milestoneRolledTummyBack => '🔄 Vom Bauch auf den Rücken gedreht';

  @override
  String get milestoneSatUnsupported => '🧸 Freies Sitzen';

  @override
  String get milestoneStartedCrawling => '🐣 Beginn des Krabbelns';

  @override
  String get milestonePulledToStand => '🏋️ Hochziehen zum Stehen';

  @override
  String get milestoneFirstSteps => '👣 Erste Schritte';

  @override
  String get milestoneFirstWord => '💬 Erstes Wort';

  @override
  String get milestoneFirstSolidFood => '🥣 Erste feste Nahrung';

  @override
  String get milestoneFirstHaircut => '✂️ Erster Haarschnitt';

  @override
  String get milestoneSleptThroughNight => '🌙 Durchgeschlafen';

  @override
  String get milestoneWavedBye => '👋 Mit der Hand gewunken';

  @override
  String get milestoneClappedHands => '👏 Geklatscht';

  @override
  String get milestoneFirstBirthday => '🎂 Erster Geburtstag';

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
  String get settingsNotifications => 'Benachrichtigungen & Erinnerungen';

  @override
  String get settingsExport => 'Export & Backup';

  @override
  String get settingsTips => 'Tipps';

  @override
  String get tipSwitchBabies => 'Baby wechseln';

  @override
  String get tipSwitchBabiesDesc => 'Tippen Sie auf den Baby-Avatar oben, um zu wechseln oder ein Babyprofil hinzuzufügen.';

  @override
  String get tipSwipeDelete => 'Nach links wischen zum Löschen';

  @override
  String get tipSwipeDeleteDesc => 'Funktioniert auf Tageskacheln und einzelnen Einträgen.';

  @override
  String get tipTapToEdit => 'Tippen Sie auf einen Eintrag, um ihn zu bearbeiten';

  @override
  String get tipMultipleFeeds => 'Mehrere Mahlzeiten erfassen';

  @override
  String get tipMultipleFeedsDesc => 'Tippen Sie im Mahlzeiten-Formular auf „Weitere Mahlzeit hinzufügen“, um Stillen + Flasche in einem Durchgang zu erfassen.';

  @override
  String get tipExportData => 'Daten exportieren';

  @override
  String get tipExportDataDesc => 'Verwenden Sie das Teilen-Symbol auf der Startseite, um alle Daten als JSON zu exportieren.';

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
  String get genderUnknown => 'Unbekannt';

  @override
  String get genderBoy => 'Junge';

  @override
  String get genderGirl => 'Mädchen';

  @override
  String get cannotDeleteOnlyProfile => 'Das einzige Babyprofil kann nicht gelöscht werden.';

  @override
  String deleteProfileTitle(String name) {
    return '$name löschen?';
  }

  @override
  String get deleteProfileContent => 'Alle Daten für dieses Baby werden dauerhaft gelöscht.';

  @override
  String get graphsTitle => 'Diagramme';

  @override
  String get graphsTabDaily => 'Täglich';

  @override
  String get graphsTabGrowth => 'Wachstum';

  @override
  String get graphsTabHealth => 'Gesundheit';

  @override
  String get graphsTabWho => 'WHO-Diagramme';

  @override
  String get graphsTotalFeeds => 'Gesamt Mahlzeiten';

  @override
  String get graphsAvgPerDay => 'Durchschnitt/Tag';

  @override
  String get graphsTotalDiapers => 'Windeln';

  @override
  String get graphsTotalMilk => 'Gesamt Milch';

  @override
  String get graphsTotalSleep => 'Gesamt Schlaf';

  @override
  String get graphsAvgSleep => 'Durchschnitt Schlaf/Tag';

  @override
  String get graphsFeedsPerDay => 'Mahlzeiten pro Tag';

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
  String get graphsNoWeightData => 'Noch keine Gewichtseinträge.\nErfassen Sie Gewicht über die Einträge eines Tages.';

  @override
  String get graphsNoTempData => 'Noch keine Temperatureinträge.\nErfassen Sie Temperatur über einen Tag.';

  @override
  String get timeLabel => 'Uhrzeit';

  @override
  String get noColourRecorded => 'Keine Farbe aufgezeichnet';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage alt',
      one: '1 Tag alt',
      zero: 'neugeboren',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Monate alt',
      one: '1 Monat alt',
      zero: 'weniger als 1 Monat',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years J $months M alt';
  }
}
