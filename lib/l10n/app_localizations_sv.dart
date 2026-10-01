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
  String get exportJsonDesc => 'Rådata för säkerhetskopiering';

  @override
  String get exportPdf => 'Exportera som PDF';

  @override
  String get exportPdfDesc => 'Läsbar sammanfattning för din barnläkare';

  @override
  String get importJson => 'Importera från JSON';

  @override
  String get importJsonDesc => 'Återställ från en säkerhetskopia';

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
  String get settingsVolumeUnit => 'Milk volume unit';

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
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

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
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

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
