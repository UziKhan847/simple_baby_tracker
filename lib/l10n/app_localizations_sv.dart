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
  String get exportJson => 'Exportera säkerhetskopia';

  @override
  String get exportJsonDesc => 'All data och alla foton i en .zip-fil';

  @override
  String get exportPdf => 'Exportera som PDF';

  @override
  String get exportPdfDesc => 'Läsbar sammanfattning för din barnläkare';

  @override
  String get importJson => 'Återställ säkerhetskopia';

  @override
  String get importJsonDesc => 'Från en .zip-säkerhetskopia (eller en äldre .json-export)';

  @override
  String get importDialogTitle => 'Importera data?';

  @override
  String get importDialogBody => 'Sammanfoga lägger till filens poster tillsammans med din befintliga data. Ersätt allt raderar din befintliga data först.';

  @override
  String get importMerge => 'Sammanfoga';

  @override
  String get importReplaceAll => 'Ersätt allt';

  @override
  String get importSuccess => 'Importen är klar';

  @override
  String get importInvalidFile => 'Det här ser inte ut som en Baby Tracker-exportfil.';

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
  String get milestoneAllDone => 'Alla förinställda milstolpar uppnådda!';

  @override
  String get milestoneFirstSmile => 'Första leendet';

  @override
  String get milestoneFirstLaugh => 'Första skrattet';

  @override
  String get milestoneFirstTooth => 'Första tanden';

  @override
  String get milestoneRolledBackTummy => 'Rullade från rygg till mage';

  @override
  String get milestoneRolledTummyBack => 'Rullade från mage till rygg';

  @override
  String get milestoneSatUnsupported => 'Satt utan stöd';

  @override
  String get milestoneStartedCrawling => 'Började krypa';

  @override
  String get milestonePulledToStand => 'Drog sig upp till stående';

  @override
  String get milestoneFirstSteps => 'Första stegen';

  @override
  String get milestoneFirstWord => 'Första ordet';

  @override
  String get milestoneFirstSolidFood => 'Första fasta födan';

  @override
  String get milestoneFirstHaircut => 'Första klippningen';

  @override
  String get milestoneSleptThroughNight => 'Sov hela natten';

  @override
  String get milestoneWavedBye => 'Vinkade hejdå';

  @override
  String get milestoneClappedHands => 'Klappade händerna';

  @override
  String get milestoneFirstBirthday => 'Första födelsedagen';

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
  String get settingsVolumeUnit => 'Enhet för mjölkmängd';

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
  String get tipExportDataDesc => 'Tryck på dela-ikonen på Hem för att säkerhetskopiera all data och alla foton i en fil.';

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
  String get graphsMilkPerDayMl => 'Mjölk per dag (ml)';

  @override
  String get graphsMilkPerDayOz => 'Mjölk per dag (oz)';

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

  @override
  String medicationLabel(String name) {
    return 'Medicin: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'Besök';

  @override
  String doctorVisitLabel(String reason) {
    return 'Läkarbesök — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 Anteckning';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'Dr: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'Ingen läkare angiven';

  @override
  String get summaryPoosLabel => 'Bajs';

  @override
  String get summaryPeesLabel => 'Kiss';

  @override
  String get summaryMilkLabel => 'Mjölk ml';

  @override
  String get summaryMilkLabelMl => 'Mjölk ml';

  @override
  String get summaryMilkLabelOz => 'Mjölk oz';

  @override
  String get summaryBreastLabel => 'Amning min';

  @override
  String get summarySleepLabel => 'Sömn';

  @override
  String get settingsOledMode => 'OLED (helsvart)';

  @override
  String get settingsOledModeDesc => 'Använd helsvart bakgrund för att spara batteri på OLED-skärmar';

  @override
  String get settingsImmersiveMode => 'Immersivt läge';

  @override
  String get settingsImmersiveModeDesc => 'Dölj systemets status- och navigeringsfält';

  @override
  String get navVaccinationsEntry => 'Vaccinationer';

  @override
  String get whoChartsEntry => 'WHO-tillväxtkurvor';

  @override
  String get medicationEditTitle => 'Redigera medicin';

  @override
  String get medicationLogTitle => 'Logga medicin';

  @override
  String get medicationYourCourses => 'Dina behandlingar';

  @override
  String get medicationManageCourses => 'Hantera behandlingar';

  @override
  String get medicationNameRequired => 'Medicinens namn *';

  @override
  String get medicationDosageWarning => 'Följ alltid doseringen för vikt/ålder. Överskrid inte rekommenderad frekvens.';

  @override
  String get medicationNotesOptional => 'Anteckningar (valfritt)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'för $count minuter sedan',
      one: 'för 1 minut sedan',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'för $count timmar sedan',
      one: 'för 1 timme sedan',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'för $count dagar sedan',
      one: 'för 1 dag sedan',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'Senast given $ago';
  }

  @override
  String get medicationNeverGiven => 'Inte given än';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count doser i dag',
      one: '1 dos i dag',
      zero: 'Inga doser i dag',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'Nästa dos ska ges tidigast $hours h efter den förra';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'Gränsen på $max/dag för den här behandlingen är redan nådd';
  }

  @override
  String get medicationEditCourse => 'Redigera behandling';

  @override
  String get medicationNewCourse => 'Ny behandling';

  @override
  String get medicationReasonOptional => 'Anledning (valfritt)';

  @override
  String get medicationIntervalHoursOptional => 'Upprepa var (timmar, valfritt)';

  @override
  String get medicationMaxPerDayOptional => 'Max doser/dag (valfritt)';

  @override
  String get medicationRemindNextDose => 'Påminn mig när nästa dos ska ges';

  @override
  String medicationEndCourseTitle(String name) {
    return 'Avsluta $name?';
  }

  @override
  String get medicationEndCoursePrompt => 'Hur gick det?';

  @override
  String get medicationDeleteCourseTitle => 'Ta bort den här behandlingen?';

  @override
  String get medicationResultWorked => 'Hjälpte';

  @override
  String get medicationResultPartlyWorked => 'Hjälpte delvis';

  @override
  String get medicationResultDidntWork => 'Hjälpte inte';

  @override
  String get medicationResultSideEffects => 'Biverkningar';

  @override
  String get medicationResultNone => 'Inte bedömd';

  @override
  String get medicationsTitle => 'Mediciner';

  @override
  String medicationActiveTab(int count) {
    return 'Pågående ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'Avslutade ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'Inga pågående behandlingar.\nStarta en med +-knappen.';

  @override
  String get medicationNoPastCourses => 'Inga avslutade behandlingar än.';

  @override
  String medicationTimesGiven(int count) {
    return 'Given $count×';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'Senast: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'Nästa $time';
  }

  @override
  String get medicationEndCourse => 'Avsluta behandling';

  @override
  String feedLastSideHint(String side) {
    return 'Förra gången: $side';
  }

  @override
  String get feedSideLeft => 'Vänster';

  @override
  String get feedSideRight => 'Höger';

  @override
  String get feedSideBoth => 'Båda';

  @override
  String get feedSideLeftMinutes => 'Vänster (min)';

  @override
  String get feedSideRightMinutes => 'Höger (min)';

  @override
  String get timeAgoJustNow => 'Nyss';

  @override
  String get timeUntilOverdue => 'Försenad';

  @override
  String timeUntilMinutes(int count) {
    return 'om $count min';
  }

  @override
  String timeUntilHours(int count) {
    return 'om $count h';
  }

  @override
  String timeUntilDays(int count) {
    return 'om $count d';
  }

  @override
  String get timerDiscardTitle => 'Kasta den här timern?';

  @override
  String get timerDiscard => 'Kasta';

  @override
  String timerFeedingRunning(String side) {
    return 'Amning · $side';
  }

  @override
  String get timerSleepRunning => 'Sömntimer igång';

  @override
  String get timerSwitchSide => 'Byt sida';

  @override
  String get timerStop => 'Stoppa';

  @override
  String get sinceLastFeed => 'Senaste matning';

  @override
  String get sinceLastDiaper => 'Senaste blöja';

  @override
  String get sinceAwake => 'Vaken';

  @override
  String get sinceAsleep => 'Sover';

  @override
  String nextDoseDue(String name) {
    return 'Dags för $name';
  }

  @override
  String get weighConditionNaked => 'Naken';

  @override
  String get weighConditionDiaper => 'Bara blöja';

  @override
  String get weighConditionLightClothes => 'Lätta kläder';

  @override
  String get weighConditionDressed => 'Påklädd';

  @override
  String get weighCondition => 'Vägd med';

  @override
  String get growthMeasurementsOptional => 'Andra mått (valfritt)';

  @override
  String get growthHeightCm => 'Längd (cm)';

  @override
  String get growthHeadCm => 'Huvudomfång (cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'Förra gången vägdes: $condition – skillnaden kanske inte bara är tillväxt';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm cm';
  }

  @override
  String growthHeadValue(String cm) {
    return 'Huvud $cm cm';
  }

  @override
  String get growthHeightOverTime => 'Längd över tid';

  @override
  String get growthHeadOverTime => 'Huvudomfång över tid';

  @override
  String get graphsRecentWeighIns => 'Senaste vägningar';

  @override
  String get solidsAmountFewSpoons => 'Några skedar';

  @override
  String get solidsAmountHalf => 'Halv portion';

  @override
  String get solidsAmountFull => 'Hel portion';

  @override
  String get solidsAmountTaste => 'Bara smakade';

  @override
  String get solidsReactionMild => 'Lätt reaktion';

  @override
  String get solidsReactionAllergic => 'Allergisk reaktion';

  @override
  String get solidsReactionNone => 'Ingen reaktion';

  @override
  String get solidsEditTitle => 'Redigera fast föda';

  @override
  String get solidsLogTitle => 'Logga fast föda';

  @override
  String get solidsFoodsLabel => 'Livsmedel';

  @override
  String get solidsAddFoodHint => 'Lägg till ett livsmedel';

  @override
  String get solidsAmount => 'Mängd';

  @override
  String get solidsLiked => 'Hur tyckte barnet om det?';

  @override
  String get solidsReaction => 'Reaktion';

  @override
  String get solidsNotesOptional => 'Anteckningar (valfritt)';

  @override
  String get foodsTitle => 'Provade livsmedel';

  @override
  String get foodsEmpty => 'Ingen fast föda loggad än.';

  @override
  String get foodsAllergensNotYet => 'Vanliga allergener som inte introducerats än';

  @override
  String foodsTriedCount(int count) {
    return '$count livsmedel provade';
  }

  @override
  String foodsFirstTried(String date) {
    return 'Första gången: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'Fast föda';

  @override
  String get feedAmountOz => 'Mängd (oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'Påminn mig $interval efter senaste matningen';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'Påminn mig $interval efter senaste blöjan';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'Var $interval';
  }

  @override
  String get notifIntervalTitle => 'Påminnelseintervall';

  @override
  String get notifIntervalHours => 'Timmar';

  @override
  String get notifIntervalMinutes => 'Minuter';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'Minst $minutes minuter';
  }

  @override
  String get settingsFeeding => 'Matning';

  @override
  String get settingsTrackBottles => 'Spåra flaskor';

  @override
  String get settingsTrackBottlesDesc => 'Välj vilken flaska som användes och hur mycket som gjordes i ordning respektive dracks';

  @override
  String get bottlesTitle => 'Mina flaskor';

  @override
  String get bottlesEmpty => 'Inga flaskor än.\nLägg till flaskorna du använder så kan du välja en när du loggar en matning.';

  @override
  String get bottleAdd => 'Lägg till flaska';

  @override
  String get bottleEdit => 'Redigera flaska';

  @override
  String get bottleLabel => 'Etikett / nummer (t.ex. #3)';

  @override
  String get bottleBrand => 'Märke / typ (valfritt)';

  @override
  String get bottleCapacity => 'Volym (valfritt)';

  @override
  String get bottleNipple => 'Napp-storlek / flöde (valfritt)';

  @override
  String get bottleMaterial => 'Material';

  @override
  String get bottleRetired => 'Pensionerad';

  @override
  String get bottleRetire => 'Pensionera';

  @override
  String get bottleUnretire => 'Använd igen';

  @override
  String bottleDeleteTitle(String name) {
    return 'Ta bort $name?';
  }

  @override
  String get bottleDeleteBody => 'Tidigare matningar behåller sina mängder men visar inte längre den här flaskan. Använd Pensionera i stället för att dölja den i listan men behålla historiken.';

  @override
  String get feedPrepared => 'I ordning gjort';

  @override
  String get feedDrank => 'Drack';

  @override
  String feedLeftover(String amount) {
    return '$amount kvar';
  }

  @override
  String get feedDrankMoreThanPrepared => 'Mer än som gjordes i ordning?';

  @override
  String get feedWhichBottle => 'Vilken flaska?';

  @override
  String get feedNoBottlesYet => 'Inga flaskor än – lägg till dem i Inställningar → Mina flaskor.';

  @override
  String get photoPrivacyTitle => 'Dina foton stannar på den här telefonen';

  @override
  String get photoPrivacyBody => 'Foton sparas bara i den här appen på den här enheten. Appen har ingen internetåtkomst, så inget laddas någonsin upp eller delas om du inte själv exporterar en säkerhetskopia.\n\nAndroid kan be om åtkomst till kameran första gången du tar ett foto.';

  @override
  String get photoPrivacyContinue => 'Fortsätt';

  @override
  String get photoTakePhoto => 'Ta ett foto';

  @override
  String get photoChooseFromGallery => 'Välj från galleriet';

  @override
  String get photoCaption => 'Bildtext';

  @override
  String get photoCompare => 'Första vs senaste';

  @override
  String get photoAddOtherDay => 'Lägg till för en annan dag';

  @override
  String get photoEmpty => 'Inga foton än.\nTa ett foto om dagen och se ditt barn växa.';

  @override
  String get photoToday => 'Dagens foto';

  @override
  String get photoAddToday => 'Lägg till dagens foto';

  @override
  String get photoReplace => 'Ersätt';

  @override
  String get photoDeleteTitle => 'Ta bort det här fotot?';

  @override
  String get ageBeforeBirth => 'Före födseln';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar gammal',
      one: '1 dag gammal',
      zero: 'Födelsedagen',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months mån $days d';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years år $months mån';
  }

  @override
  String get navMemories => 'Minnen';

  @override
  String get memoriesTabPhotos => 'Foton';

  @override
  String get milestoneNoAchievedHint => 'Tryck på ”Kommande” för att logga en förvald,\neller använd knappen nedan för en egen.';

  @override
  String get skinTitle => 'Hudbesvär';

  @override
  String get skinNew => 'Nytt hudbesvär';

  @override
  String get skinEdit => 'Redigera hudbesvär';

  @override
  String skinTabActive(int count) {
    return 'Pågående ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'Läkta ($count)';
  }

  @override
  String get skinEmptyActive => 'Inga hudbesvär följs.\nTryck på + för att börja – du kan lägga till ett foto varje dag för att visa läkaren hur det förändras.';

  @override
  String get skinEmptyHealed => 'Inget har läkt än.';

  @override
  String get skinUpdateDue => 'Uppdatera i dag';

  @override
  String skinSince(String date) {
    return 'Sedan $date';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return 'Läkt $date';
  }

  @override
  String skinReminderAt(String time) {
    return 'Daglig påminnelse kl. $time';
  }

  @override
  String get skinSeverityTrend => 'Svårighetsgrad över tid';

  @override
  String get skinNoUpdates => 'Inga uppdateringar än. Lägg till dagens för att starta tidslinjen.';

  @override
  String get skinExportPdf => 'Exportera till läkaren (PDF)';

  @override
  String get skinMarkHealed => 'Markera som läkt';

  @override
  String get skinReopen => 'Markera som pågående igen';

  @override
  String get skinUpdateToday => 'Lägg till dagens uppdatering';

  @override
  String get skinEditToday => 'Redigera dagens uppdatering';

  @override
  String skinDeleteTitle(String name) {
    return 'Ta bort $name och alla uppdateringar?';
  }

  @override
  String get skinDeleteUpdateTitle => 'Ta bort den här uppdateringen?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'Behandling: $treatment';
  }

  @override
  String get skinName => 'Besvär *';

  @override
  String get skinBodyArea => 'Var på kroppen?';

  @override
  String get skinBegan => 'Började';

  @override
  String get skinRemindDaily => 'Påminn mig att uppdatera varje dag';

  @override
  String get skinReminderTime => 'Tid för påminnelse';

  @override
  String get skinUpdateTitle => 'Huduppdatering';

  @override
  String get skinSeverity => 'Hur ser det ut?';

  @override
  String get skinSeverity0 => '0 · Borta';

  @override
  String get skinSeverity1 => '1 · Lindrigt';

  @override
  String get skinSeverity2 => '2 · Måttligt';

  @override
  String get skinSeverity3 => '3 · Svårt';

  @override
  String get skinSeverity4 => '4 · Mycket svårt';

  @override
  String get skinTreatment => 'Behandling (valfritt)';

  @override
  String get skinTreatmentHint => 't.ex. mjukgörande kräm, hydrokortison 1 %';

  @override
  String get skinAddPhoto => 'Lägg till ett foto';

  @override
  String get skinCardNone => 'Följ utslag, eksem eller andra hudbesvär dag för dag, med foton till läkaren';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count behöver dagens uppdatering',
      one: '1 behöver dagens uppdatering',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'Förbereder säkerhetskopia …';

  @override
  String get backupFailed => 'Det gick inte att skapa säkerhetskopian.';

  @override
  String get backupSavedTo => 'Säkerhetskopian sparades i:';

  @override
  String get backupShareSubject => 'Baby Tracker-säkerhetskopia';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Innehåller $count foton.',
      one: 'Innehåller 1 foto.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'Matning';

  @override
  String get widgetStopFeed => 'Stoppa matning';

  @override
  String get widgetDiaper => 'Blöja';

  @override
  String get widgetSleep => 'Sömn';

  @override
  String get widgetWakeUp => 'Vaknade';

  @override
  String widgetFeedingFor(String duration) {
    return 'Matas sedan $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'Matad $ago';
  }

  @override
  String get widgetNoFeedsYet => 'Inga matningar än';

  @override
  String widgetChangedAgo(String ago) {
    return 'Bytt $ago';
  }

  @override
  String get widgetNoDiapersYet => 'Inga blöjor än';

  @override
  String widgetAsleepFor(String duration) {
    return 'Sover sedan $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'Vaknade $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Stoppa sömntimern först';

  @override
  String get widgetStopFeedFirst => 'Stoppa matningstimern först';

  @override
  String quickAddTitle(String name) {
    return 'Lägg till för $name';
  }

  @override
  String get quickAddOpenApp => 'Öppna appen';

  @override
  String get foodPeanut => 'Jordnöt';

  @override
  String get foodEgg => 'Ägg';

  @override
  String get foodDairy => 'Mejeriprodukter';

  @override
  String get foodWheat => 'Vete';

  @override
  String get foodSoy => 'Soja';

  @override
  String get foodFish => 'Fisk';

  @override
  String get foodShellfish => 'Skaldjur';

  @override
  String get foodTreeNuts => 'Nötter';

  @override
  String get foodSesame => 'Sesam';

  @override
  String get foodBanana => 'Banan';

  @override
  String get foodAvocado => 'Avokado';

  @override
  String get foodSweetPotato => 'Sötpotatis';

  @override
  String get foodRiceCereal => 'Risvälling / risgröt';

  @override
  String get foodOatmeal => 'Havregrynsgröt';

  @override
  String get foodCarrot => 'Morot';

  @override
  String get foodApple => 'Äpple';

  @override
  String get foodPea => 'Ärta';

  @override
  String get symptomRash => 'Utslag';

  @override
  String get symptomHives => 'Nässelutslag';

  @override
  String get symptomVomiting => 'Kräkningar';

  @override
  String get symptomDiarrhea => 'Diarré';

  @override
  String get symptomSwelling => 'Svullnad';

  @override
  String get doseUnitDrops => 'droppar';

  @override
  String get doseUnitTablets => 'tabletter';

  @override
  String get bottleMaterialPlastic => 'Plast';

  @override
  String get bottleMaterialGlass => 'Glas';

  @override
  String get bottleMaterialSilicone => 'Silikon';

  @override
  String get bottleMaterialSteel => 'Rostfritt stål';

  @override
  String get visitReasonRoutine => 'Rutinkontroll';

  @override
  String get visitReasonSick => 'Sjukbesök';

  @override
  String get visitReasonVaccination => 'Vaccination';

  @override
  String get visitReasonSpecialist => 'Specialist';

  @override
  String get visitReasonFollowUp => 'Återbesök';

  @override
  String get visitReasonOther => 'Annat';

  @override
  String get pooColourPale => 'Blek';

  @override
  String get noteTagHappyDay => 'Glad dag';

  @override
  String get noteTagSleptWell => 'Sov bra';

  @override
  String get noteTagFussy => 'Gnällig';

  @override
  String get noteTagNotWell => 'Mådde inte bra';

  @override
  String get noteTagFirstTime => 'Första gången!';

  @override
  String get noteTagTeething => 'Tandsprickning';

  @override
  String get noteTagGrowthSpurt => 'Tillväxtspurt';

  @override
  String get noteTagMilestone => 'Milstolpe';

  @override
  String get tummyTimeNotesHint => 't.ex. trivdes, gnällig …';

  @override
  String get skinSuggestEczema => 'Eksem';

  @override
  String get skinSuggestDiaperRash => 'Blöjeksem';

  @override
  String get skinSuggestCradleCap => 'Mjölkskorv';

  @override
  String get skinSuggestBabyAcne => 'Bebisakne';

  @override
  String get skinSuggestHeatRash => 'Värmeutslag';

  @override
  String get skinSuggestDrySkin => 'Torr hud';

  @override
  String get bodyFace => 'Ansikte';

  @override
  String get bodyScalp => 'Hårbotten';

  @override
  String get bodyNeck => 'Hals';

  @override
  String get bodyChest => 'Bröst';

  @override
  String get bodyBack => 'Rygg';

  @override
  String get bodyArms => 'Armar';

  @override
  String get bodyHands => 'Händer';

  @override
  String get bodyDiaperArea => 'Blöjområdet';

  @override
  String get bodyLegs => 'Ben';

  @override
  String get bodyFeet => 'Fötter';

  @override
  String get medSuggestGripeWater => 'Gripe water';

  @override
  String get medSuggestVitaminD => 'D-vitamin';

  @override
  String get medSuggestIronDrops => 'Järndroppar';

  @override
  String get medSuggestAntibiotic => 'Antibiotika';

  @override
  String get medSuggestProbiotic => 'Probiotika';

  @override
  String vaccinePageTitle(String name) {
    return '$name – Vaccinationer';
  }

  @override
  String get vaccineDeleteTitle => 'Ta bort vaccinationen?';

  @override
  String get vaccineSiteHint => 't.ex. vänster lår';

  @override
  String get vaccineNotesHint => 't.ex. lätt feber, gnällig, ingen reaktion …';

  @override
  String get vaccineNoGivenHint => 'Använd +-knappen eller tryck på ”Markera som given” på fliken Schema.';

  @override
  String get vaccineAgeBirth => 'Födseln';

  @override
  String vaccineAgeMonths(String range) {
    return '$range månader';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range månader (årligen)';
  }

  @override
  String get whoTabHeight => 'Längd';

  @override
  String get whoTabHead => 'Huvud';

  @override
  String get whoChartFor => 'Kurva för:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 månader)';
  }

  @override
  String get whoNoDataPoints => 'Inga mätvärden än. Logga mått för att se ditt barn i kurvan.';

  @override
  String get whoLatestMeasurement => 'Senaste mätningen';

  @override
  String whoApproxPercentile(String value) {
    return 'Ungefärlig percentil: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return 'mellan $low och $high';
  }

  @override
  String whoMonthsOld(String months) {
    return '$months månader gammal';
  }

  @override
  String get whoDisclaimer => 'Kurvorna är bara för information. Låt alltid barnläkaren tolka dem.';

  @override
  String get whoMedian => 'P50 (median)';

  @override
  String get notifChannelName => 'Baby Tracker-påminnelser';

  @override
  String get notifChannelDesc => 'Påminnelser om matning, blöjor, mediciner och hudkontroller';

  @override
  String get notifFeedTitle => 'Dags att äta!';

  @override
  String notifFeedBody(String interval) {
    return 'Ingen matning loggad de senaste $interval.';
  }

  @override
  String get notifDiaperTitle => 'Kolla blöjan!';

  @override
  String notifDiaperBody(String interval) {
    return 'Inget blöjbyte loggat de senaste $interval.';
  }

  @override
  String notifDoseTitle(String name) {
    return 'Dags för dos: $name';
  }

  @override
  String notifDoseBody(String name) {
    return 'Det är dags för nästa dos $name.';
  }

  @override
  String notifSkinTitle(String name) {
    return 'Hudkontroll: $name';
  }

  @override
  String get notifSkinBody => 'Lägg till dagens uppdatering (och ett foto om du vill).';

  @override
  String get timerFeedingNotif => 'Matningstimer igång';

  @override
  String intervalMinutes(String m) {
    return '$m min';
  }

  @override
  String intervalHours(String h) {
    return '$h h';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h h $m min';
  }

  @override
  String get settingsRtlActive => 'Höger-till-vänster-layout aktiv';

  @override
  String get measurementHeightIn => 'Längd (in)';

  @override
  String get measurementHeadIn => 'Huvudomfång (in)';

  @override
  String get growthHeightIn => 'Längd (in)';

  @override
  String get growthHeadIn => 'Huvudomfång (in)';

  @override
  String growthHeightValueIn(String value) {
    return '$value in';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'Huvud $value in';
  }

  @override
  String get settingsLengthUnitNote => 'Längd följer viktenheten (cm med kg, tum med lbs)';

  @override
  String get formulaStoreBrand => 'Butikens eget märke';

  @override
  String get pooShade1 => 'Kritvit';

  @override
  String get pooShade2 => 'Ljusgrå';

  @override
  String get pooShade3 => 'Lergrå';

  @override
  String get pooShade4 => 'Gräddvit';

  @override
  String get pooShade5 => 'Mörkbeige';

  @override
  String get pooShade6 => 'Blekt gulgrön';

  @override
  String get pooShade7 => 'Senapsgul';

  @override
  String get pooShade8 => 'Brun';

  @override
  String get pooShade9 => 'Grön';

  @override
  String get vaccineScheduleNote => 'Baserat på det amerikanska CDC-schemat. Schemat i ditt land kan skilja sig – följ din läkares råd.';

  @override
  String get settingsAbout => 'Om';

  @override
  String get aboutTitle => 'Om och licenser';

  @override
  String aboutVersion(String version) {
    return 'Version $version';
  }

  @override
  String get aboutLicenseLine => 'Fri programvara utgiven under GNU General Public License v3.0 eller senare. Du får använda, studera, dela och ändra den.';

  @override
  String get aboutSourceCode => 'Källkod';

  @override
  String get aboutDisclaimerTitle => 'Inte medicinsk rådgivning';

  @override
  String get aboutDisclaimerBody => 'Simple Baby Tracker är en dagbok för dina egna anteckningar. Den är inte en medicinteknisk produkt och ställer inga diagnoser, behandlar eller övervakar inga tillstånd. Tillväxtkurvor, temperaturintervall, medicinpåminnelser och anteckningar om avföringens färg är endast allmän information och kan vara ofullständiga eller felaktiga. Följ alltid råd från din läkare eller apotekare och kontakta dem, eller larmcentralen, om du är orolig för ditt barn.';

  @override
  String get aboutPrivacyTitle => 'Dina data stannar på den här telefonen';

  @override
  String get aboutPrivacyBody => 'Appen har ingen internetåtkomst, inget konto, inga annonser och ingen analys. Anteckningar och foton sparas bara på den här enheten. Inget lämnar den om du inte själv exporterar en säkerhetskopia och delar den.';

  @override
  String get aboutCreditsTitle => 'Tack till';

  @override
  String get aboutCreditsBody => 'Ikoner: skapade med Claude Design.\nTypsnitt: Inter och Quicksand (SIL Open Font License 1.1).\nTillväxtkurvor: WHO:s tillväxtstandarder för barn (who.int).\nVaccinationsschema: baserat på det amerikanska CDC-schemat.\nByggd med Flutter.';

  @override
  String get aboutLicencesButton => 'Öppen källkod-licenser';
}
