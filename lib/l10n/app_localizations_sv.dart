// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Baby tracker';

  @override
  String get navHome => 'Hem';

  @override
  String get navGraphs => 'Diagram';

  @override
  String get navSettings => 'Inställningar';

  @override
  String get actionCancel => 'Avbryt';

  @override
  String get actionSave => 'Spara';

  @override
  String get actionUpdate => 'Uppdatera';

  @override
  String get actionDelete => 'Radera';

  @override
  String get actionAdd => 'Lägg till';

  @override
  String get actionEdit => 'Redigera';

  @override
  String get actionClose => 'Stäng';

  @override
  String get actionExport => 'Exportera data';

  @override
  String get actionAddDay => 'Lägg till dag';

  @override
  String get cannotUndo => 'Den här åtgärden kan inte ångras';

  @override
  String get noData => 'Inga data';

  @override
  String get homeTitle => 'Spårare';

  @override
  String get feedsToday => 'Dagens matningar';

  @override
  String get diapersToday => 'Dagens blöjor';

  @override
  String get sleepToday => 'Dagens sömn';

  @override
  String todayLabel(String date) {
    return 'Idag — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count händelser',
      one: '1 händelse',
      zero: 'Inga händelser',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Radera den här dagen?';

  @override
  String deleteDayContent(String date) {
    return 'Radera $date och alla dess poster? Den här åtgärden kan inte ångras';
  }

  @override
  String get noEntriesYet => 'Inga poster ännu';

  @override
  String get addEntry => 'Lägg till post';

  @override
  String get deleteEntryTitle => 'Radera den här posten?';

  @override
  String get entryTypeDiaper => 'Blöjbyte';

  @override
  String get entryTypeFeeding => 'Matning';

  @override
  String get entryTypeSleep => 'Sömn';

  @override
  String get entryTypeTemperature => 'Temperatur';

  @override
  String get entryTypeWeight => 'Vikt';

  @override
  String get diaperPeePoo => 'Blöja — kiss + bajs';

  @override
  String get diaperPee => 'Blöja — bara kiss';

  @override
  String get diaperPoo => 'Blöja — bara bajs';

  @override
  String get diaperChange => 'Blöjbyte';

  @override
  String get editDiaper => 'Redigera blöja';

  @override
  String get diaperContents => 'Innehåll';

  @override
  String get diaperNone => 'Inget';

  @override
  String get diaperPeeLabel => 'Kiss';

  @override
  String get diaperPooLabel => 'Bajs';

  @override
  String get diaperBoth => 'Båda';

  @override
  String get diaperConsistency => 'Konsistens';

  @override
  String get consistencyHard => 'Hård / Klikkig';

  @override
  String get consistencyHardHint => 'Förstoppning';

  @override
  String get consistencyFirm => 'Fast';

  @override
  String get consistencyFirmHint => 'Lätt fast';

  @override
  String get consistencyNormal => 'Normal';

  @override
  String get consistencyNormalHint => 'Hälsosam';

  @override
  String get consistencySoft => 'Mjuk';

  @override
  String get consistencySoftHint => 'Lätt mjuk';

  @override
  String get consistencyLoose => 'Grötlik / Halvflytande';

  @override
  String get consistencyLooseHint => 'Observera';

  @override
  String get consistencyWatery => 'Vattnig';

  @override
  String get consistencyWateryHint => 'Diarré';

  @override
  String get warnConstipation => 'Tecken på förstoppning — övervaka noga';

  @override
  String get warnDiarrhea => 'Tecken på diarré — övervaka noga';

  @override
  String get pooColourLabel => 'Färg (tryck för att välja)';

  @override
  String get pooColourAbnormal => '⚠️ Onormal (blek)';

  @override
  String get pooColourNormal => '✅ Normal';

  @override
  String pooColourSelected(String label) {
    return 'Vald: $label';
  }

  @override
  String get diaperSize => 'Blöjstorlek';

  @override
  String get diaperBrand => 'Märke';

  @override
  String get diaperBrandCustomLabel => 'Märkesnamn';

  @override
  String get rashPresent => 'Blöjutslag förekommer';

  @override
  String get rashPresentHint => 'Rodnad, irritation eller blöjutslag';

  @override
  String get rashCreamUsed => 'Kräm använd';

  @override
  String get rashCreamCustomLabel => 'Kräm/salvas namn';

  @override
  String get rashFollowUpTitle => '⚠️ Uppföljning av utslag';

  @override
  String get rashFollowUpQuestion => 'Den senaste blöjan registrerade utslag. Har det förbättrats?';

  @override
  String get rashImproved => 'Ja, förbättrats';

  @override
  String get rashNoChange => 'Ingen förändring / förvärrats';

  @override
  String get rashRecorded => 'Utslag registrerat';

  @override
  String get addFeeding => 'Lägg till matning';

  @override
  String get editFeeding => 'Redigera matning';

  @override
  String feedLabel(int number) {
    return 'Matning $number';
  }

  @override
  String get feedModeBottle => 'Flaska';

  @override
  String get feedModeSuckle => 'Amning';

  @override
  String get feedAmountMl => 'Mängd (ml)';

  @override
  String get feedType => 'Typ';

  @override
  String get feedBreastMilk => 'Bröstmjölk';

  @override
  String get feedFormula => 'Ersättning';

  @override
  String get feedFormulaBrand => 'Ersättningsmärke';

  @override
  String get feedFormulaBrandCustom => 'Märkesnamn';

  @override
  String get feedDurationMinutes => 'Varaktighet (minuter)';

  @override
  String get addAnotherFeed => 'Lägg till en matning till';

  @override
  String get bottleBreastMilk => 'Flaska — bröstmjölk';

  @override
  String get bottleFormula => 'Flaska — ersättning';

  @override
  String get breastfeedingSuckle => 'Amning (direkt)';

  @override
  String get logSleep => 'Registrera sömn';

  @override
  String get editSleep => 'Redigera sömn';

  @override
  String get sleepStart => 'Sömnstart';

  @override
  String get sleepWakeUp => 'Uppvaknande';

  @override
  String sleepDuration(String duration) {
    return 'Varaktighet: $duration';
  }

  @override
  String get sleepInvalidTimes => 'Ogiltiga tider';

  @override
  String get sleepWrapsNextDay => '(slutar följande dag)';

  @override
  String get sleepNotes => 'Anteckningar (valfritt)';

  @override
  String get sleepNotesHint => 'T.ex.: orolig, vaknade kort...';

  @override
  String get sleepNoNotes => 'Inga anteckningar';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}t ${m}min';
  }

  @override
  String get logTemperature => 'Registrera temperatur';

  @override
  String get editTemperature => 'Redigera temperatur';

  @override
  String get temperatureLabel => 'Temperatur';

  @override
  String get tempSeverityLow => 'Låg temperatur — observera';

  @override
  String get tempSeverityNormal => 'Normal temperatur';

  @override
  String get tempSeverityElevated => 'Lätt förhöjd — övervaka noga';

  @override
  String get tempSeverityFever => 'Feber — kontakta läkare';

  @override
  String get tempReference => 'Temperaturreferens';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ Vid feber hos spädbarn under 3 månader, kontakta alltid en barnläkare';

  @override
  String get tempLow => 'Låg';

  @override
  String get tempNormal => 'Normal';

  @override
  String get tempElevated => 'Förhöjd';

  @override
  String get tempFever => 'Feber';

  @override
  String get tempLatest => 'Senaste temperaturen';

  @override
  String get tempSummary => 'Temperatursammanfattning';

  @override
  String get tempFeverThreshold => 'Febergräns';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'Registrera vikt';

  @override
  String get editWeight => 'Redigera vikt';

  @override
  String get weightLabel => 'Vikt';

  @override
  String weightGain(String amount) {
    return '+$amount ökning';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount minskning';
  }

  @override
  String weightPrevious(String weight) {
    return 'Tidigare: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'Senaste registrering: $weight den $date';
  }

  @override
  String get weightLatest => 'Senaste vikten';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount under perioden';
  }

  @override
  String get settingsTitle => 'Inställningar';

  @override
  String get settingsAppearance => 'Utseende';

  @override
  String get settingsDarkMode => 'Mörkt läge';

  @override
  String get settingsDarkActive => 'Mörkt tema aktivt';

  @override
  String get settingsLightActive => 'Ljust tema aktivt';

  @override
  String get settingsUnits => 'Enheter';

  @override
  String get settingsWeightUnit => 'Viktenhet';

  @override
  String get settingsTempUnit => 'Temperatur enhet';

  @override
  String get settingsLanguage => 'Språk';

  @override
  String get settingsTips => 'Tips';

  @override
  String get tipSwitchBabies => 'Byt barn';

  @override
  String get tipSwitchBabiesDesc => 'Tryck på barnets avatar högst upp för att byta eller lägga till en profil';

  @override
  String get tipSwipeDelete => 'Svep åt vänster för att radera';

  @override
  String get tipSwipeDeleteDesc => 'Fungerar på dagskort och enskilda poster';

  @override
  String get tipMultipleFeeds => 'Registrera flera matningar';

  @override
  String get tipMultipleFeedsDesc => 'I matningsformuläret, tryck på \"Lägg till en matning till\" för att registrera amning och flaska på en gång';

  @override
  String get tipExportData => 'Exportera data';

  @override
  String get tipExportDataDesc => 'Använd delningsikonen på Hem för att exportera all data som JSON';

  @override
  String get tipTapToEdit => 'Tryck på valfri post för att redigera den';

  @override
  String get babiesTitle => 'Barn';

  @override
  String get addBaby => 'Lägg till barn';

  @override
  String get editProfile => 'Redigera profil';

  @override
  String get babyNameRequired => 'Namn *';

  @override
  String get babyDobOptional => 'Födelsedatum (valfritt)';

  @override
  String babyBornOn(String date) {
    return 'Född $date';
  }

  @override
  String get genderUnknown => 'Ej angivet';

  @override
  String get genderBoy => 'Pojke';

  @override
  String get genderGirl => 'Flicka';

  @override
  String get cannotDeleteOnlyProfile => 'Kan inte radera den enda barnprofilen';

  @override
  String deleteProfileTitle(String name) {
    return 'Radera $name?';
  }

  @override
  String get deleteProfileContent => 'All data för detta barn kommer att raderas permanent';

  @override
  String get graphsTitle => 'Diagram';

  @override
  String get graphsTabDaily => 'Dagligen';

  @override
  String get graphsTabGrowth => 'Tillväxt';

  @override
  String get graphsTabHealth => 'Hälsa';

  @override
  String get graphsTotalFeeds => 'Totalt antal matningar';

  @override
  String get graphsAvgPerDay => 'Medel/dag';

  @override
  String get graphsTotalDiapers => 'Blöjor';

  @override
  String get graphsTotalMilk => 'Total mjölk';

  @override
  String get graphsTotalSleep => 'Total sömn';

  @override
  String get graphsAvgSleep => 'Genomsnittlig sömn/dag';

  @override
  String get graphsFeedsPerDay => 'Matningar per dag';

  @override
  String get graphsDiapersPerDay => 'Blöjor per dag';

  @override
  String get graphsMilkPerDay => 'Mjölk per dag (ml)';

  @override
  String get graphsSleepPerDay => 'Sömn per dag (timmar)';

  @override
  String get graphsWeightOverTime => 'Vikt över tid';

  @override
  String get graphsTempOverTime => 'Temperatur över tid';

  @override
  String graphsMaxLabel(String value) {
    return 'Max: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Min: $value';
  }

  @override
  String get graphsNoWeightData => 'Inga viktposter ännu\nRegistrera vikt från en dags poster';

  @override
  String get graphsNoTempData => 'Inga temperaturposter ännu\nRegistrera temperatur från en dag';

  @override
  String get timeLabel => 'Tid';

  @override
  String get noColourRecorded => 'Ingen färg registrerad';

  @override
  String get noDetails => 'Inga detaljer';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count månader',
      one: '1 månad',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years år $months månader';
  }
}
