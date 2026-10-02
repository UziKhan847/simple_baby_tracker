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
  String get exportJson => 'बैकअप निर्यात करें';

  @override
  String get exportJsonDesc => 'सारा डेटा और फ़ोटो एक .zip फ़ाइल में';

  @override
  String get exportPdf => 'PDF के रूप में निर्यात करें';

  @override
  String get exportPdfDesc => 'आपके बाल रोग विशेषज्ञ के लिए पठनीय सारांश';

  @override
  String get importJson => 'बैकअप बहाल करें';

  @override
  String get importJsonDesc => '.zip बैकअप से (या पुराने .json निर्यात से)';

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
  String get settingsVolumeUnit => 'दूध की मात्रा की इकाई';

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
  String get tipExportDataDesc => 'सारा डेटा और फ़ोटो एक फ़ाइल में सहेजने के लिए होम पर शेयर आइकन इस्तेमाल करें।';

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
  String get graphsMilkPerDayMl => 'प्रतिदिन दूध (ml)';

  @override
  String get graphsMilkPerDayOz => 'प्रतिदिन दूध (oz)';

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
  String get summaryMilkLabelMl => 'दूध ml';

  @override
  String get summaryMilkLabelOz => 'दूध oz';

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
  String get medicationEditTitle => 'दवाई बदलें';

  @override
  String get medicationLogTitle => 'दवाई दर्ज करें';

  @override
  String get medicationYourCourses => 'आपके उपचार';

  @override
  String get medicationManageCourses => 'उपचार प्रबंधित करें';

  @override
  String get medicationNameRequired => 'दवाई का नाम *';

  @override
  String get medicationDosageWarning => 'हमेशा वज़न/उम्र के अनुसार खुराक दें। सुझाई गई आवृत्ति से अधिक न दें।';

  @override
  String get medicationNotesOptional => 'नोट्स (वैकल्पिक)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count मिनट पहले',
      one: '1 मिनट पहले',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count घंटे पहले',
      one: '1 घंटा पहले',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन पहले',
      one: '1 दिन पहले',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'आख़िरी बार दी $ago';
  }

  @override
  String get medicationNeverGiven => 'अभी नहीं दी गई';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'आज $count खुराक',
      one: 'आज 1 खुराक',
      zero: 'आज कोई खुराक नहीं',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'अगली खुराक पिछली के $hours घंटे बाद ही दी जानी चाहिए';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'इस उपचार की प्रतिदिन $max की सीमा पूरी हो चुकी है';
  }

  @override
  String get medicationEditCourse => 'उपचार बदलें';

  @override
  String get medicationNewCourse => 'नया उपचार';

  @override
  String get medicationReasonOptional => 'कारण (वैकल्पिक)';

  @override
  String get medicationIntervalHoursOptional => 'हर कितने घंटे में (वैकल्पिक)';

  @override
  String get medicationMaxPerDayOptional => 'प्रतिदिन अधिकतम खुराक (वैकल्पिक)';

  @override
  String get medicationRemindNextDose => 'अगली खुराक के समय याद दिलाएँ';

  @override
  String medicationEndCourseTitle(String name) {
    return '$name बंद करें?';
  }

  @override
  String get medicationEndCoursePrompt => 'कैसा रहा?';

  @override
  String get medicationDeleteCourseTitle => 'यह उपचार हटाएँ?';

  @override
  String get medicationResultWorked => 'असर हुआ';

  @override
  String get medicationResultPartlyWorked => 'कुछ असर हुआ';

  @override
  String get medicationResultDidntWork => 'असर नहीं हुआ';

  @override
  String get medicationResultSideEffects => 'दुष्प्रभाव';

  @override
  String get medicationResultNone => 'रेटिंग नहीं';

  @override
  String get medicationsTitle => 'दवाइयाँ';

  @override
  String medicationActiveTab(int count) {
    return 'चालू ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'पिछले ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'कोई चालू उपचार नहीं।\n+ बटन से नया शुरू करें।';

  @override
  String get medicationNoPastCourses => 'अभी कोई पिछला उपचार नहीं।';

  @override
  String medicationTimesGiven(int count) {
    return '$count× दी गई';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'आख़िरी: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'अगली $time';
  }

  @override
  String get medicationEndCourse => 'उपचार बंद करें';

  @override
  String feedLastSideHint(String side) {
    return 'पिछली बार: $side';
  }

  @override
  String get feedSideLeft => 'बायाँ';

  @override
  String get feedSideRight => 'दायाँ';

  @override
  String get feedSideBoth => 'दोनों';

  @override
  String get feedSideLeftMinutes => 'बायाँ (मिनट)';

  @override
  String get feedSideRightMinutes => 'दायाँ (मिनट)';

  @override
  String get timeAgoJustNow => 'अभी-अभी';

  @override
  String get timeUntilOverdue => 'समय निकल गया';

  @override
  String timeUntilMinutes(int count) {
    return '$count मिनट में';
  }

  @override
  String timeUntilHours(int count) {
    return '$count घंटे में';
  }

  @override
  String timeUntilDays(int count) {
    return '$count दिन में';
  }

  @override
  String get timerDiscardTitle => 'यह टाइमर रद्द करें?';

  @override
  String get timerDiscard => 'रद्द करें';

  @override
  String timerFeedingRunning(String side) {
    return 'फीडिंग · $side';
  }

  @override
  String get timerSleepRunning => 'नींद का टाइमर चल रहा है';

  @override
  String get timerSwitchSide => 'तरफ़ बदलें';

  @override
  String get timerStop => 'रोकें';

  @override
  String get sinceLastFeed => 'आख़िरी फीड';

  @override
  String get sinceLastDiaper => 'आख़िरी डायपर';

  @override
  String get sinceAwake => 'जागा हुआ';

  @override
  String get sinceAsleep => 'सो रहा है';

  @override
  String nextDoseDue(String name) {
    return '$name का समय';
  }

  @override
  String get weighConditionNaked => 'बिना कपड़ों के';

  @override
  String get weighConditionDiaper => 'सिर्फ़ डायपर';

  @override
  String get weighConditionLightClothes => 'हल्के कपड़े';

  @override
  String get weighConditionDressed => 'कपड़ों में';

  @override
  String get weighCondition => 'वज़न के समय पहना था';

  @override
  String get growthMeasurementsOptional => 'अन्य माप (वैकल्पिक)';

  @override
  String get growthHeightCm => 'लंबाई (cm)';

  @override
  String get growthHeadCm => 'सिर की परिधि (cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'पिछली बार वज़न $condition लिया गया था — अंतर सिर्फ़ बढ़त का नहीं भी हो सकता';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm cm';
  }

  @override
  String growthHeadValue(String cm) {
    return 'सिर $cm cm';
  }

  @override
  String get growthHeightOverTime => 'समय के साथ लंबाई';

  @override
  String get growthHeadOverTime => 'समय के साथ सिर की परिधि';

  @override
  String get graphsRecentWeighIns => 'हाल के वज़न';

  @override
  String get solidsAmountFewSpoons => 'कुछ चम्मच';

  @override
  String get solidsAmountHalf => 'आधा हिस्सा';

  @override
  String get solidsAmountFull => 'पूरा हिस्सा';

  @override
  String get solidsAmountTaste => 'बस चखा';

  @override
  String get solidsReactionMild => 'हल्की प्रतिक्रिया';

  @override
  String get solidsReactionAllergic => 'एलर्जी की प्रतिक्रिया';

  @override
  String get solidsReactionNone => 'कोई प्रतिक्रिया नहीं';

  @override
  String get solidsEditTitle => 'ठोस आहार बदलें';

  @override
  String get solidsLogTitle => 'ठोस आहार दर्ज करें';

  @override
  String get solidsFoodsLabel => 'खाद्य पदार्थ';

  @override
  String get solidsAddFoodHint => 'खाद्य जोड़ें';

  @override
  String get solidsAmount => 'मात्रा';

  @override
  String get solidsLiked => 'पसंद आया?';

  @override
  String get solidsReaction => 'प्रतिक्रिया';

  @override
  String get solidsNotesOptional => 'नोट्स (वैकल्पिक)';

  @override
  String get foodsTitle => 'आज़माए गए खाद्य';

  @override
  String get foodsEmpty => 'अभी कोई ठोस आहार दर्ज नहीं।';

  @override
  String get foodsAllergensNotYet => 'आम एलर्जन जो अभी शुरू नहीं हुए';

  @override
  String foodsTriedCount(int count) {
    return '$count खाद्य आज़माए';
  }

  @override
  String foodsFirstTried(String date) {
    return 'पहली बार: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'ठोस आहार';

  @override
  String get feedAmountOz => 'मात्रा (oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'आख़िरी फीड के $interval बाद याद दिलाएँ';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'आख़िरी डायपर के $interval बाद याद दिलाएँ';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'हर $interval';
  }

  @override
  String get notifIntervalTitle => 'रिमाइंडर अंतराल';

  @override
  String get notifIntervalHours => 'घंटे';

  @override
  String get notifIntervalMinutes => 'मिनट';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'कम से कम $minutes मिनट';
  }

  @override
  String get settingsFeeding => 'फीडिंग';

  @override
  String get settingsTrackBottles => 'बोतलें ट्रैक करें';

  @override
  String get settingsTrackBottlesDesc => 'चुनें कि कौन-सी बोतल इस्तेमाल हुई, और कितना बनाया बनाम कितना पिया';

  @override
  String get bottlesTitle => 'मेरी बोतलें';

  @override
  String get bottlesEmpty => 'अभी कोई बोतल नहीं।\nअपनी बोतलें जोड़ें ताकि फीड दर्ज करते समय एक चुन सकें।';

  @override
  String get bottleAdd => 'बोतल जोड़ें';

  @override
  String get bottleEdit => 'बोतल बदलें';

  @override
  String get bottleLabel => 'लेबल / नंबर (जैसे #3)';

  @override
  String get bottleBrand => 'ब्रांड / प्रकार (वैकल्पिक)';

  @override
  String get bottleCapacity => 'क्षमता (वैकल्पिक)';

  @override
  String get bottleNipple => 'निपल का आकार / प्रवाह (वैकल्पिक)';

  @override
  String get bottleMaterial => 'सामग्री';

  @override
  String get bottleRetired => 'इस्तेमाल में नहीं';

  @override
  String get bottleRetire => 'इस्तेमाल बंद करें';

  @override
  String get bottleUnretire => 'फिर से इस्तेमाल करें';

  @override
  String bottleDeleteTitle(String name) {
    return '$name हटाएँ?';
  }

  @override
  String get bottleDeleteBody => 'पिछली फीड्स अपनी मात्रा रखेंगी लेकिन यह बोतल नहीं दिखाएँगी। इतिहास रखते हुए इसे सूची से छिपाने के लिए \"इस्तेमाल बंद करें\" चुनें।';

  @override
  String get feedPrepared => 'बनाया';

  @override
  String get feedDrank => 'पिया';

  @override
  String feedLeftover(String amount) {
    return '$amount बचा';
  }

  @override
  String get feedDrankMoreThanPrepared => 'बनाए से ज़्यादा?';

  @override
  String get feedWhichBottle => 'कौन-सी बोतल?';

  @override
  String get feedNoBottlesYet => 'अभी कोई बोतल नहीं — सेटिंग्स → मेरी बोतलें में जोड़ें।';

  @override
  String get photoPrivacyTitle => 'आपकी फ़ोटो इसी फ़ोन पर रहती हैं';

  @override
  String get photoPrivacyBody => 'फ़ोटो सिर्फ़ इस डिवाइस पर इसी ऐप के अंदर सहेजी जाती हैं। ऐप के पास इंटरनेट की पहुँच नहीं है, इसलिए कुछ भी अपलोड या शेयर नहीं होता जब तक आप ख़ुद बैकअप निर्यात न करें।\n\nपहली बार फ़ोटो लेते समय Android कैमरे की अनुमति माँग सकता है।';

  @override
  String get photoPrivacyContinue => 'जारी रखें';

  @override
  String get photoTakePhoto => 'फ़ोटो लें';

  @override
  String get photoChooseFromGallery => 'गैलरी से चुनें';

  @override
  String get photoCaption => 'कैप्शन';

  @override
  String get photoCompare => 'पहली बनाम नवीनतम';

  @override
  String get photoAddOtherDay => 'किसी और दिन के लिए जोड़ें';

  @override
  String get photoEmpty => 'अभी कोई फ़ोटो नहीं।\nरोज़ एक फ़ोटो लें और अपने बच्चे को बढ़ते देखें।';

  @override
  String get photoToday => 'आज की फ़ोटो';

  @override
  String get photoAddToday => 'आज की फ़ोटो जोड़ें';

  @override
  String get photoReplace => 'बदलें';

  @override
  String get photoDeleteTitle => 'यह फ़ोटो हटाएँ?';

  @override
  String get ageBeforeBirth => 'जन्म से पहले';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन का',
      one: '1 दिन का',
      zero: 'जन्म का दिन',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months माह $days दिन';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years वर्ष $months माह';
  }

  @override
  String get navMemories => 'यादें';

  @override
  String get memoriesTabPhotos => 'फ़ोटो';

  @override
  String get milestoneNoAchievedHint => 'पहले से तय चरण दर्ज करने के लिए \"आने वाले\" पर टैप करें,\nया अपना चरण जोड़ने के लिए नीचे का बटन इस्तेमाल करें।';

  @override
  String get skinTitle => 'त्वचा की समस्याएँ';

  @override
  String get skinNew => 'नई त्वचा समस्या';

  @override
  String get skinEdit => 'त्वचा समस्या बदलें';

  @override
  String skinTabActive(int count) {
    return 'चालू ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'ठीक हुईं ($count)';
  }

  @override
  String get skinEmptyActive => 'कोई त्वचा समस्या ट्रैक नहीं हो रही।\nशुरू करने के लिए + टैप करें — डॉक्टर को बदलाव दिखाने के लिए आप रोज़ फ़ोटो जोड़ सकते हैं।';

  @override
  String get skinEmptyHealed => 'अभी कुछ ठीक नहीं हुआ।';

  @override
  String get skinUpdateDue => 'आज अपडेट करें';

  @override
  String skinSince(String date) {
    return '$date से';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन',
      one: '1 दिन',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return '$date को ठीक हुई';
  }

  @override
  String skinReminderAt(String time) {
    return 'रोज़ $time बजे रिमाइंडर';
  }

  @override
  String get skinSeverityTrend => 'समय के साथ गंभीरता';

  @override
  String get skinNoUpdates => 'अभी कोई अपडेट नहीं। टाइमलाइन शुरू करने के लिए आज का अपडेट जोड़ें।';

  @override
  String get skinExportPdf => 'डॉक्टर के लिए निर्यात करें (PDF)';

  @override
  String get skinMarkHealed => 'ठीक हुआ चिह्नित करें';

  @override
  String get skinReopen => 'फिर से चालू चिह्नित करें';

  @override
  String get skinUpdateToday => 'आज का अपडेट जोड़ें';

  @override
  String get skinEditToday => 'आज का अपडेट बदलें';

  @override
  String skinDeleteTitle(String name) {
    return '$name और उसके सभी अपडेट हटाएँ?';
  }

  @override
  String get skinDeleteUpdateTitle => 'यह अपडेट हटाएँ?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'उपचार: $treatment';
  }

  @override
  String get skinName => 'समस्या *';

  @override
  String get skinBodyArea => 'शरीर पर कहाँ?';

  @override
  String get skinBegan => 'शुरू हुई';

  @override
  String get skinRemindDaily => 'रोज़ अपडेट करने की याद दिलाएँ';

  @override
  String get skinReminderTime => 'रिमाइंडर का समय';

  @override
  String get skinUpdateTitle => 'त्वचा अपडेट';

  @override
  String get skinSeverity => 'कैसी दिख रही है?';

  @override
  String get skinSeverity0 => '0 · साफ़';

  @override
  String get skinSeverity1 => '1 · हल्की';

  @override
  String get skinSeverity2 => '2 · मध्यम';

  @override
  String get skinSeverity3 => '3 · गंभीर';

  @override
  String get skinSeverity4 => '4 · बहुत गंभीर';

  @override
  String get skinTreatment => 'उपचार (वैकल्पिक)';

  @override
  String get skinTreatmentHint => 'जैसे मॉइस्चराइज़र, हाइड्रोकॉर्टिसोन 1%';

  @override
  String get skinAddPhoto => 'फ़ोटो जोड़ें';

  @override
  String get skinCardNone => 'रैश, एक्ज़िमा या त्वचा की किसी और समस्या को डॉक्टर के लिए फ़ोटो के साथ रोज़ ट्रैक करें';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count को आज का अपडेट चाहिए',
      one: '1 को आज का अपडेट चाहिए',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'बैकअप तैयार हो रहा है…';

  @override
  String get backupFailed => 'बैकअप नहीं बन सका।';

  @override
  String get backupSavedTo => 'बैकअप यहाँ सहेजा गया:';

  @override
  String get backupShareSubject => 'Baby Tracker बैकअप';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count फ़ोटो शामिल हैं।',
      one: '1 फ़ोटो शामिल है।',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'फीड';

  @override
  String get widgetStopFeed => 'फीड रोकें';

  @override
  String get widgetDiaper => 'डायपर';

  @override
  String get widgetSleep => 'नींद';

  @override
  String get widgetWakeUp => 'जाग गया';

  @override
  String widgetFeedingFor(String duration) {
    return 'फीडिंग $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'फीड $ago';
  }

  @override
  String get widgetNoFeedsYet => 'अभी कोई फीड नहीं';

  @override
  String widgetChangedAgo(String ago) {
    return 'बदला $ago';
  }

  @override
  String get widgetNoDiapersYet => 'अभी कोई डायपर नहीं';

  @override
  String widgetAsleepFor(String duration) {
    return 'सो रहा है $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'जागा $ago';
  }

  @override
  String get widgetStopSleepFirst => 'पहले नींद का टाइमर रोकें';

  @override
  String get widgetStopFeedFirst => 'पहले फीडिंग का टाइमर रोकें';

  @override
  String quickAddTitle(String name) {
    return '$name के लिए जोड़ें';
  }

  @override
  String get quickAddOpenApp => 'ऐप खोलें';

  @override
  String get foodPeanut => 'मूँगफली';

  @override
  String get foodEgg => 'अंडा';

  @override
  String get foodDairy => 'डेयरी';

  @override
  String get foodWheat => 'गेहूँ';

  @override
  String get foodSoy => 'सोया';

  @override
  String get foodFish => 'मछली';

  @override
  String get foodShellfish => 'शेलफ़िश / झींगा';

  @override
  String get foodTreeNuts => 'मेवे';

  @override
  String get foodSesame => 'तिल';

  @override
  String get foodBanana => 'केला';

  @override
  String get foodAvocado => 'एवोकाडो';

  @override
  String get foodSweetPotato => 'शकरकंद';

  @override
  String get foodRiceCereal => 'चावल का दलिया';

  @override
  String get foodOatmeal => 'ओट्स दलिया';

  @override
  String get foodCarrot => 'गाजर';

  @override
  String get foodApple => 'सेब';

  @override
  String get foodPea => 'मटर';

  @override
  String get symptomRash => 'चकत्ते';

  @override
  String get symptomHives => 'पित्ती';

  @override
  String get symptomVomiting => 'उल्टी';

  @override
  String get symptomDiarrhea => 'दस्त';

  @override
  String get symptomSwelling => 'सूजन';

  @override
  String get doseUnitDrops => 'बूँदें';

  @override
  String get doseUnitTablets => 'गोलियाँ';

  @override
  String get bottleMaterialPlastic => 'प्लास्टिक';

  @override
  String get bottleMaterialGlass => 'काँच';

  @override
  String get bottleMaterialSilicone => 'सिलिकॉन';

  @override
  String get bottleMaterialSteel => 'स्टेनलेस स्टील';

  @override
  String get visitReasonRoutine => 'नियमित जाँच';

  @override
  String get visitReasonSick => 'बीमारी';

  @override
  String get visitReasonVaccination => 'टीकाकरण';

  @override
  String get visitReasonSpecialist => 'विशेषज्ञ';

  @override
  String get visitReasonFollowUp => 'फ़ॉलो-अप';

  @override
  String get visitReasonOther => 'अन्य';

  @override
  String get pooColourPale => 'फीका';

  @override
  String get noteTagHappyDay => 'ख़ुशी का दिन';

  @override
  String get noteTagSleptWell => 'अच्छी नींद';

  @override
  String get noteTagFussy => 'चिड़चिड़ा';

  @override
  String get noteTagNotWell => 'तबीयत ठीक नहीं';

  @override
  String get noteTagFirstTime => 'पहली बार!';

  @override
  String get noteTagTeething => 'दाँत निकलना';

  @override
  String get noteTagGrowthSpurt => 'तेज़ बढ़त';

  @override
  String get noteTagMilestone => 'विकास का चरण';

  @override
  String get tummyTimeNotesHint => 'जैसे मज़ा आया, चिड़चिड़ा था...';

  @override
  String get skinSuggestEczema => 'एक्ज़िमा';

  @override
  String get skinSuggestDiaperRash => 'डायपर रैश';

  @override
  String get skinSuggestCradleCap => 'क्रैडल कैप (सिर की पपड़ी)';

  @override
  String get skinSuggestBabyAcne => 'शिशु मुँहासे';

  @override
  String get skinSuggestHeatRash => 'घमौरियाँ';

  @override
  String get skinSuggestDrySkin => 'रूखी त्वचा';

  @override
  String get bodyFace => 'चेहरा';

  @override
  String get bodyScalp => 'सिर की त्वचा';

  @override
  String get bodyNeck => 'गर्दन';

  @override
  String get bodyChest => 'छाती';

  @override
  String get bodyBack => 'पीठ';

  @override
  String get bodyArms => 'बाँहें';

  @override
  String get bodyHands => 'हाथ';

  @override
  String get bodyDiaperArea => 'डायपर वाली जगह';

  @override
  String get bodyLegs => 'टाँगें';

  @override
  String get bodyFeet => 'पैर';

  @override
  String get medSuggestGripeWater => 'ग्राइप वॉटर';

  @override
  String get medSuggestVitaminD => 'विटामिन D';

  @override
  String get medSuggestIronDrops => 'आयरन ड्रॉप्स';

  @override
  String get medSuggestAntibiotic => 'एंटीबायोटिक';

  @override
  String get medSuggestProbiotic => 'प्रोबायोटिक';

  @override
  String vaccinePageTitle(String name) {
    return '$name — टीकाकरण';
  }

  @override
  String get vaccineDeleteTitle => 'टीके का रिकॉर्ड हटाएँ?';

  @override
  String get vaccineSiteHint => 'जैसे बाईं जाँघ';

  @override
  String get vaccineNotesHint => 'जैसे हल्का बुखार, चिड़चिड़ापन, कोई प्रतिक्रिया नहीं...';

  @override
  String get vaccineNoGivenHint => '+ बटन इस्तेमाल करें या शेड्यूल टैब में \"लगा हुआ चिह्नित करें\" पर टैप करें।';

  @override
  String get vaccineAgeBirth => 'जन्म पर';

  @override
  String vaccineAgeMonths(String range) {
    return '$range माह';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range माह (हर साल)';
  }

  @override
  String get whoTabHeight => 'लंबाई';

  @override
  String get whoTabHead => 'सिर';

  @override
  String get whoChartFor => 'चार्ट:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 माह)';
  }

  @override
  String get whoNoDataPoints => 'अभी कोई डेटा नहीं। चार्ट पर अपने बच्चे को देखने के लिए माप दर्ज करें।';

  @override
  String get whoLatestMeasurement => 'नवीनतम माप';

  @override
  String whoApproxPercentile(String value) {
    return 'अनुमानित परसेंटाइल: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return '$low और $high के बीच';
  }

  @override
  String whoMonthsOld(String months) {
    return '$months माह का';
  }

  @override
  String get whoDisclaimer => 'ये चार्ट केवल जानकारी के लिए हैं। इनकी व्याख्या हमेशा बाल रोग विशेषज्ञ से करवाएँ।';

  @override
  String get whoMedian => 'P50 (माध्यिका)';

  @override
  String get notifChannelName => 'Baby Tracker रिमाइंडर';

  @override
  String get notifChannelDesc => 'फीडिंग, डायपर, दवाई और त्वचा जाँच के रिमाइंडर';

  @override
  String get notifFeedTitle => 'फीड का समय!';

  @override
  String notifFeedBody(String interval) {
    return 'पिछले $interval में कोई फीड दर्ज नहीं हुई।';
  }

  @override
  String get notifDiaperTitle => 'डायपर देखें!';

  @override
  String notifDiaperBody(String interval) {
    return 'पिछले $interval में कोई डायपर बदलाव दर्ज नहीं हुआ।';
  }

  @override
  String notifDoseTitle(String name) {
    return 'खुराक का समय: $name';
  }

  @override
  String notifDoseBody(String name) {
    return '$name की अगली खुराक का समय हो गया है।';
  }

  @override
  String notifSkinTitle(String name) {
    return 'त्वचा जाँच: $name';
  }

  @override
  String get notifSkinBody => 'आज का अपडेट जोड़ें (चाहें तो फ़ोटो भी)।';

  @override
  String get timerFeedingNotif => 'फीडिंग टाइमर चल रहा है';

  @override
  String intervalMinutes(String m) {
    return '$m मिनट';
  }

  @override
  String intervalHours(String h) {
    return '$h घंटे';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h घंटे $m मिनट';
  }

  @override
  String get settingsRtlActive => 'दाएँ से बाएँ लेआउट चालू है';

  @override
  String get measurementHeightIn => 'लंबाई (इंच)';

  @override
  String get measurementHeadIn => 'सिर की परिधि (इंच)';

  @override
  String get growthHeightIn => 'लंबाई (इंच)';

  @override
  String get growthHeadIn => 'सिर की परिधि (इंच)';

  @override
  String growthHeightValueIn(String value) {
    return '$value इंच';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'सिर $value इंच';
  }

  @override
  String get settingsLengthUnitNote => 'लंबाई वज़न की इकाई के साथ बदलती है (kg के साथ cm, lbs के साथ इंच)';

  @override
  String get formulaStoreBrand => 'स्टोर ब्रांड';

  @override
  String get pooShade1 => 'चॉक जैसा सफ़ेद';

  @override
  String get pooShade2 => 'हल्का स्लेटी';

  @override
  String get pooShade3 => 'मिट्टी जैसा स्लेटी';

  @override
  String get pooShade4 => 'क्रीम';

  @override
  String get pooShade5 => 'गहरा बेज';

  @override
  String get pooShade6 => 'फीका पीला-हरा';

  @override
  String get pooShade7 => 'सरसों जैसा पीला';

  @override
  String get pooShade8 => 'भूरा';

  @override
  String get pooShade9 => 'हरा';

  @override
  String get vaccineScheduleNote => 'अमेरिकी CDC शेड्यूल पर आधारित। आपके देश का शेड्यूल अलग हो सकता है — अपने डॉक्टर की सलाह मानें।';

  @override
  String get settingsAbout => 'ऐप के बारे में';

  @override
  String get aboutTitle => 'ऐप के बारे में और लाइसेंस';

  @override
  String aboutVersion(String version) {
    return 'संस्करण $version';
  }

  @override
  String get aboutLicenseLine => 'GNU जनरल पब्लिक लाइसेंस v3.0 या बाद के तहत जारी मुक्त सॉफ़्टवेयर। आप इसे उपयोग कर सकते हैं, इसका अध्ययन कर सकते हैं, साझा कर सकते हैं और बदल सकते हैं।';

  @override
  String get aboutSourceCode => 'सोर्स कोड';

  @override
  String get aboutDisclaimerTitle => 'चिकित्सीय सलाह नहीं';

  @override
  String get aboutDisclaimerBody => 'Simple Baby Tracker आपके अपने रिकॉर्ड के लिए एक डायरी है। यह कोई चिकित्सा उपकरण नहीं है और किसी स्थिति का निदान, इलाज या निगरानी नहीं करता। विकास चार्ट, तापमान की सीमाएँ, दवा के रिमाइंडर और मल के रंग के नोट केवल सामान्य जानकारी हैं और अधूरे या ग़लत हो सकते हैं। हमेशा अपने डॉक्टर या फ़ार्मासिस्ट की सलाह मानें, और अपने शिशु को लेकर चिंता हो तो उनसे या आपातकालीन सेवाओं से संपर्क करें।';

  @override
  String get aboutPrivacyTitle => 'आपका डेटा इसी फ़ोन पर रहता है';

  @override
  String get aboutPrivacyBody => 'ऐप के पास इंटरनेट की पहुँच, अकाउंट, विज्ञापन या एनालिटिक्स नहीं हैं। एंट्री और फ़ोटो सिर्फ़ इसी डिवाइस पर रखी जाती हैं। जब तक आप ख़ुद बैकअप निर्यात करके साझा न करें, कुछ भी बाहर नहीं जाता।';

  @override
  String get aboutCreditsTitle => 'श्रेय';

  @override
  String get aboutCreditsBody => 'आइकन: Claude Design से बनाए गए।\nफ़ॉन्ट: Inter और Quicksand (SIL Open Font License 1.1)।\nविकास चार्ट: WHO बाल विकास मानक (who.int)।\nटीकाकरण शेड्यूल: अमेरिकी CDC शेड्यूल पर आधारित।\nFlutter से बनाया गया।';

  @override
  String get aboutLicencesButton => 'ओपन-सोर्स लाइसेंस';
}
