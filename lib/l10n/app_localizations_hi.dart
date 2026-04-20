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
  String get cannotUndo => 'इसे पूर्ववत नहीं किया जा सकता';

  @override
  String get noData => 'कोई डेटा नहीं';

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
  String get rashRecorded => 'रैश दर्ज किया गया';

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
  String get tipMultipleFeeds => 'एक साथ कई फीडिंग लॉग करें';

  @override
  String get tipMultipleFeedsDesc => 'फीडिंग फॉर्म में, \"एक और फीडिंग जोड़ें\" पर टैप करें';

  @override
  String get tipExportData => 'डेटा निर्यात करें';

  @override
  String get tipExportDataDesc => 'होम पर शेयर आइकन का उपयोग करें';

  @override
  String get tipTapToEdit => 'संपादित करने के लिए किसी भी प्रविष्टि पर टैप करें';

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
  String get noDetails => 'कोई विवरण नहीं';

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
