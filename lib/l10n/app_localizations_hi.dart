// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'बेबी ट्रैकर';

  @override
  String get navHome => 'होम';

  @override
  String get navGraphs => 'ग्राफ़';

  @override
  String get navMilestones => 'Milestones';

  @override
  String get navSettings => 'सेटिंग्स';

  @override
  String get actionCancel => 'रद्द करें';

  @override
  String get actionSave => 'सहेजें';

  @override
  String get actionUpdate => 'अपडेट करें';

  @override
  String get actionDelete => 'हटाएं';

  @override
  String get actionAdd => 'जोड़ें';

  @override
  String get actionEdit => 'संपादित करें';

  @override
  String get actionClose => 'बंद करें';

  @override
  String get actionExport => 'डेटा निर्यात करें';

  @override
  String get actionAddDay => 'दिन जोड़ें';

  @override
  String get actionLog => 'Log';

  @override
  String get cannotUndo => 'इसे पूर्ववत नहीं किया जा सकता';

  @override
  String get noData => 'कोई डेटा नहीं';

  @override
  String get noNotes => 'No notes';

  @override
  String get noDetails => 'कोई विवरण नहीं';

  @override
  String get optional => '(optional)';

  @override
  String get homeTitle => 'ट्रैकर';

  @override
  String get feedsToday => 'आज की फीडिंग';

  @override
  String get diapersToday => 'आज के डायपर';

  @override
  String get sleepToday => 'आज की नींद';

  @override
  String todayLabel(String date) {
    return 'आज — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count घटनाएँ',
      one: '1 घटना',
      zero: 'कोई घटना नहीं',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'दिन हटाएं?';

  @override
  String deleteDayContent(String date) {
    return '$date और उसकी सभी प्रविष्टियाँ हटाएँ? इसे पूर्ववत नहीं किया जा सकता';
  }

  @override
  String get rashRecorded => 'रैश दर्ज किया गया';

  @override
  String get noEntriesYet => 'अभी कोई प्रविष्टि नहीं';

  @override
  String get addEntry => 'प्रविष्टि जोड़ें';

  @override
  String get deleteEntryTitle => 'प्रविष्टि हटाएं?';

  @override
  String get entryTypeDiaper => 'डायपर बदलें';

  @override
  String get entryTypeFeeding => 'फीडिंग';

  @override
  String get entryTypeSleep => 'नींद';

  @override
  String get entryTypeTemperature => 'तापमान';

  @override
  String get entryTypeWeight => 'वज़न';

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
  String get diaperPeePoo => 'डायपर — पेशाब + मल';

  @override
  String get diaperPee => 'डायपर — केवल पेशाब';

  @override
  String get diaperPoo => 'डायपर — केवल मल';

  @override
  String get diaperChange => 'डायपर बदलें';

  @override
  String get editDiaper => 'डायपर संपादित करें';

  @override
  String get diaperContents => 'सामग्री';

  @override
  String get diaperNone => 'कुछ नहीं';

  @override
  String get diaperPeeLabel => 'पेशाब';

  @override
  String get diaperPooLabel => 'मल';

  @override
  String get diaperBoth => 'दोनों';

  @override
  String get diaperConsistency => 'बनावट';

  @override
  String get consistencyHard => 'सख्त / दानेदार';

  @override
  String get consistencyHardHint => 'कब्ज़';

  @override
  String get consistencyFirm => 'ठोस';

  @override
  String get consistencyFirmHint => 'हल्का ठोस';

  @override
  String get consistencyNormal => 'सामान्य';

  @override
  String get consistencyNormalHint => 'स्वस्थ';

  @override
  String get consistencySoft => 'मुलायम';

  @override
  String get consistencySoftHint => 'हल्का मुलायम';

  @override
  String get consistencyLoose => 'पतला / लेई जैसा';

  @override
  String get consistencyLooseHint => 'निगरानी करें';

  @override
  String get consistencyWatery => 'पानी जैसा';

  @override
  String get consistencyWateryHint => 'दस्त';

  @override
  String get warnConstipation => 'कब्ज़ के लक्षण — करीब से निगरानी करें';

  @override
  String get warnDiarrhea => 'दस्त के लक्षण — करीब से निगरानी करें';

  @override
  String get pooColourLabel => 'रंग (चुनने के लिए टैप करें)';

  @override
  String get pooColourAbnormal => '⚠️ असामान्य (फीका)';

  @override
  String get pooColourNormal => '✅ सामान्य';

  @override
  String pooColourSelected(String label) {
    return 'चयनित: $label';
  }

  @override
  String get diaperSize => 'डायपर का साइज़';

  @override
  String get diaperBrand => 'ब्रांड';

  @override
  String get diaperBrandCustomLabel => 'ब्रांड का नाम';

  @override
  String get rashPresent => 'डायपर रैश मौजूद';

  @override
  String get rashPresentHint => 'लालिमा, जलन या डायपर रैश';

  @override
  String get rashCreamUsed => 'क्रीम लगाई गई';

  @override
  String get rashCreamCustomLabel => 'क्रीम / मरहम का नाम';

  @override
  String get rashFollowUpTitle => '⚠️ रैश का अनुवर्तन';

  @override
  String get rashFollowUpQuestion => 'आखिरी डायपर में रैश दर्ज किया गया था। क्या सुधार हुआ?';

  @override
  String get rashImproved => 'हाँ, सुधार हुआ';

  @override
  String get rashNoChange => 'कोई बदलाव नहीं / बिगड़ गया';

  @override
  String get addFeeding => 'फीडिंग जोड़ें';

  @override
  String get editFeeding => 'फीडिंग संपादित करें';

  @override
  String feedLabel(int number) {
    return 'फीड $number';
  }

  @override
  String get feedModeBottle => 'बोतल';

  @override
  String get feedModeSuckle => 'स्तनपान';

  @override
  String get feedAmountMl => 'मात्रा (मिली)';

  @override
  String get feedType => 'प्रकार';

  @override
  String get feedBreastMilk => 'माँ का दूध';

  @override
  String get feedFormula => 'फॉर्मूला दूध';

  @override
  String get feedFormulaBrand => 'फॉर्मूला ब्रांड';

  @override
  String get feedFormulaBrandCustom => 'फॉर्मूला ब्रांड का नाम';

  @override
  String get feedDurationMinutes => 'अवधि (मिनट)';

  @override
  String get addAnotherFeed => 'एक और फीडिंग जोड़ें';

  @override
  String get bottleBreastMilk => 'बोतल — माँ का दूध';

  @override
  String get bottleFormula => 'बोतल — फॉर्मूला';

  @override
  String get breastfeedingSuckle => 'स्तनपान';

  @override
  String get logSleep => 'नींद लॉग करें';

  @override
  String get editSleep => 'नींद संपादित करें';

  @override
  String get sleepStart => 'नींद का आरंभ';

  @override
  String get sleepWakeUp => 'जागना';

  @override
  String sleepDuration(String duration) {
    return 'अवधि: $duration';
  }

  @override
  String get sleepInvalidTimes => 'अमान्य समय';

  @override
  String get sleepWrapsNextDay => '(अगले दिन समाप्त)';

  @override
  String get sleepNotes => 'नोट्स (वैकल्पिक)';

  @override
  String get sleepNotesHint => 'उदा: बेचैन, थोड़ी देर जागा...';

  @override
  String get sleepNoNotes => 'कोई नोट नहीं';

  @override
  String sleepHoursShort(int h, int m) {
    return '$hघं $mमिन';
  }

  @override
  String get logTemperature => 'तापमान लॉग करें';

  @override
  String get editTemperature => 'तापमान संपादित करें';

  @override
  String get temperatureLabel => 'तापमान';

  @override
  String get tempSeverityLow => 'तापमान कम — निगरानी करें';

  @override
  String get tempSeverityNormal => 'सामान्य तापमान';

  @override
  String get tempSeverityElevated => 'हल्का बढ़ा हुआ — करीब से निगरानी करें';

  @override
  String get tempSeverityFever => 'बुखार — डॉक्टर से सलाह लें';

  @override
  String get tempReference => 'तापमान संदर्भ';

  @override
  String get tempRefLow => '< 36.0 °C / 96.8 °F';

  @override
  String get tempRefNormal => '36.0 – 37.4 °C / 96.8 – 99.3 °F';

  @override
  String get tempRefElevated => '37.5 – 38.4 °C / 99.5 – 101.1 °F';

  @override
  String get tempRefFever => '≥ 38.5 °C / 101.3 °F';

  @override
  String get tempFeverWarning => '⚠️ 3 माह से कम उम्र के शिशुओं में बुखार होने पर हमेशा बाल रोग विशेषज्ञ से सलाह लें';

  @override
  String get tempLow => 'कम';

  @override
  String get tempNormal => 'सामान्य';

  @override
  String get tempElevated => 'बढ़ा हुआ';

  @override
  String get tempFever => 'बुखार';

  @override
  String get tempLatest => 'नवीनतम तापमान';

  @override
  String get tempSummary => 'तापमान सारांश';

  @override
  String get tempFeverThreshold => 'बुखार की सीमा';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन',
      one: '1 दिन',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'वज़न लॉग करें';

  @override
  String get editWeight => 'वज़न संपादित करें';

  @override
  String get weightLabel => 'वज़न';

  @override
  String weightGain(String amount) {
    return '+$amount बढ़ा';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount घटा';
  }

  @override
  String weightPrevious(String weight) {
    return 'पिछला: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'अंतिम रिकॉर्ड: $weight ($date)';
  }

  @override
  String get weightLatest => 'नवीनतम वज़न';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount इस अवधि में';
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
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get settingsAppearance => 'दिखावट';

  @override
  String get settingsDarkMode => 'डार्क मोड';

  @override
  String get settingsDarkActive => 'डार्क थीम सक्रिय';

  @override
  String get settingsLightActive => 'लाइट थीम सक्रिय';

  @override
  String get settingsUnits => 'इकाइयाँ';

  @override
  String get settingsWeightUnit => 'वज़न इकाई';

  @override
  String get settingsTempUnit => 'तापमान इकाई';

  @override
  String get settingsLanguage => 'भाषा';

  @override
  String get settingsNotifications => 'Notifications & reminders';

  @override
  String get settingsExport => 'Export & backup';

  @override
  String get settingsTips => 'सुझाव';

  @override
  String get tipSwitchBabies => 'बेबी स्विच करें';

  @override
  String get tipSwitchBabiesDesc => 'स्विच करने या नया प्रोफ़ाइल जोड़ने के लिए ऊपर बेबी अवतार पर टैप करें';

  @override
  String get tipSwipeDelete => 'हटाने के लिए बाएं स्वाइप करें';

  @override
  String get tipSwipeDeleteDesc => 'दिन कार्ड और व्यक्तिगत प्रविष्टियों पर काम करता है';

  @override
  String get tipTapToEdit => 'संपादित करने के लिए किसी भी प्रविष्टि पर टैप करें';

  @override
  String get tipMultipleFeeds => 'एक साथ कई फीडिंग लॉग करें';

  @override
  String get tipMultipleFeedsDesc => 'फीडिंग फॉर्म में, \"एक और फीडिंग जोड़ें\" पर टैप करें';

  @override
  String get tipExportData => 'डेटा निर्यात करें';

  @override
  String get tipExportDataDesc => 'होम पर शेयर आइकन का उपयोग करें';

  @override
  String get babiesTitle => 'बेबीज़';

  @override
  String get addBaby => 'बेबी जोड़ें';

  @override
  String get editProfile => 'प्रोफ़ाइल संपादित करें';

  @override
  String get babyNameRequired => 'नाम *';

  @override
  String get babyDobOptional => 'जन्म तिथि (वैकल्पिक)';

  @override
  String babyBornOn(String date) {
    return 'जन्म $date';
  }

  @override
  String get genderUnknown => 'अनिर्दिष्ट';

  @override
  String get genderBoy => 'लड़का';

  @override
  String get genderGirl => 'लड़की';

  @override
  String get cannotDeleteOnlyProfile => 'एकमात्र बेबी प्रोफ़ाइल हटाई नहीं जा सकती';

  @override
  String deleteProfileTitle(String name) {
    return '$name हटाएं?';
  }

  @override
  String get deleteProfileContent => 'इस बेबी का सारा डेटा स्थायी रूप से हटा दिया जाएगा';

  @override
  String get graphsTitle => 'ग्राफ़';

  @override
  String get graphsTabDaily => 'दैनिक';

  @override
  String get graphsTabGrowth => 'वृद्धि';

  @override
  String get graphsTabHealth => 'स्वास्थ्य';

  @override
  String get graphsTabWho => 'WHO Charts';

  @override
  String get graphsTotalFeeds => 'कुल फीडिंग';

  @override
  String get graphsAvgPerDay => 'औसत/दिन';

  @override
  String get graphsTotalDiapers => 'डायपर';

  @override
  String get graphsTotalMilk => 'कुल दूध';

  @override
  String get graphsTotalSleep => 'कुल नींद';

  @override
  String get graphsAvgSleep => 'औसत नींद/दिन';

  @override
  String get graphsFeedsPerDay => 'प्रति दिन फीडिंग';

  @override
  String get graphsDiapersPerDay => 'प्रति दिन डायपर';

  @override
  String get graphsMilkPerDay => 'प्रति दिन दूध (मिली)';

  @override
  String get graphsSleepPerDay => 'प्रति दिन नींद (घंटे)';

  @override
  String get graphsWeightOverTime => 'समय के साथ वज़न';

  @override
  String get graphsTempOverTime => 'समय के साथ तापमान';

  @override
  String graphsMaxLabel(String value) {
    return 'अधिकतम: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'न्यूनतम: $value';
  }

  @override
  String get graphsNoWeightData => 'अभी कोई वज़न प्रविष्टि नहीं\nकिसी दिन की प्रविष्टियों से वज़न लॉग करें';

  @override
  String get graphsNoTempData => 'अभी कोई तापमान प्रविष्टि नहीं\nकिसी दिन से तापमान लॉग करें';

  @override
  String get timeLabel => 'समय';

  @override
  String get noColourRecorded => 'कोई रंग रिकॉर्ड नहीं';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन',
      one: '1 दिन',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count माह',
      one: '1 माह',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years वर्ष $months माह';
  }
}
