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
  String get exportJsonDesc => 'Rohdaten für die Sicherung';

  @override
  String get exportPdf => 'Als PDF exportieren';

  @override
  String get exportPdfDesc => 'Menschenlesbare Zusammenfassung für Ihren Kinderarzt';

  @override
  String get importJson => 'Aus JSON importieren';

  @override
  String get importJsonDesc => 'Aus einer Sicherungsdatei wiederherstellen';

  @override
  String get importDialogTitle => 'Daten importieren?';

  @override
  String get importDialogBody => 'Zusammenführen fügt die Einträge der Datei zu Ihren bestehenden Daten hinzu. Alles ersetzen löscht zuerst Ihre bestehenden Daten.';

  @override
  String get importMerge => 'Zusammenführen';

  @override
  String get importReplaceAll => 'Alles ersetzen';

  @override
  String get importSuccess => 'Import abgeschlossen';

  @override
  String get importInvalidFile => 'Das sieht nicht wie eine Baby-Tracker-Exportdatei aus.';

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
  String get milestoneAllDone => 'Alle voreingestellten Meilensteine erreicht!';

  @override
  String get milestoneFirstSmile => 'Erstes Lächeln';

  @override
  String get milestoneFirstLaugh => 'Erstes Lachen';

  @override
  String get milestoneFirstTooth => 'Erster Zahn';

  @override
  String get milestoneRolledBackTummy => 'Vom Rücken auf den Bauch gedreht';

  @override
  String get milestoneRolledTummyBack => 'Vom Bauch auf den Rücken gedreht';

  @override
  String get milestoneSatUnsupported => 'Freies Sitzen';

  @override
  String get milestoneStartedCrawling => 'Beginn des Krabbelns';

  @override
  String get milestonePulledToStand => 'Hochziehen zum Stehen';

  @override
  String get milestoneFirstSteps => 'Erste Schritte';

  @override
  String get milestoneFirstWord => 'Erstes Wort';

  @override
  String get milestoneFirstSolidFood => 'Erste feste Nahrung';

  @override
  String get milestoneFirstHaircut => 'Erster Haarschnitt';

  @override
  String get milestoneSleptThroughNight => 'Durchgeschlafen';

  @override
  String get milestoneWavedBye => 'Mit der Hand gewunken';

  @override
  String get milestoneClappedHands => 'Geklatscht';

  @override
  String get milestoneFirstBirthday => 'Erster Geburtstag';

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
  String get settingsVolumeUnit => 'Milk volume unit';

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
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

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

  @override
  String medicationLabel(String name) {
    return 'Medikament: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'Besuch';

  @override
  String doctorVisitLabel(String reason) {
    return 'Arztbesuch — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 Notiz';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'Dr.: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'Kein Arzt erfasst';

  @override
  String get summaryPoosLabel => 'Stuhl';

  @override
  String get summaryPeesLabel => 'Urin';

  @override
  String get summaryMilkLabel => 'Milch ml';

  @override
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

  @override
  String get summaryBreastLabel => 'Stillen Min';

  @override
  String get summarySleepLabel => 'Schlaf';

  @override
  String get settingsOledMode => 'OLED (reines Schwarz)';

  @override
  String get settingsOledModeDesc => 'Reines Schwarz verwenden, um Akku auf OLED-Displays zu sparen';

  @override
  String get settingsImmersiveMode => 'Immersiver Modus';

  @override
  String get settingsImmersiveModeDesc => 'Status- und Navigationsleiste des Systems ausblenden';

  @override
  String get navVaccinationsEntry => 'Impfungen';

  @override
  String get whoChartsEntry => 'WHO-Wachstumskurven';

  @override
  String get medicationEditTitle => 'Edit medication';

  @override
  String get medicationLogTitle => 'Log medication';

  @override
  String get medicationYourCourses => 'Your courses';

  @override
  String get medicationManageCourses => 'Manage courses';

  @override
  String get medicationNameRequired => 'Medication name *';

  @override
  String get medicationDosageWarning => 'Always follow dosage instructions for weight/age. Do not exceed recommended frequency.';

  @override
  String get medicationNotesOptional => 'Notes (optional)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes ago',
      one: '1 minute ago',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hours ago',
      one: '1 hour ago',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days ago',
      one: '1 day ago',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'Last given $ago';
  }

  @override
  String get medicationNeverGiven => 'Not given yet';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count doses today',
      one: '1 dose today',
      zero: 'No doses today',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'Next dose isn\'t due for ${hours}h after the last one';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'Already at the $max/day limit for this course';
  }

  @override
  String get medicationEditCourse => 'Edit course';

  @override
  String get medicationNewCourse => 'New course';

  @override
  String get medicationReasonOptional => 'Reason (optional)';

  @override
  String get medicationIntervalHoursOptional => 'Repeat every (hours, optional)';

  @override
  String get medicationMaxPerDayOptional => 'Max doses/day (optional)';

  @override
  String get medicationRemindNextDose => 'Remind me when the next dose is due';

  @override
  String medicationEndCourseTitle(String name) {
    return 'End $name?';
  }

  @override
  String get medicationEndCoursePrompt => 'How did it go?';

  @override
  String get medicationDeleteCourseTitle => 'Delete this course?';

  @override
  String get medicationResultWorked => 'Worked';

  @override
  String get medicationResultPartlyWorked => 'Partly worked';

  @override
  String get medicationResultDidntWork => 'Didn\'t work';

  @override
  String get medicationResultSideEffects => 'Side effects';

  @override
  String get medicationResultNone => 'Not rated';

  @override
  String get medicationsTitle => 'Medications';

  @override
  String medicationActiveTab(int count) {
    return 'Active ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'Past ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'No active medication courses.\nStart one with the + button.';

  @override
  String get medicationNoPastCourses => 'No past courses yet.';

  @override
  String medicationTimesGiven(int count) {
    return 'Given $count×';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'Last: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'Next due $time';
  }

  @override
  String get medicationEndCourse => 'End course';

  @override
  String feedLastSideHint(String side) {
    return 'Last time: $side';
  }

  @override
  String get feedSideLeft => 'Left';

  @override
  String get feedSideRight => 'Right';

  @override
  String get feedSideBoth => 'Both';

  @override
  String get feedSideLeftMinutes => 'Left (min)';

  @override
  String get feedSideRightMinutes => 'Right (min)';

  @override
  String get timeAgoJustNow => 'Just now';

  @override
  String get timeUntilOverdue => 'Overdue';

  @override
  String timeUntilMinutes(int count) {
    return 'in ${count}m';
  }

  @override
  String timeUntilHours(int count) {
    return 'in ${count}h';
  }

  @override
  String timeUntilDays(int count) {
    return 'in ${count}d';
  }

  @override
  String get timerDiscardTitle => 'Discard this timer?';

  @override
  String get timerDiscard => 'Discard';

  @override
  String timerFeedingRunning(String side) {
    return 'Feeding · $side';
  }

  @override
  String get timerSleepRunning => 'Sleep timer running';

  @override
  String get timerSwitchSide => 'Switch side';

  @override
  String get timerStop => 'Stop';

  @override
  String get sinceLastFeed => 'Last feed';

  @override
  String get sinceLastDiaper => 'Last diaper';

  @override
  String get sinceAwake => 'Awake';

  @override
  String get sinceAsleep => 'Asleep';

  @override
  String nextDoseDue(String name) {
    return '$name due';
  }

  @override
  String get weighConditionNaked => 'Naked';

  @override
  String get weighConditionDiaper => 'Diaper only';

  @override
  String get weighConditionLightClothes => 'Light clothes';

  @override
  String get weighConditionDressed => 'Dressed';

  @override
  String get weighCondition => 'Weighed wearing';

  @override
  String get growthMeasurementsOptional => 'Other measurements (optional)';

  @override
  String get growthHeightCm => 'Height (cm)';

  @override
  String get growthHeadCm => 'Head circumference (cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'Last time was weighed $condition — the difference may not be just growth';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm cm';
  }

  @override
  String growthHeadValue(String cm) {
    return 'Head $cm cm';
  }

  @override
  String get growthHeightOverTime => 'Height over time';

  @override
  String get growthHeadOverTime => 'Head circumference over time';

  @override
  String get graphsRecentWeighIns => 'Recent weigh-ins';

  @override
  String get solidsAmountFewSpoons => 'A few spoons';

  @override
  String get solidsAmountHalf => 'Half a portion';

  @override
  String get solidsAmountFull => 'Full portion';

  @override
  String get solidsAmountTaste => 'Just a taste';

  @override
  String get solidsReactionMild => 'Mild reaction';

  @override
  String get solidsReactionAllergic => 'Allergic reaction';

  @override
  String get solidsReactionNone => 'No reaction';

  @override
  String get solidsEditTitle => 'Edit solid food';

  @override
  String get solidsLogTitle => 'Log solid food';

  @override
  String get solidsFoodsLabel => 'Foods';

  @override
  String get solidsAddFoodHint => 'Add a food';

  @override
  String get solidsAmount => 'Amount';

  @override
  String get solidsLiked => 'How did they like it?';

  @override
  String get solidsReaction => 'Reaction';

  @override
  String get solidsNotesOptional => 'Notes (optional)';

  @override
  String get foodsTitle => 'Foods tried';

  @override
  String get foodsEmpty => 'No solid foods logged yet.';

  @override
  String get foodsAllergensNotYet => 'Common allergens not yet introduced';

  @override
  String foodsTriedCount(int count) {
    return '$count foods tried';
  }

  @override
  String foodsFirstTried(String date) {
    return 'First: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'Solid food';

  @override
  String get feedAmountOz => 'Amount (oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'Remind me $interval after the last feed';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'Remind me $interval after the last diaper';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'Every $interval';
  }

  @override
  String get notifIntervalTitle => 'Reminder interval';

  @override
  String get notifIntervalHours => 'Hours';

  @override
  String get notifIntervalMinutes => 'Minutes';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'At least $minutes minutes';
  }

  @override
  String get settingsFeeding => 'Feeding';

  @override
  String get settingsTrackBottles => 'Track bottles';

  @override
  String get settingsTrackBottlesDesc => 'Pick which bottle was used, and how much was prepared vs drunk';

  @override
  String get bottlesTitle => 'My bottles';

  @override
  String get bottlesEmpty => 'No bottles yet.\nAdd the bottles you use so you can pick one when logging a feed.';

  @override
  String get bottleAdd => 'Add bottle';

  @override
  String get bottleEdit => 'Edit bottle';

  @override
  String get bottleLabel => 'Label / number (e.g. #3)';

  @override
  String get bottleBrand => 'Brand / type (optional)';

  @override
  String get bottleCapacity => 'Capacity (optional)';

  @override
  String get bottleNipple => 'Nipple size / flow (optional)';

  @override
  String get bottleMaterial => 'Material';

  @override
  String get bottleRetired => 'Retired';

  @override
  String get bottleRetire => 'Retire';

  @override
  String get bottleUnretire => 'Use again';

  @override
  String bottleDeleteTitle(String name) {
    return 'Delete $name?';
  }

  @override
  String get bottleDeleteBody => 'Past feeds keep their amounts but will no longer show this bottle. To hide it from the picker but keep history, use Retire instead.';

  @override
  String get feedPrepared => 'Prepared';

  @override
  String get feedDrank => 'Drank';

  @override
  String feedLeftover(String amount) {
    return '$amount left over';
  }

  @override
  String get feedDrankMoreThanPrepared => 'More than was prepared?';

  @override
  String get feedWhichBottle => 'Which bottle?';

  @override
  String get feedNoBottlesYet => 'No bottles yet — add them in Settings → My bottles.';

  @override
  String get photoPrivacyTitle => 'Your photos stay on this phone';

  @override
  String get photoPrivacyBody => 'Photos are saved only inside this app on this device. The app has no internet access, so nothing is ever uploaded or shared unless you export a backup yourself.\n\nAndroid may ask for camera access the first time you take a photo.';

  @override
  String get photoPrivacyContinue => 'Continue';

  @override
  String get photoTakePhoto => 'Take a photo';

  @override
  String get photoChooseFromGallery => 'Choose from gallery';

  @override
  String get photoCaption => 'Caption';

  @override
  String get photoCompare => 'First vs latest';

  @override
  String get photoAddOtherDay => 'Add for another day';

  @override
  String get photoEmpty => 'No photos yet.\nTake one photo a day and watch your baby grow.';

  @override
  String get photoToday => 'Today\'s photo';

  @override
  String get photoAddToday => 'Add today\'s photo';

  @override
  String get photoReplace => 'Replace';

  @override
  String get photoDeleteTitle => 'Delete this photo?';

  @override
  String get ageBeforeBirth => 'Before birth';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days old',
      one: '1 day old',
      zero: 'Birth day',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months mo $days d';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years yr $months mo';
  }

  @override
  String get navMemories => 'Memories';

  @override
  String get memoriesTabPhotos => 'Photos';

  @override
  String get milestoneNoAchievedHint => 'Tap \"Upcoming\" to log a preset,\nor use the button below for a custom one.';

  @override
  String get skinTitle => 'Skin conditions';

  @override
  String get skinNew => 'New skin condition';

  @override
  String get skinEdit => 'Edit skin condition';

  @override
  String skinTabActive(int count) {
    return 'Active ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'Healed ($count)';
  }

  @override
  String get skinEmptyActive => 'No skin conditions being tracked.\nTap + to start one — you can add a photo each day to show the doctor how it\'s changing.';

  @override
  String get skinEmptyHealed => 'Nothing healed yet.';

  @override
  String get skinUpdateDue => 'Update today';

  @override
  String skinSince(String date) {
    return 'Since $date';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return 'Healed $date';
  }

  @override
  String skinReminderAt(String time) {
    return 'Daily reminder at $time';
  }

  @override
  String get skinSeverityTrend => 'Severity over time';

  @override
  String get skinNoUpdates => 'No updates yet. Add today\'s to start the timeline.';

  @override
  String get skinExportPdf => 'Export for doctor (PDF)';

  @override
  String get skinMarkHealed => 'Mark healed';

  @override
  String get skinReopen => 'Mark active again';

  @override
  String get skinUpdateToday => 'Add today\'s update';

  @override
  String get skinEditToday => 'Edit today\'s update';

  @override
  String skinDeleteTitle(String name) {
    return 'Delete $name and all its updates?';
  }

  @override
  String get skinDeleteUpdateTitle => 'Delete this update?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'Treatment: $treatment';
  }

  @override
  String get skinName => 'Condition *';

  @override
  String get skinBodyArea => 'Where on the body?';

  @override
  String get skinBegan => 'Began on';

  @override
  String get skinRemindDaily => 'Remind me to update it daily';

  @override
  String get skinReminderTime => 'Reminder time';

  @override
  String get skinUpdateTitle => 'Skin update';

  @override
  String get skinSeverity => 'How does it look?';

  @override
  String get skinSeverity0 => '0 · Clear';

  @override
  String get skinSeverity1 => '1 · Mild';

  @override
  String get skinSeverity2 => '2 · Moderate';

  @override
  String get skinSeverity3 => '3 · Severe';

  @override
  String get skinSeverity4 => '4 · Very severe';

  @override
  String get skinTreatment => 'Treatment (optional)';

  @override
  String get skinTreatmentHint => 'e.g. moisturiser, hydrocortisone 1%';

  @override
  String get skinAddPhoto => 'Add a photo';

  @override
  String get skinCardNone => 'Track a rash, eczema or other skin condition day by day, with photos for the doctor';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count need today\'s update',
      one: '1 needs today\'s update',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'Preparing backup…';

  @override
  String get backupFailed => 'Couldn\'t create the backup.';

  @override
  String get backupSavedTo => 'Backup saved to:';

  @override
  String get backupShareSubject => 'Baby Tracker backup';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Includes $count photos.',
      one: 'Includes 1 photo.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'Feed';

  @override
  String get widgetStopFeed => 'Stop feed';

  @override
  String get widgetDiaper => 'Diaper';

  @override
  String get widgetSleep => 'Sleep';

  @override
  String get widgetWakeUp => 'Woke up';

  @override
  String widgetFeedingFor(String duration) {
    return 'Feeding $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'Fed $ago';
  }

  @override
  String get widgetNoFeedsYet => 'No feeds yet';

  @override
  String widgetChangedAgo(String ago) {
    return 'Changed $ago';
  }

  @override
  String get widgetNoDiapersYet => 'No diapers yet';

  @override
  String widgetAsleepFor(String duration) {
    return 'Asleep $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'Awake since $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Stop the sleep timer first';

  @override
  String get widgetStopFeedFirst => 'Stop the feeding timer first';
}
