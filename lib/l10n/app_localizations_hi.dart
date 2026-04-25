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
  String get navMilestones => 'विकास के चरण';

  @override
  String get navSettings => 'सेटिंग्स';

  @override
  String get actionCancel => 'रद्द करें';

  @override
  String get actionSave => 'सहेजें';

  @override
  String get actionUpdate => 'अपडेट करें';

  @override
  String get actionDelete => 'हटाएँ';

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
  String get actionLog => 'लॉग करें';

  @override
  String get cannotUndo => 'इसे पूर्ववत नहीं किया जा सकता।';

  @override
  String get noData => 'कोई डेटा नहीं';

  @override
  String get noNotes => 'कोई नोट नहीं';

  @override
  String get noDetails => 'कोई विवरण नहीं';

  @override
  String get optional => '(वैकल्पिक)';

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
  String get deleteDayTitle => 'दिन हटाएँ?';

  @override
  String deleteDayContent(String date) {
    return '$date और उसके सभी एंट्री हटाएँ? यह पूर्ववत नहीं किया जा सकता।';
  }

  @override
  String get rashRecorded => 'डायपर रैश रिकॉर्ड किया गया';

  @override
  String get noEntriesYet => 'अभी तक कोई एंट्री नहीं';

  @override
  String get addEntry => 'एंट्री जोड़ें';

  @override
  String get deleteEntryTitle => 'एंट्री हटाएँ?';

  @override
  String get entryTypeDiaper => 'डायपर बदलना';

  @override
  String get entryTypeFeeding => 'फीडिंग (दूध पिलाना)';

  @override
  String get entryTypeSleep => 'नींद';

  @override
  String get entryTypeTemperature => 'तापमान';

  @override
  String get entryTypeWeight => 'वज़न';

  @override
  String get entryTypeTummyTime => 'टमी टाइम (पेट के बल)';

  @override
  String get entryTypeMedication => 'दवाई';

  @override
  String get entryTypeDoctorVisit => 'डॉक्टर का दौरा';

  @override
  String get entryTypeNote => 'दैनिक नोट / डायरी';

  @override
  String get entryTypePumping => 'पम्पिंग सत्र';

  @override
  String get entryTypeBath => 'नहाना';

  @override
  String get diaperPeePoo => 'डायपर — पेशाब + मल';

  @override
  String get diaperPee => 'डायपर — पेशाब';

  @override
  String get diaperPoo => 'डायपर — मल';

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
  String get diaperConsistency => 'बनावट (कंसिस्टेंसी)';

  @override
  String get consistencyHard => 'कठोर / दानेदार';

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
  String get consistencySoft => 'नरम';

  @override
  String get consistencySoftHint => 'हल्का नरम';

  @override
  String get consistencyLoose => 'पतला / कीचड़ जैसा';

  @override
  String get consistencyLooseHint => 'निगरानी करें';

  @override
  String get consistencyWatery => 'पानी जैसा';

  @override
  String get consistencyWateryHint => 'दस्त';

  @override
  String get warnConstipation => 'कब्ज़ के संकेत — करीब से निगरानी करें';

  @override
  String get warnDiarrhea => 'दस्त के संकेत — करीब से निगरानी करें';

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
  String get rashPresent => 'डायपर रैश है';

  @override
  String get rashPresentHint => 'लालिमा, जलन या डायपर रैश';

  @override
  String get rashCreamUsed => 'रैश क्रीम इस्तेमाल की';

  @override
  String get rashCreamCustomLabel => 'क्रीम / मरहम का नाम';

  @override
  String get rashFollowUpTitle => '⚠️ रैश का फॉलोअप';

  @override
  String get rashFollowUpQuestion => 'आखिरी डायपर में रैश रिकॉर्ड था। क्या सुधार हुआ?';

  @override
  String get rashImproved => 'हाँ, सुधार हुआ';

  @override
  String get rashNoChange => 'कोई बदलाव नहीं / और खराब';

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
  String get feedAmountMl => 'मात्रा (मिलीलीटर)';

  @override
  String get feedType => 'प्रकार';

  @override
  String get feedBreastMilk => 'माँ का दूध';

  @override
  String get feedFormula => 'फार्मूला (शिशु दूध)';

  @override
  String get feedFormulaBrand => 'फार्मूले का ब्रांड';

  @override
  String get feedFormulaBrandCustom => 'फार्मूले के ब्रांड का नाम';

  @override
  String get feedDurationMinutes => 'अवधि (मिनट)';

  @override
  String get addAnotherFeed => 'एक और फीड जोड़ें';

  @override
  String get bottleBreastMilk => 'बोतल — माँ का दूध';

  @override
  String get bottleFormula => 'बोतल — फार्मूला';

  @override
  String get breastfeedingSuckle => 'स्तनपान (सीधे छाती से)';

  @override
  String get logSleep => 'नींद लॉग करें';

  @override
  String get editSleep => 'नींद संपादित करें';

  @override
  String get sleepStart => 'नींद की शुरुआत';

  @override
  String get sleepWakeUp => 'जागने का समय';

  @override
  String sleepDuration(String duration) {
    return 'अवधि: $duration';
  }

  @override
  String get sleepInvalidTimes => 'अमान्य समय';

  @override
  String get sleepWrapsNextDay => '(अगले दिन समाप्त होती है)';

  @override
  String get sleepNotes => 'नोट्स (वैकल्पिक)';

  @override
  String get sleepNotesHint => 'जैसे: बेचैन, थोड़ी देर के लिए जागा...';

  @override
  String get sleepNoNotes => 'कोई नोट नहीं';

  @override
  String sleepHoursShort(int h, int m) {
    return '$hघंटे $mमिनट';
  }

  @override
  String get logTemperature => 'तापमान लॉग करें';

  @override
  String get editTemperature => 'तापमान संपादित करें';

  @override
  String get temperatureLabel => 'तापमान';

  @override
  String get tempSeverityLow => 'कम तापमान — निगरानी करें';

  @override
  String get tempSeverityNormal => 'सामान्य तापमान';

  @override
  String get tempSeverityElevated => 'हल्का बढ़ा हुआ — करीब से निगरानी करें';

  @override
  String get tempSeverityFever => 'बुखार — अपने डॉक्टर से संपर्क करें';

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
  String get tempFeverWarning => '⚠️ 3 महीने से कम उम्र के शिशुओं में बुखार होने पर हमेशा बाल रोग विशेषज्ञ से सलाह लें।';

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
      zero: 'कोई दिन नहीं',
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
    return '+$amount बढ़ोतरी';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount कमी';
  }

  @override
  String weightPrevious(String weight) {
    return 'पिछला: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'अंतिम बार: $weight, $date को';
  }

  @override
  String get weightLatest => 'नवीनतम वज़न';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount अवधि के दौरान';
  }

  @override
  String get tummyTimeLog => 'टमी टाइम लॉग करें';

  @override
  String get tummyTimeEdit => 'टमी टाइम संपादित करें';

  @override
  String get tummyTimeStart => 'शुरू करने का समय';

  @override
  String get tummyTimeEnd => 'समाप्ति का समय';

  @override
  String get tummyTimeTip => 'टमी टाइम गर्दन और कंधों की मांसपेशियों को मजबूत बनाता है।';

  @override
  String get medicationLog => 'दवाई लॉग करें';

  @override
  String get medicationEdit => 'दवाई संपादित करें';

  @override
  String get medicationName => 'दवाई का नाम *';

  @override
  String get medicationDose => 'खुराक';

  @override
  String get medicationUnit => 'इकाई';

  @override
  String get medicationCommon => 'सामान्य दवाइयाँ';

  @override
  String get medicationWarning => 'वज़न/उम्र के अनुसार खुराक निर्देशों का पालन करें। अनुशंसित आवृत्ति से अधिक न करें।';

  @override
  String get medicationNotes => 'नोट्स (वैकल्पिक)';

  @override
  String get medicationNotesHint => 'जैसे: कारण, प्रतिक्रिया...';

  @override
  String get doctorVisitLog => 'डॉक्टर का दौरा';

  @override
  String get doctorVisitEdit => 'डॉक्टर के दौरे को संपादित करें';

  @override
  String get doctorName => 'डॉक्टर / क्लिनिक का नाम';

  @override
  String get doctorVisitReason => 'दौरे का कारण';

  @override
  String get doctorVisitMeasurements => 'माप (वैकल्पिक)';

  @override
  String get doctorVisitNotes => 'नोट्स';

  @override
  String get doctorVisitNotesHint => 'जैसे: दिए गए टीके, डॉक्टर की सिफारिशें...';

  @override
  String get measurementWeightKg => 'वज़न (किलोग्राम)';

  @override
  String get measurementWeightLbs => 'वज़न (पाउंड)';

  @override
  String get measurementHeightCm => 'लंबाई / ऊँचाई (सेंटीमीटर)';

  @override
  String get measurementHeadCm => 'सिर की परिधि (सेंटीमीटर)';

  @override
  String get dailyNoteLog => 'दैनिक नोट';

  @override
  String get dailyNoteEdit => 'नोट संपादित करें';

  @override
  String get dailyNoteTitle => 'शीर्षक (वैकल्पिक)';

  @override
  String get dailyNoteText => 'नोट';

  @override
  String get dailyNoteHint => 'आज क्या हुआ? पहली बार करवट बदली? चिड़चिड़ी सुबह?';

  @override
  String get dailyNoteTags => 'त्वरित टैग';

  @override
  String get pumpingLog => 'पम्पिंग सत्र लॉग करें';

  @override
  String get pumpingEdit => 'पम्पिंग सत्र संपादित करें';

  @override
  String get pumpingLeft => 'बायाँ स्तन (मिलीलीटर)';

  @override
  String get pumpingRight => 'दायाँ स्तन (मिलीलीटर)';

  @override
  String get pumpingTotal => 'कुल पम्प की गई मात्रा';

  @override
  String get pumpingDuration => 'अवधि (मिनट)';

  @override
  String get pumpingStored => 'संग्रहीत / जमे हुए';

  @override
  String get pumpingNotes => 'नोट्स (वैकल्पिक)';

  @override
  String get pumpingSessionTitle => 'पम्पिंग';

  @override
  String pumpingTotalMl(int ml) {
    return 'कुल $ml मिलीलीटर';
  }

  @override
  String get bathLog => 'नहाने का लॉग';

  @override
  String get bathEdit => 'नहाना संपादित करें';

  @override
  String get bathType => 'नहाने का प्रकार';

  @override
  String get bathTypeSponge => 'स्पंज से नहाना';

  @override
  String get bathTypeTub => 'टब में नहाना';

  @override
  String get bathTypeShower => 'शॉवर';

  @override
  String get bathNotes => 'नोट्स (वैकल्पिक)';

  @override
  String get bathProducts => 'उपयोग किए गए उत्पाद (वैकल्पिक)';

  @override
  String get vaccineTitle => 'टीकाकरण';

  @override
  String get vaccineTabGiven => 'दिए गए';

  @override
  String get vaccineTabSchedule => 'अनुसूची';

  @override
  String get vaccineLog => 'टीका लॉग करें';

  @override
  String get vaccineEdit => 'टीका संपादित करें';

  @override
  String get vaccineName => 'टीके का नाम';

  @override
  String get vaccineBrand => 'ब्रांड / निर्माता (वैकल्पिक)';

  @override
  String get vaccineDate => 'देने की तारीख';

  @override
  String get vaccineDose => 'खुराक संख्या (वैकल्पिक)';

  @override
  String get vaccineSite => 'इंजेक्शन का स्थान (वैकल्पिक)';

  @override
  String get vaccineNotes => 'नोट्स / प्रतिक्रियाएँ';

  @override
  String vaccineDue(String age) {
    return '$age उम्र में देय';
  }

  @override
  String get vaccineGiven => 'दिया गया';

  @override
  String get vaccineNoGiven => 'अभी तक कोई टीका लॉग नहीं किया गया।';

  @override
  String get vaccineMarkGiven => 'दिए गए के रूप में चिह्नित करें';

  @override
  String get whoChartTitle => 'डब्ल्यूएचओ विकास चार्ट';

  @override
  String get whoWeightForAge => 'उम्र के अनुसार वज़न';

  @override
  String get whoHeightForAge => 'उम्र के अनुसार लंबाई/ऊँचाई';

  @override
  String get whoHeadForAge => 'उम्र के अनुसार सिर की परिधि';

  @override
  String get whoGenderBoy => 'लड़का';

  @override
  String get whoGenderGirl => 'लड़की';

  @override
  String get whoNoData => 'अभी तक कोई माप लॉग नहीं किया गया।\nचार्ट देखने के लिए दिन की एंट्री से वज़न लॉग करें।';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'आपका शिशु';

  @override
  String whoAgeMonths(int n) {
    return '$n माह';
  }

  @override
  String get whoNoBirthDate => 'उम्र के अनुसार चार्ट देखने के लिए प्रोफाइल में शिशु की जन्मतिथि सेट करें।';

  @override
  String get notifTitle => 'रीमाइंडर';

  @override
  String get notifFeedingReminder => 'फीडिंग रीमाइंडर';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'अगर $hours घंटे में कोई फीड लॉग नहीं हुई तो मुझे याद दिलाएँ';
  }

  @override
  String get notifDiaperReminder => 'डायपर रीमाइंडर';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'अगर $hours घंटे में कोई डायपर लॉग नहीं हुआ तो मुझे याद दिलाएँ';
  }

  @override
  String get notifMedicationReminder => 'दवाई रीमाइंडर';

  @override
  String get notifEnabled => 'सूचनाएँ सक्षम हैं';

  @override
  String get notifDisabled => 'सूचनाएँ अक्षम हैं';

  @override
  String get notifPermissionRequired => 'कृपया अपने डिवाइस की सेटिंग्स में सूचनाएँ सक्षम करें।';

  @override
  String get exportTitle => 'निर्यात और बैकअप';

  @override
  String get exportJson => 'JSON के रूप में निर्यात करें';

  @override
  String get exportPdf => 'PDF के रूप में निर्यात करें';

  @override
  String get exportPdfDesc => 'आपके बाल रोग विशेषज्ञ के लिए पठनीय सारांश';

  @override
  String get exportGoogleDrive => 'Google Drive पर बैकअप लें';

  @override
  String get exportGenerating => 'रिपोर्ट तैयार की जा रही है...';

  @override
  String get milestoneTitle => 'विकास के चरण';

  @override
  String get milestoneTabAchieved => 'प्राप्त हुए';

  @override
  String get milestoneTabUpcoming => 'आगामी';

  @override
  String get milestoneCustomAdd => 'कस्टम चरण';

  @override
  String get milestoneDeleteTitle => 'चरण हटाएँ?';

  @override
  String get milestoneEdit => 'चरण संपादित करें';

  @override
  String get milestoneAdd => 'चरण जोड़ें';

  @override
  String get milestoneName => 'चरण का नाम *';

  @override
  String get milestoneDate => 'प्राप्त करने की तारीख';

  @override
  String get milestoneNotes => 'नोट्स (वैकल्पिक)';

  @override
  String get milestoneNotesHint => 'याद रखने लायक कोई विवरण...';

  @override
  String get milestoneNoAchieved => 'अभी तक कोई चरण प्राप्त नहीं हुआ।';

  @override
  String get milestoneAllDone => 'सभी पूर्वनिर्धारित चरण प्राप्त हो गए! 🎉';

  @override
  String get milestoneFirstSmile => '😊 पहली मुस्कान';

  @override
  String get milestoneFirstLaugh => '😂 पहली हँसी';

  @override
  String get milestoneFirstTooth => '🦷 पहला दाँत';

  @override
  String get milestoneRolledBackTummy => '🔄 पीठ से पेट के बल पलटा';

  @override
  String get milestoneRolledTummyBack => '🔄 पेट से पीठ के बल पलटा';

  @override
  String get milestoneSatUnsupported => '🧸 बिना सहारे बैठा';

  @override
  String get milestoneStartedCrawling => '🐣 रेंगना शुरू किया';

  @override
  String get milestonePulledToStand => '🏋️ पकड़कर खड़ा हुआ';

  @override
  String get milestoneFirstSteps => '👣 पहले कदम';

  @override
  String get milestoneFirstWord => '💬 पहला शब्द';

  @override
  String get milestoneFirstSolidFood => '🥣 पहला ठोस आहार';

  @override
  String get milestoneFirstHaircut => '✂️ पहली बाल कटवाई';

  @override
  String get milestoneSleptThroughNight => '🌙 रात भर सोया';

  @override
  String get milestoneWavedBye => '👋 हाथ हिलाकर बाय कहा';

  @override
  String get milestoneClappedHands => '👏 ताली बजाई';

  @override
  String get milestoneFirstBirthday => '🎂 पहला जन्मदिन';

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get settingsAppearance => 'दिखावट';

  @override
  String get settingsDarkMode => 'डार्क मोड';

  @override
  String get settingsDarkActive => 'डार्क थीम सक्रिय है';

  @override
  String get settingsLightActive => 'लाइट थीम सक्रिय है';

  @override
  String get settingsUnits => 'इकाइयाँ';

  @override
  String get settingsWeightUnit => 'वज़न इकाई';

  @override
  String get settingsTempUnit => 'तापमान इकाई';

  @override
  String get settingsLanguage => 'भाषा';

  @override
  String get settingsNotifications => 'सूचनाएँ और रीमाइंडर';

  @override
  String get settingsExport => 'निर्यात और बैकअप';

  @override
  String get settingsTips => 'टिप्स';

  @override
  String get tipSwitchBabies => 'शिशुओं के बीच स्विच करें';

  @override
  String get tipSwitchBabiesDesc => 'शिशु के अवतार (ऊपर) पर टैप करें ताकि स्विच करें या नया प्रोफाइल जोड़ें।';

  @override
  String get tipSwipeDelete => 'हटाने के लिए बाईं ओर स्वाइप करें';

  @override
  String get tipSwipeDeleteDesc => 'दिन की टाइलों और व्यक्तिगत एंट्री पर काम करता है।';

  @override
  String get tipTapToEdit => 'किसी भी एंट्री को संपादित करने के लिए टैप करें';

  @override
  String get tipMultipleFeeds => 'कई फीड लॉग करें';

  @override
  String get tipMultipleFeedsDesc => 'फीडिंग फॉर्म में, \"एक और फीड जोड़ें\" टैप करके स्तनपान और बोतल एक साथ लॉग करें।';

  @override
  String get tipExportData => 'डेटा निर्यात करें';

  @override
  String get tipExportDataDesc => 'होम स्क्रीन पर शेयर आइकन का उपयोग करके सभी डेटा JSON में निर्यात करें।';

  @override
  String get babiesTitle => 'शिशु';

  @override
  String get addBaby => 'शिशु जोड़ें';

  @override
  String get editProfile => 'प्रोफाइल संपादित करें';

  @override
  String get babyNameRequired => 'नाम *';

  @override
  String get babyDobOptional => 'जन्म तिथि (वैकल्पिक)';

  @override
  String babyBornOn(String date) {
    return '$date को जन्म';
  }

  @override
  String get genderUnknown => 'अज्ञात';

  @override
  String get genderBoy => 'लड़का';

  @override
  String get genderGirl => 'लड़की';

  @override
  String get cannotDeleteOnlyProfile => 'एकमात्र शिशु प्रोफाइल को हटाया नहीं जा सकता।';

  @override
  String deleteProfileTitle(String name) {
    return '$name को हटाएँ?';
  }

  @override
  String get deleteProfileContent => 'इस शिशु का सारा डेटा स्थायी रूप से हटा दिया जाएगा।';

  @override
  String get graphsTitle => 'ग्राफ़';

  @override
  String get graphsTabDaily => 'दैनिक';

  @override
  String get graphsTabGrowth => 'विकास';

  @override
  String get graphsTabHealth => 'स्वास्थ्य';

  @override
  String get graphsTabWho => 'डब्ल्यूएचओ चार्ट';

  @override
  String get graphsTotalFeeds => 'कुल फीड';

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
  String get graphsFeedsPerDay => 'प्रति दिन फीड';

  @override
  String get graphsDiapersPerDay => 'प्रति दिन डायपर';

  @override
  String get graphsMilkPerDay => 'प्रति दिन दूध (मिलीलीटर)';

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
  String get graphsNoWeightData => 'अभी तक कोई वज़न एंट्री नहीं।\nदिन की एंट्री से वज़न लॉग करें।';

  @override
  String get graphsNoTempData => 'अभी तक कोई तापमान एंट्री नहीं।\nदिन में तापमान लॉग करें।';

  @override
  String get timeLabel => 'समय';

  @override
  String get noColourRecorded => 'कोई रंग रिकॉर्ड नहीं किया गया';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन',
      one: '1 दिन',
      zero: 'नवजात',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count महीने',
      one: '1 महीना',
      zero: '1 महीने से कम',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years साल $months महीने';
  }
}
