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
  String get exportJson => 'Sicherung exportieren';

  @override
  String get exportJsonDesc => 'Alle Daten und Fotos in einer .zip-Datei';

  @override
  String get exportPdf => 'Als PDF exportieren';

  @override
  String get exportPdfDesc => 'Menschenlesbare Zusammenfassung für Ihren Kinderarzt';

  @override
  String get importJson => 'Sicherung wiederherstellen';

  @override
  String get importJsonDesc => 'Aus einer .zip-Sicherung (oder einem älteren .json-Export)';

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
  String get settingsVolumeUnit => 'Einheit für Milchmenge';

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
  String get tipExportDataDesc => 'Tippe auf Start auf das Teilen-Symbol, um alle Daten und Fotos in einer Datei zu sichern.';

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
  String get graphsMilkPerDayMl => 'Milch pro Tag (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milch pro Tag (oz)';

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
  String get summaryMilkLabelMl => 'Milch ml';

  @override
  String get summaryMilkLabelOz => 'Milch oz';

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
  String get medicationEditTitle => 'Medikament bearbeiten';

  @override
  String get medicationLogTitle => 'Medikament erfassen';

  @override
  String get medicationYourCourses => 'Deine Behandlungen';

  @override
  String get medicationManageCourses => 'Behandlungen verwalten';

  @override
  String get medicationNameRequired => 'Name des Medikaments *';

  @override
  String get medicationDosageWarning => 'Halte dich immer an die Dosierung für Gewicht/Alter. Die empfohlene Häufigkeit nicht überschreiten.';

  @override
  String get medicationNotesOptional => 'Notizen (optional)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vor $count Minuten',
      one: 'vor 1 Minute',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vor $count Stunden',
      one: 'vor 1 Stunde',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vor $count Tagen',
      one: 'vor 1 Tag',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'Zuletzt gegeben $ago';
  }

  @override
  String get medicationNeverGiven => 'Noch nicht gegeben';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Dosen heute',
      one: '1 Dosis heute',
      zero: 'Heute keine Dosis',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'Die nächste Dosis ist erst $hours Std. nach der letzten fällig';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'Das Tageslimit von $max für diese Behandlung ist bereits erreicht';
  }

  @override
  String get medicationEditCourse => 'Behandlung bearbeiten';

  @override
  String get medicationNewCourse => 'Neue Behandlung';

  @override
  String get medicationReasonOptional => 'Grund (optional)';

  @override
  String get medicationIntervalHoursOptional => 'Wiederholen alle (Stunden, optional)';

  @override
  String get medicationMaxPerDayOptional => 'Max. Dosen pro Tag (optional)';

  @override
  String get medicationRemindNextDose => 'Erinnere mich, wenn die nächste Dosis fällig ist';

  @override
  String medicationEndCourseTitle(String name) {
    return '$name beenden?';
  }

  @override
  String get medicationEndCoursePrompt => 'Wie ist es gelaufen?';

  @override
  String get medicationDeleteCourseTitle => 'Diese Behandlung löschen?';

  @override
  String get medicationResultWorked => 'Hat geholfen';

  @override
  String get medicationResultPartlyWorked => 'Hat teilweise geholfen';

  @override
  String get medicationResultDidntWork => 'Hat nicht geholfen';

  @override
  String get medicationResultSideEffects => 'Nebenwirkungen';

  @override
  String get medicationResultNone => 'Nicht bewertet';

  @override
  String get medicationsTitle => 'Medikamente';

  @override
  String medicationActiveTab(int count) {
    return 'Aktiv ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'Beendet ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'Keine aktiven Behandlungen.\nStarte eine mit der +-Taste.';

  @override
  String get medicationNoPastCourses => 'Noch keine beendeten Behandlungen.';

  @override
  String medicationTimesGiven(int count) {
    return '$count× gegeben';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'Zuletzt: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'Nächste fällig $time';
  }

  @override
  String get medicationEndCourse => 'Behandlung beenden';

  @override
  String feedLastSideHint(String side) {
    return 'Letztes Mal: $side';
  }

  @override
  String get feedSideLeft => 'Links';

  @override
  String get feedSideRight => 'Rechts';

  @override
  String get feedSideBoth => 'Beide';

  @override
  String get feedSideLeftMinutes => 'Links (Min.)';

  @override
  String get feedSideRightMinutes => 'Rechts (Min.)';

  @override
  String get timeAgoJustNow => 'Gerade eben';

  @override
  String get timeUntilOverdue => 'Überfällig';

  @override
  String timeUntilMinutes(int count) {
    return 'in $count Min.';
  }

  @override
  String timeUntilHours(int count) {
    return 'in $count Std.';
  }

  @override
  String timeUntilDays(int count) {
    return 'in $count T.';
  }

  @override
  String get timerDiscardTitle => 'Diesen Timer verwerfen?';

  @override
  String get timerDiscard => 'Verwerfen';

  @override
  String timerFeedingRunning(String side) {
    return 'Stillen · $side';
  }

  @override
  String get timerSleepRunning => 'Schlaf-Timer läuft';

  @override
  String get timerSwitchSide => 'Seite wechseln';

  @override
  String get timerStop => 'Stopp';

  @override
  String get sinceLastFeed => 'Letzte Mahlzeit';

  @override
  String get sinceLastDiaper => 'Letzte Windel';

  @override
  String get sinceAwake => 'Wach';

  @override
  String get sinceAsleep => 'Schläft';

  @override
  String nextDoseDue(String name) {
    return '$name fällig';
  }

  @override
  String get weighConditionNaked => 'Nackt';

  @override
  String get weighConditionDiaper => 'Nur Windel';

  @override
  String get weighConditionLightClothes => 'Leichte Kleidung';

  @override
  String get weighConditionDressed => 'Angezogen';

  @override
  String get weighCondition => 'Gewogen mit';

  @override
  String get growthMeasurementsOptional => 'Weitere Maße (optional)';

  @override
  String get growthHeightCm => 'Größe (cm)';

  @override
  String get growthHeadCm => 'Kopfumfang (cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'Letztes Mal gewogen: $condition – der Unterschied ist evtl. nicht nur Wachstum';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm cm';
  }

  @override
  String growthHeadValue(String cm) {
    return 'Kopf $cm cm';
  }

  @override
  String get growthHeightOverTime => 'Größe im Verlauf';

  @override
  String get growthHeadOverTime => 'Kopfumfang im Verlauf';

  @override
  String get graphsRecentWeighIns => 'Letzte Wiegungen';

  @override
  String get solidsAmountFewSpoons => 'Ein paar Löffel';

  @override
  String get solidsAmountHalf => 'Halbe Portion';

  @override
  String get solidsAmountFull => 'Ganze Portion';

  @override
  String get solidsAmountTaste => 'Nur probiert';

  @override
  String get solidsReactionMild => 'Leichte Reaktion';

  @override
  String get solidsReactionAllergic => 'Allergische Reaktion';

  @override
  String get solidsReactionNone => 'Keine Reaktion';

  @override
  String get solidsEditTitle => 'Beikost bearbeiten';

  @override
  String get solidsLogTitle => 'Beikost erfassen';

  @override
  String get solidsFoodsLabel => 'Lebensmittel';

  @override
  String get solidsAddFoodHint => 'Lebensmittel hinzufügen';

  @override
  String get solidsAmount => 'Menge';

  @override
  String get solidsLiked => 'Wie hat es geschmeckt?';

  @override
  String get solidsReaction => 'Reaktion';

  @override
  String get solidsNotesOptional => 'Notizen (optional)';

  @override
  String get foodsTitle => 'Probierte Lebensmittel';

  @override
  String get foodsEmpty => 'Noch keine Beikost erfasst.';

  @override
  String get foodsAllergensNotYet => 'Häufige Allergene, noch nicht eingeführt';

  @override
  String foodsTriedCount(int count) {
    return '$count Lebensmittel probiert';
  }

  @override
  String foodsFirstTried(String date) {
    return 'Erstmals: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'Beikost';

  @override
  String get feedAmountOz => 'Menge (oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'Erinnere mich $interval nach der letzten Mahlzeit';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'Erinnere mich $interval nach der letzten Windel';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'Alle $interval';
  }

  @override
  String get notifIntervalTitle => 'Erinnerungsintervall';

  @override
  String get notifIntervalHours => 'Stunden';

  @override
  String get notifIntervalMinutes => 'Minuten';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'Mindestens $minutes Minuten';
  }

  @override
  String get settingsFeeding => 'Füttern';

  @override
  String get settingsTrackBottles => 'Flaschen erfassen';

  @override
  String get settingsTrackBottlesDesc => 'Auswählen, welche Flasche benutzt wurde und wie viel zubereitet bzw. getrunken wurde';

  @override
  String get bottlesTitle => 'Meine Flaschen';

  @override
  String get bottlesEmpty => 'Noch keine Flaschen.\nFüge deine Flaschen hinzu, um beim Erfassen einer Mahlzeit eine auszuwählen.';

  @override
  String get bottleAdd => 'Flasche hinzufügen';

  @override
  String get bottleEdit => 'Flasche bearbeiten';

  @override
  String get bottleLabel => 'Bezeichnung / Nummer (z. B. #3)';

  @override
  String get bottleBrand => 'Marke / Typ (optional)';

  @override
  String get bottleCapacity => 'Fassungsvermögen (optional)';

  @override
  String get bottleNipple => 'Saugergröße / Durchfluss (optional)';

  @override
  String get bottleMaterial => 'Material';

  @override
  String get bottleRetired => 'Ausgemustert';

  @override
  String get bottleRetire => 'Ausmustern';

  @override
  String get bottleUnretire => 'Wieder verwenden';

  @override
  String bottleDeleteTitle(String name) {
    return '$name löschen?';
  }

  @override
  String get bottleDeleteBody => 'Frühere Mahlzeiten behalten ihre Mengen, zeigen diese Flasche aber nicht mehr an. Um sie nur aus der Auswahl auszublenden und den Verlauf zu behalten, nutze stattdessen „Ausmustern“.';

  @override
  String get feedPrepared => 'Zubereitet';

  @override
  String get feedDrank => 'Getrunken';

  @override
  String feedLeftover(String amount) {
    return '$amount übrig';
  }

  @override
  String get feedDrankMoreThanPrepared => 'Mehr als zubereitet?';

  @override
  String get feedWhichBottle => 'Welche Flasche?';

  @override
  String get feedNoBottlesYet => 'Noch keine Flaschen – füge sie unter Einstellungen → Meine Flaschen hinzu.';

  @override
  String get photoPrivacyTitle => 'Deine Fotos bleiben auf diesem Handy';

  @override
  String get photoPrivacyBody => 'Fotos werden nur in dieser App auf diesem Gerät gespeichert. Die App hat keinen Internetzugang, daher wird nichts hochgeladen oder geteilt, außer du exportierst selbst eine Sicherung.\n\nAndroid fragt beim ersten Foto eventuell nach Kamerazugriff.';

  @override
  String get photoPrivacyContinue => 'Weiter';

  @override
  String get photoTakePhoto => 'Foto aufnehmen';

  @override
  String get photoChooseFromGallery => 'Aus der Galerie wählen';

  @override
  String get photoCaption => 'Bildunterschrift';

  @override
  String get photoCompare => 'Erstes vs. neuestes';

  @override
  String get photoAddOtherDay => 'Für einen anderen Tag hinzufügen';

  @override
  String get photoEmpty => 'Noch keine Fotos.\nMach jeden Tag ein Foto und sieh dein Baby wachsen.';

  @override
  String get photoToday => 'Foto von heute';

  @override
  String get photoAddToday => 'Foto von heute hinzufügen';

  @override
  String get photoReplace => 'Ersetzen';

  @override
  String get photoDeleteTitle => 'Dieses Foto löschen?';

  @override
  String get ageBeforeBirth => 'Vor der Geburt';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage alt',
      one: '1 Tag alt',
      zero: 'Tag der Geburt',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months Mon. $days T.';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years J. $months Mon.';
  }

  @override
  String get navMemories => 'Erinnerungen';

  @override
  String get memoriesTabPhotos => 'Fotos';

  @override
  String get milestoneNoAchievedHint => 'Tippe auf „Anstehend“, um einen vorgegebenen zu erfassen,\noder nutze die Taste unten für einen eigenen.';

  @override
  String get skinTitle => 'Hautprobleme';

  @override
  String get skinNew => 'Neues Hautproblem';

  @override
  String get skinEdit => 'Hautproblem bearbeiten';

  @override
  String skinTabActive(int count) {
    return 'Aktiv ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'Abgeheilt ($count)';
  }

  @override
  String get skinEmptyActive => 'Es werden keine Hautprobleme verfolgt.\nTippe auf +, um eines anzulegen – du kannst jeden Tag ein Foto hinzufügen, um dem Arzt den Verlauf zu zeigen.';

  @override
  String get skinEmptyHealed => 'Noch nichts abgeheilt.';

  @override
  String get skinUpdateDue => 'Heute aktualisieren';

  @override
  String skinSince(String date) {
    return 'Seit $date';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage',
      one: '1 Tag',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return 'Abgeheilt am $date';
  }

  @override
  String skinReminderAt(String time) {
    return 'Tägliche Erinnerung um $time';
  }

  @override
  String get skinSeverityTrend => 'Schweregrad im Verlauf';

  @override
  String get skinNoUpdates => 'Noch keine Einträge. Füge den heutigen hinzu, um den Verlauf zu beginnen.';

  @override
  String get skinExportPdf => 'Für den Arzt exportieren (PDF)';

  @override
  String get skinMarkHealed => 'Als abgeheilt markieren';

  @override
  String get skinReopen => 'Wieder als aktiv markieren';

  @override
  String get skinUpdateToday => 'Heutigen Eintrag hinzufügen';

  @override
  String get skinEditToday => 'Heutigen Eintrag bearbeiten';

  @override
  String skinDeleteTitle(String name) {
    return '$name und alle Einträge löschen?';
  }

  @override
  String get skinDeleteUpdateTitle => 'Diesen Eintrag löschen?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'Behandlung: $treatment';
  }

  @override
  String get skinName => 'Hautproblem *';

  @override
  String get skinBodyArea => 'Wo am Körper?';

  @override
  String get skinBegan => 'Begonnen am';

  @override
  String get skinRemindDaily => 'Täglich ans Aktualisieren erinnern';

  @override
  String get skinReminderTime => 'Erinnerungszeit';

  @override
  String get skinUpdateTitle => 'Haut-Eintrag';

  @override
  String get skinSeverity => 'Wie sieht es aus?';

  @override
  String get skinSeverity0 => '0 · Abgeklungen';

  @override
  String get skinSeverity1 => '1 · Leicht';

  @override
  String get skinSeverity2 => '2 · Mittel';

  @override
  String get skinSeverity3 => '3 · Stark';

  @override
  String get skinSeverity4 => '4 · Sehr stark';

  @override
  String get skinTreatment => 'Behandlung (optional)';

  @override
  String get skinTreatmentHint => 'z. B. Feuchtigkeitscreme, Hydrocortison 1 %';

  @override
  String get skinAddPhoto => 'Foto hinzufügen';

  @override
  String get skinCardNone => 'Verfolge einen Ausschlag, ein Ekzem oder ein anderes Hautproblem Tag für Tag, mit Fotos für den Arzt';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count brauchen den heutigen Eintrag',
      one: '1 braucht den heutigen Eintrag',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'Sicherung wird vorbereitet …';

  @override
  String get backupFailed => 'Die Sicherung konnte nicht erstellt werden.';

  @override
  String get backupSavedTo => 'Sicherung gespeichert unter:';

  @override
  String get backupShareSubject => 'Baby-Tracker-Sicherung';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Enthält $count Fotos.',
      one: 'Enthält 1 Foto.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'Füttern';

  @override
  String get widgetStopFeed => 'Stillen beenden';

  @override
  String get widgetDiaper => 'Windel';

  @override
  String get widgetSleep => 'Schlaf';

  @override
  String get widgetWakeUp => 'Aufgewacht';

  @override
  String widgetFeedingFor(String duration) {
    return 'Stillt seit $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'Gefüttert $ago';
  }

  @override
  String get widgetNoFeedsYet => 'Noch keine Mahlzeiten';

  @override
  String widgetChangedAgo(String ago) {
    return 'Gewickelt $ago';
  }

  @override
  String get widgetNoDiapersYet => 'Noch keine Windeln';

  @override
  String widgetAsleepFor(String duration) {
    return 'Schläft seit $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'Aufgewacht $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Erst den Schlaf-Timer stoppen';

  @override
  String get widgetStopFeedFirst => 'Erst den Still-Timer stoppen';

  @override
  String quickAddTitle(String name) {
    return 'Hinzufügen für $name';
  }

  @override
  String get quickAddOpenApp => 'App öffnen';

  @override
  String get foodPeanut => 'Erdnuss';

  @override
  String get foodEgg => 'Ei';

  @override
  String get foodDairy => 'Milchprodukte';

  @override
  String get foodWheat => 'Weizen';

  @override
  String get foodSoy => 'Soja';

  @override
  String get foodFish => 'Fisch';

  @override
  String get foodShellfish => 'Schalentiere';

  @override
  String get foodTreeNuts => 'Baumnüsse';

  @override
  String get foodSesame => 'Sesam';

  @override
  String get foodBanana => 'Banane';

  @override
  String get foodAvocado => 'Avocado';

  @override
  String get foodSweetPotato => 'Süßkartoffel';

  @override
  String get foodRiceCereal => 'Reisbrei';

  @override
  String get foodOatmeal => 'Haferbrei';

  @override
  String get foodCarrot => 'Karotte';

  @override
  String get foodApple => 'Apfel';

  @override
  String get foodPea => 'Erbse';

  @override
  String get symptomRash => 'Ausschlag';

  @override
  String get symptomHives => 'Nesselsucht';

  @override
  String get symptomVomiting => 'Erbrechen';

  @override
  String get symptomDiarrhea => 'Durchfall';

  @override
  String get symptomSwelling => 'Schwellung';

  @override
  String get doseUnitDrops => 'Tropfen';

  @override
  String get doseUnitTablets => 'Tabletten';

  @override
  String get bottleMaterialPlastic => 'Kunststoff';

  @override
  String get bottleMaterialGlass => 'Glas';

  @override
  String get bottleMaterialSilicone => 'Silikon';

  @override
  String get bottleMaterialSteel => 'Edelstahl';

  @override
  String get visitReasonRoutine => 'Vorsorgeuntersuchung';

  @override
  String get visitReasonSick => 'Wegen Krankheit';

  @override
  String get visitReasonVaccination => 'Impfung';

  @override
  String get visitReasonSpecialist => 'Facharzt';

  @override
  String get visitReasonFollowUp => 'Kontrolltermin';

  @override
  String get visitReasonOther => 'Sonstiges';

  @override
  String get pooColourPale => 'Blass';

  @override
  String get noteTagHappyDay => 'Fröhlicher Tag';

  @override
  String get noteTagSleptWell => 'Gut geschlafen';

  @override
  String get noteTagFussy => 'Quengelig';

  @override
  String get noteTagNotWell => 'Nicht wohlgefühlt';

  @override
  String get noteTagFirstTime => 'Zum ersten Mal!';

  @override
  String get noteTagTeething => 'Zahnen';

  @override
  String get noteTagGrowthSpurt => 'Wachstumsschub';

  @override
  String get noteTagMilestone => 'Meilenstein';

  @override
  String get tummyTimeNotesHint => 'z. B. hat Spaß gemacht, quengelig …';

  @override
  String get skinSuggestEczema => 'Ekzem';

  @override
  String get skinSuggestDiaperRash => 'Windeldermatitis';

  @override
  String get skinSuggestCradleCap => 'Milchschorf';

  @override
  String get skinSuggestBabyAcne => 'Babyakne';

  @override
  String get skinSuggestHeatRash => 'Hitzepickel';

  @override
  String get skinSuggestDrySkin => 'Trockene Haut';

  @override
  String get bodyFace => 'Gesicht';

  @override
  String get bodyScalp => 'Kopfhaut';

  @override
  String get bodyNeck => 'Hals';

  @override
  String get bodyChest => 'Brust';

  @override
  String get bodyBack => 'Rücken';

  @override
  String get bodyArms => 'Arme';

  @override
  String get bodyHands => 'Hände';

  @override
  String get bodyDiaperArea => 'Windelbereich';

  @override
  String get bodyLegs => 'Beine';

  @override
  String get bodyFeet => 'Füße';

  @override
  String get medSuggestGripeWater => 'Kümmelzäpfchen / Gripe Water';

  @override
  String get medSuggestVitaminD => 'Vitamin D';

  @override
  String get medSuggestIronDrops => 'Eisentropfen';

  @override
  String get medSuggestAntibiotic => 'Antibiotikum';

  @override
  String get medSuggestProbiotic => 'Probiotikum';

  @override
  String vaccinePageTitle(String name) {
    return '$name – Impfungen';
  }

  @override
  String get vaccineDeleteTitle => 'Impfeintrag löschen?';

  @override
  String get vaccineSiteHint => 'z. B. linker Oberschenkel';

  @override
  String get vaccineNotesHint => 'z. B. leichtes Fieber, quengelig, keine Reaktion …';

  @override
  String get vaccineNoGivenHint => 'Nutze die +-Taste oder tippe im Tab „Impfplan“ auf „Als gegeben markieren“.';

  @override
  String get vaccineAgeBirth => 'Geburt';

  @override
  String vaccineAgeMonths(String range) {
    return '$range Monate';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range Monate (jährlich)';
  }

  @override
  String get whoTabHeight => 'Größe';

  @override
  String get whoTabHead => 'Kopf';

  @override
  String get whoChartFor => 'Kurve für:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 Monate)';
  }

  @override
  String get whoNoDataPoints => 'Noch keine Messwerte. Erfasse Maße, um dein Baby in der Kurve zu sehen.';

  @override
  String get whoLatestMeasurement => 'Letzte Messung';

  @override
  String whoApproxPercentile(String value) {
    return 'Ungefähre Perzentile: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return 'zwischen $low und $high';
  }

  @override
  String whoMonthsOld(String months) {
    return '$months Monate alt';
  }

  @override
  String get whoDisclaimer => 'Diese Kurven dienen nur zur Information. Lass sie immer von deinem Kinderarzt beurteilen.';

  @override
  String get whoMedian => 'P50 (Median)';

  @override
  String get notifChannelName => 'Baby-Tracker-Erinnerungen';

  @override
  String get notifChannelDesc => 'Erinnerungen für Füttern, Windeln, Medikamente und Hautkontrollen';

  @override
  String get notifFeedTitle => 'Zeit zum Füttern!';

  @override
  String notifFeedBody(String interval) {
    return 'In den letzten $interval wurde keine Mahlzeit erfasst.';
  }

  @override
  String get notifDiaperTitle => 'Windelcheck!';

  @override
  String notifDiaperBody(String interval) {
    return 'In den letzten $interval wurde kein Windelwechsel erfasst.';
  }

  @override
  String notifDoseTitle(String name) {
    return 'Dosis fällig: $name';
  }

  @override
  String notifDoseBody(String name) {
    return 'Zeit für die nächste Dosis $name.';
  }

  @override
  String notifSkinTitle(String name) {
    return 'Hautkontrolle: $name';
  }

  @override
  String get notifSkinBody => 'Füge den heutigen Eintrag hinzu (gern mit Foto).';

  @override
  String get timerFeedingNotif => 'Still-Timer läuft';

  @override
  String intervalMinutes(String m) {
    return '$m Min.';
  }

  @override
  String intervalHours(String h) {
    return '$h Std.';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h Std. $m Min.';
  }

  @override
  String get settingsRtlActive => 'Rechts-nach-links-Layout aktiv';

  @override
  String get measurementHeightIn => 'Länge / Größe (in)';

  @override
  String get measurementHeadIn => 'Kopfumfang (in)';

  @override
  String get growthHeightIn => 'Größe (in)';

  @override
  String get growthHeadIn => 'Kopfumfang (in)';

  @override
  String growthHeightValueIn(String value) {
    return '$value in';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'Kopf $value in';
  }

  @override
  String get settingsLengthUnitNote => 'Längen folgen der Gewichtseinheit (cm bei kg, Zoll bei lbs)';

  @override
  String get formulaStoreBrand => 'Eigenmarke';
}
