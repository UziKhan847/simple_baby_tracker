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
  String get exportJsonDesc => 'बैकअप के लिए रॉ डेटा';

  @override
  String get exportPdf => 'PDF के रूप में निर्यात करें';

  @override
  String get exportPdfDesc => 'आपके बाल रोग विशेषज्ञ के लिए पठनीय सारांश';

  @override
  String get importJson => 'JSON से आयात करें';

  @override
  String get importJsonDesc => 'बैकअप फ़ाइल से पुनर्स्थापित करें';

  @override
  String get importDialogTitle => 'डेटा आयात करें?';

  @override
  String get importDialogBody => 'मर्ज करने से फ़ाइल की प्रविष्टियाँ आपके मौजूदा डेटा के साथ जुड़ जाती हैं। सभी बदलें से पहले आपका मौजूदा डेटा हटा दिया जाता है।';

  @override
  String get importMerge => 'मर्ज करें';

  @override
  String get importReplaceAll => 'सभी बदलें';

  @override
  String get importSuccess => 'आयात पूर्ण हुआ';

  @override
  String get importInvalidFile => 'यह Baby Tracker एक्सपोर्ट फ़ाइल जैसी नहीं लगती।';

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
  String get milestoneAllDone => 'सभी पूर्वनिर्धारित चरण प्राप्त हो गए!';

  @override
  String get milestoneFirstSmile => 'पहली मुस्कान';

  @override
  String get milestoneFirstLaugh => 'पहली हँसी';

  @override
  String get milestoneFirstTooth => 'पहला दाँत';

  @override
  String get milestoneRolledBackTummy => 'पीठ से पेट के बल पलटा';

  @override
  String get milestoneRolledTummyBack => 'पेट से पीठ के बल पलटा';

  @override
  String get milestoneSatUnsupported => 'बिना सहारे बैठा';

  @override
  String get milestoneStartedCrawling => 'रेंगना शुरू किया';

  @override
  String get milestonePulledToStand => 'पकड़कर खड़ा हुआ';

  @override
  String get milestoneFirstSteps => 'पहले कदम';

  @override
  String get milestoneFirstWord => 'पहला शब्द';

  @override
  String get milestoneFirstSolidFood => 'पहला ठोस आहार';

  @override
  String get milestoneFirstHaircut => 'पहली बाल कटवाई';

  @override
  String get milestoneSleptThroughNight => 'रात भर सोया';

  @override
  String get milestoneWavedBye => 'हाथ हिलाकर बाय कहा';

  @override
  String get milestoneClappedHands => 'ताली बजाई';

  @override
  String get milestoneFirstBirthday => 'पहला जन्मदिन';

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
  String get settingsVolumeUnit => 'Milk volume unit';

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
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

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

  @override
  String medicationLabel(String name) {
    return 'दवाई: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'विज़िट';

  @override
  String doctorVisitLabel(String reason) {
    return 'डॉक्टर का दौरा — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 नोट';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'डॉ: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'कोई डॉक्टर दर्ज नहीं';

  @override
  String get summaryPoosLabel => 'मल';

  @override
  String get summaryPeesLabel => 'पेशाब';

  @override
  String get summaryMilkLabel => 'दूध मिली';

  @override
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

  @override
  String get summaryBreastLabel => 'स्तनपान मि';

  @override
  String get summarySleepLabel => 'नींद';

  @override
  String get settingsOledMode => 'OLED (शुद्ध काला)';

  @override
  String get settingsOledModeDesc => 'OLED स्क्रीन पर बैटरी बचाने के लिए शुद्ध काली पृष्ठभूमि का उपयोग करें';

  @override
  String get settingsImmersiveMode => 'इमर्सिव मोड';

  @override
  String get settingsImmersiveModeDesc => 'सिस्टम स्टेटस और नेविगेशन बार छुपाएं';

  @override
  String get navVaccinationsEntry => 'टीकाकरण';

  @override
  String get whoChartsEntry => 'WHO विकास चार्ट';

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
    return 'Woke $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Stop the sleep timer first';

  @override
  String get widgetStopFeedFirst => 'Stop the feeding timer first';

  @override
  String quickAddTitle(String name) {
    return 'Add for $name';
  }

  @override
  String get quickAddOpenApp => 'Open the app';
}
