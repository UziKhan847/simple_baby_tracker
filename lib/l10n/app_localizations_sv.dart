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
  String get navMilestones => 'Milstolpar';

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
  String get actionLog => 'Logga';

  @override
  String get cannotUndo => 'Detta kan inte ångras.';

  @override
  String get noData => 'Inga data';

  @override
  String get noNotes => 'Inga anteckningar';

  @override
  String get noDetails => 'Inga detaljer';

  @override
  String get optional => '(valfritt)';

  @override
  String get homeTitle => 'Tracker';

  @override
  String get feedsToday => 'Matningar idag';

  @override
  String get diapersToday => 'Blöjor idag';

  @override
  String get sleepToday => 'Sömn idag';

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
      zero: 'inga händelser',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Radera dagen?';

  @override
  String deleteDayContent(String date) {
    return 'Ta bort $date och alla dess poster? Detta kan inte ångras.';
  }

  @override
  String get rashRecorded => 'Blöjeksem registrerat';

  @override
  String get noEntriesYet => 'Inga poster ännu';

  @override
  String get addEntry => 'Lägg till post';

  @override
  String get deleteEntryTitle => 'Radera post?';

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
  String get entryTypeTummyTime => 'Mage-tid';

  @override
  String get entryTypeMedication => 'Medicin';

  @override
  String get entryTypeDoctorVisit => 'Läkarbesök';

  @override
  String get entryTypeNote => 'Daglig anteckning / journal';

  @override
  String get entryTypePumping => 'Pumpningssession';

  @override
  String get entryTypeBath => 'Bad';

  @override
  String get diaperPeePoo => 'Blöja — kiss + bajs';

  @override
  String get diaperPee => 'Blöja — kiss';

  @override
  String get diaperPoo => 'Blöja — bajs';

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
  String get consistencyHard => 'Hård / pellets';

  @override
  String get consistencyHardHint => 'Förstoppning';

  @override
  String get consistencyFirm => 'Fast';

  @override
  String get consistencyFirmHint => 'Något fast';

  @override
  String get consistencyNormal => 'Normal';

  @override
  String get consistencyNormalHint => 'Hälsosam';

  @override
  String get consistencySoft => 'Mjuk';

  @override
  String get consistencySoftHint => 'Något mjuk';

  @override
  String get consistencyLoose => 'Lös / grötig';

  @override
  String get consistencyLooseHint => 'Observera';

  @override
  String get consistencyWatery => 'Vattnig';

  @override
  String get consistencyWateryHint => 'Diarré';

  @override
  String get warnConstipation => 'Tecken på förstoppning — övervaka noggrant';

  @override
  String get warnDiarrhea => 'Tecken på diarré — övervaka noggrant';

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
  String get rashPresent => 'Blöjeksem finns';

  @override
  String get rashPresentHint => 'Rodnad, irritation eller blöjeksem';

  @override
  String get rashCreamUsed => 'Eksemkräm använd';

  @override
  String get rashCreamCustomLabel => 'Kräm / salva namn';

  @override
  String get rashFollowUpTitle => '⚠️ Uppföljning av eksem';

  @override
  String get rashFollowUpQuestion => 'Den senaste blöjan hade ett noterat eksem. Har det förbättrats?';

  @override
  String get rashImproved => 'Ja, förbättrades';

  @override
  String get rashNoChange => 'Ingen förändring / sämre';

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
  String get feedModeSuckle => 'Amma';

  @override
  String get feedAmountMl => 'Mängd (ml)';

  @override
  String get feedType => 'Typ';

  @override
  String get feedBreastMilk => 'Bröstmjölk';

  @override
  String get feedFormula => 'Modersmjölksersättning';

  @override
  String get feedFormulaBrand => 'Märke för ersättning';

  @override
  String get feedFormulaBrandCustom => 'Märkesnamn för ersättning';

  @override
  String get feedDurationMinutes => 'Längd (minuter)';

  @override
  String get addAnotherFeed => 'Lägg till en matning till';

  @override
  String get bottleBreastMilk => 'Flaska — bröstmjölk';

  @override
  String get bottleFormula => 'Flaska — ersättning';

  @override
  String get breastfeedingSuckle => 'Amning (vid bröstet)';

  @override
  String get logSleep => 'Logga sömn';

  @override
  String get editSleep => 'Redigera sömn';

  @override
  String get sleepStart => 'Sömnstart';

  @override
  String get sleepWakeUp => 'Vakna';

  @override
  String sleepDuration(String duration) {
    return 'Längd: $duration';
  }

  @override
  String get sleepInvalidTimes => 'Ogiltiga tider';

  @override
  String get sleepWrapsNextDay => '(slutar nästa dag)';

  @override
  String get sleepNotes => 'Anteckningar (valfritt)';

  @override
  String get sleepNotesHint => 't.ex. rastlös, vaknade kort...';

  @override
  String get sleepNoNotes => 'Inga anteckningar';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}h ${m}m';
  }

  @override
  String get logTemperature => 'Logga temperatur';

  @override
  String get editTemperature => 'Redigera temperatur';

  @override
  String get temperatureLabel => 'Temperatur';

  @override
  String get tempSeverityLow => 'Låg temperatur — övervaka';

  @override
  String get tempSeverityNormal => 'Normal temperatur';

  @override
  String get tempSeverityElevated => 'Något förhöjd — övervaka noggrant';

  @override
  String get tempSeverityFever => 'Feber — kontakta din läkare';

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
  String get tempFeverWarning => '⚠️ Kontakta alltid din barnläkare vid feber hos spädbarn under 3 månader.';

  @override
  String get tempLow => 'Låg';

  @override
  String get tempNormal => 'Normal';

  @override
  String get tempElevated => 'Förhöjd';

  @override
  String get tempFever => 'Feber';

  @override
  String get tempLatest => 'Senaste temperatur';

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
      zero: 'inga dagar',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'Logga vikt';

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
    return 'Senast registrerad: $weight den $date';
  }

  @override
  String get weightLatest => 'Senaste vikt';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount under perioden';
  }

  @override
  String get tummyTimeLog => 'Logga mage-tid';

  @override
  String get tummyTimeEdit => 'Redigera mage-tid';

  @override
  String get tummyTimeStart => 'Starttid';

  @override
  String get tummyTimeEnd => 'Sluttid';

  @override
  String get tummyTimeTip => 'Mage-tid stärker nack- och axelmuskler.';

  @override
  String get medicationLog => 'Logga medicin';

  @override
  String get medicationEdit => 'Redigera medicin';

  @override
  String get medicationName => 'Medicinens namn *';

  @override
  String get medicationDose => 'Dos';

  @override
  String get medicationUnit => 'Enhet';

  @override
  String get medicationCommon => 'Vanliga mediciner';

  @override
  String get medicationWarning => 'Följ alltid doseringsinstruktioner baserat på vikt/ålder. Överskrid inte rekommenderad frekvens.';

  @override
  String get medicationNotes => 'Anteckningar (valfritt)';

  @override
  String get medicationNotesHint => 't.ex. anledning, reaktion...';

  @override
  String get doctorVisitLog => 'Läkarbesök';

  @override
  String get doctorVisitEdit => 'Redigera läkarbesök';

  @override
  String get doctorName => 'Läkare / kliniknamn';

  @override
  String get doctorVisitReason => 'Anledning till besöket';

  @override
  String get doctorVisitMeasurements => 'Mätningar (valfritt)';

  @override
  String get doctorVisitNotes => 'Anteckningar';

  @override
  String get doctorVisitNotesHint => 't.ex. givna vaccinationer, läkares rekommendationer...';

  @override
  String get measurementWeightKg => 'Vikt (kg)';

  @override
  String get measurementWeightLbs => 'Vikt (lbs)';

  @override
  String get measurementHeightCm => 'Längd / höjd (cm)';

  @override
  String get measurementHeadCm => 'Huvudomkrets (cm)';

  @override
  String get dailyNoteLog => 'Daglig anteckning';

  @override
  String get dailyNoteEdit => 'Redigera anteckning';

  @override
  String get dailyNoteTitle => 'Titel (valfritt)';

  @override
  String get dailyNoteText => 'Anteckning';

  @override
  String get dailyNoteHint => 'Vad hände idag? Första gången att rulla på sig? Tröttsam morgon?';

  @override
  String get dailyNoteTags => 'Snabbtaggar';

  @override
  String get pumpingLog => 'Logga pumpningssession';

  @override
  String get pumpingEdit => 'Redigera pumpningssession';

  @override
  String get pumpingLeft => 'Vänster bröst (ml)';

  @override
  String get pumpingRight => 'Höger bröst (ml)';

  @override
  String get pumpingTotal => 'Totalt pumpat';

  @override
  String get pumpingDuration => 'Längd (minuter)';

  @override
  String get pumpingStored => 'Förvarad / fryst';

  @override
  String get pumpingNotes => 'Anteckningar (valfritt)';

  @override
  String get pumpingSessionTitle => 'Pumpning';

  @override
  String pumpingTotalMl(int ml) {
    return '$ml ml totalt';
  }

  @override
  String get bathLog => 'Logga bad';

  @override
  String get bathEdit => 'Redigera bad';

  @override
  String get bathType => 'Badtyp';

  @override
  String get bathTypeSponge => 'Svampbad';

  @override
  String get bathTypeTub => 'Baljebad';

  @override
  String get bathTypeShower => 'Dusch';

  @override
  String get bathNotes => 'Anteckningar (valfritt)';

  @override
  String get bathProducts => 'Produkter som använts (valfritt)';

  @override
  String get vaccineTitle => 'Vaccinationer';

  @override
  String get vaccineTabGiven => 'Givna';

  @override
  String get vaccineTabSchedule => 'Schema';

  @override
  String get vaccineLog => 'Logga vaccin';

  @override
  String get vaccineEdit => 'Redigera vaccin';

  @override
  String get vaccineName => 'Vaccinets namn';

  @override
  String get vaccineBrand => 'Märke / tillverkare (valfritt)';

  @override
  String get vaccineDate => 'Datum för givande';

  @override
  String get vaccineDose => 'Dosnummer (valfritt)';

  @override
  String get vaccineSite => 'Injektionsställe (valfritt)';

  @override
  String get vaccineNotes => 'Anteckningar / reaktioner';

  @override
  String vaccineDue(String age) {
    return 'Planerad vid $age';
  }

  @override
  String get vaccineGiven => 'Given';

  @override
  String get vaccineNoGiven => 'Inga vacciner har loggats än.';

  @override
  String get vaccineMarkGiven => 'Markera som given';

  @override
  String get whoChartTitle => 'WHO:s tillväxtdiagram';

  @override
  String get whoWeightForAge => 'Vikt för ålder';

  @override
  String get whoHeightForAge => 'Längd/höjd för ålder';

  @override
  String get whoHeadForAge => 'Huvudomkrets för ålder';

  @override
  String get whoGenderBoy => 'Pojke';

  @override
  String get whoGenderGirl => 'Flicka';

  @override
  String get whoNoData => 'Inga mätningar har loggats än.\nLogga vikt från dagens poster för att se diagrammet.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'Ditt barn';

  @override
  String whoAgeMonths(int n) {
    return '$n mån';
  }

  @override
  String get whoNoBirthDate => 'Ange barnets födelsedatum i profilen för att se åldersbaserade diagram.';

  @override
  String get notifTitle => 'Påminnelser';

  @override
  String get notifFeedingReminder => 'Påminnelse om matning';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'Påminn mig efter $hours timmar om ingen matning har loggats';
  }

  @override
  String get notifDiaperReminder => 'Påminnelse om blöja';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'Påminn mig efter $hours timmar om ingen blöja har loggats';
  }

  @override
  String get notifMedicationReminder => 'Påminnelse om medicin';

  @override
  String get notifEnabled => 'Aviseringar aktiverade';

  @override
  String get notifDisabled => 'Aviseringar inaktiverade';

  @override
  String get notifPermissionRequired => 'Aktivera aviseringar i din enhets inställningar.';

  @override
  String get exportTitle => 'Export och säkerhetskopiering';

  @override
  String get exportJson => 'Exportera som JSON';

  @override
  String get exportPdf => 'Exportera som PDF';

  @override
  String get exportPdfDesc => 'Läsbar sammanfattning för din barnläkare';

  @override
  String get exportGoogleDrive => 'Säkerhetskopiera till Google Drive';

  @override
  String get exportGenerating => 'Genererar rapport...';

  @override
  String get milestoneTitle => 'Milstolpar';

  @override
  String get milestoneTabAchieved => 'Uppnådda';

  @override
  String get milestoneTabUpcoming => 'Kommande';

  @override
  String get milestoneCustomAdd => 'Anpassad milstolpe';

  @override
  String get milestoneDeleteTitle => 'Radera milstolpe?';

  @override
  String get milestoneEdit => 'Redigera milstolpe';

  @override
  String get milestoneAdd => 'Lägg till milstolpe';

  @override
  String get milestoneName => 'Milstolpens namn *';

  @override
  String get milestoneDate => 'Datum för uppnående';

  @override
  String get milestoneNotes => 'Anteckningar (valfritt)';

  @override
  String get milestoneNotesHint => 'Alla detaljer värda att komma ihåg...';

  @override
  String get milestoneNoAchieved => 'Inga milstolpar har loggats än.';

  @override
  String get milestoneAllDone => 'Alla förinställda milstolpar uppnådda! 🎉';

  @override
  String get milestoneFirstSmile => '😊 Första leendet';

  @override
  String get milestoneFirstLaugh => '😂 Första skrattet';

  @override
  String get milestoneFirstTooth => '🦷 Första tanden';

  @override
  String get milestoneRolledBackTummy => '🔄 Rullade från rygg till mage';

  @override
  String get milestoneRolledTummyBack => '🔄 Rullade från mage till rygg';

  @override
  String get milestoneSatUnsupported => '🧸 Satt utan stöd';

  @override
  String get milestoneStartedCrawling => '🐣 Började krypa';

  @override
  String get milestonePulledToStand => '🏋️ Drog sig upp till stående';

  @override
  String get milestoneFirstSteps => '👣 Första stegen';

  @override
  String get milestoneFirstWord => '💬 Första ordet';

  @override
  String get milestoneFirstSolidFood => '🥣 Första fasta födan';

  @override
  String get milestoneFirstHaircut => '✂️ Första klippningen';

  @override
  String get milestoneSleptThroughNight => '🌙 Sov hela natten';

  @override
  String get milestoneWavedBye => '👋 Vinkade hejdå';

  @override
  String get milestoneClappedHands => '👏 Klappade händerna';

  @override
  String get milestoneFirstBirthday => '🎂 Första födelsedagen';

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
  String get settingsTempUnit => 'Temperaturenhet';

  @override
  String get settingsLanguage => 'Språk';

  @override
  String get settingsNotifications => 'Aviseringar och påminnelser';

  @override
  String get settingsExport => 'Export och säkerhetskopiering';

  @override
  String get settingsTips => 'Tips';

  @override
  String get tipSwitchBabies => 'Växla mellan barn';

  @override
  String get tipSwitchBabiesDesc => 'Tryck på barnets avatar högst upp för att byta eller lägga till en barnprofil.';

  @override
  String get tipSwipeDelete => 'Svep åt vänster för att radera';

  @override
  String get tipSwipeDeleteDesc => 'Fungerar på dagskakel och enskilda poster.';

  @override
  String get tipTapToEdit => 'Tryck på valfri post för att redigera den';

  @override
  String get tipMultipleFeeds => 'Logga flera matningar';

  @override
  String get tipMultipleFeedsDesc => 'I matningsformuläret, tryck på \"Lägg till en matning till\" för att logga amning + flaska i ett svep.';

  @override
  String get tipExportData => 'Exportera data';

  @override
  String get tipExportDataDesc => 'Använd delningsikonen på Hem för att exportera all data som JSON.';

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
  String get genderUnknown => 'Okänd';

  @override
  String get genderBoy => 'Pojke';

  @override
  String get genderGirl => 'Flicka';

  @override
  String get cannotDeleteOnlyProfile => 'Kan inte radera den enda barnprofilen.';

  @override
  String deleteProfileTitle(String name) {
    return 'Radera $name?';
  }

  @override
  String get deleteProfileContent => 'All data för detta barn kommer att raderas permanent.';

  @override
  String get graphsTitle => 'Diagram';

  @override
  String get graphsTabDaily => 'Dagligt';

  @override
  String get graphsTabGrowth => 'Tillväxt';

  @override
  String get graphsTabHealth => 'Hälsa';

  @override
  String get graphsTabWho => 'WHO-diagram';

  @override
  String get graphsTotalFeeds => 'Totalt antal matningar';

  @override
  String get graphsAvgPerDay => 'Genomsnitt/dag';

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
  String get graphsNoWeightData => 'Inga viktposter än.\nLogga vikt från dagens poster.';

  @override
  String get graphsNoTempData => 'Inga temperaturposter än.\nLogga temperatur från en dag.';

  @override
  String get timeLabel => 'Tid';

  @override
  String get noColourRecorded => 'Ingen färg registrerad';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar',
      one: '1 dag',
      zero: 'nyfödd',
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
      zero: 'under 1 månad',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years år $months mån';
  }
}
