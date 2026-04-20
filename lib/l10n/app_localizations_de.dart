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
  String get cannotUndo => 'Diese Aktion kann nicht rückgängig gemacht werden';

  @override
  String get noData => 'Keine Daten';

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
  String get rashRecorded => 'Ausschlag dokumentiert';

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
  String get tipMultipleFeeds => 'Mehrere Fütterungen erfassen';

  @override
  String get tipMultipleFeedsDesc => 'Tippe im Fütterungsformular auf „Weitere Fütterung hinzufügen“, um Stillen und Flasche in einem Schritt zu erfassen';

  @override
  String get tipExportData => 'Daten exportieren';

  @override
  String get tipExportDataDesc => 'Verwende das Teilen-Symbol auf der Startseite, um alle Daten als JSON zu exportieren';

  @override
  String get tipTapToEdit => 'Tippe auf einen beliebigen Eintrag, um ihn zu bearbeiten';

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
  String get noDetails => 'Keine Details';

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
