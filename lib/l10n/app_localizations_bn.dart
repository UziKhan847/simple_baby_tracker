// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'বেবি ট্র্যাকার';

  @override
  String get navHome => 'হোম';

  @override
  String get navGraphs => 'গ্রাফ';

  @override
  String get navMilestones => 'মাইলস্টোন';

  @override
  String get navSettings => 'সেটিংস';

  @override
  String get actionCancel => 'বাতিল';

  @override
  String get actionSave => 'সংরক্ষণ';

  @override
  String get actionUpdate => 'আপডেট';

  @override
  String get actionDelete => 'মুছুন';

  @override
  String get actionAdd => 'যোগ করুন';

  @override
  String get actionEdit => 'সম্পাদনা';

  @override
  String get actionClose => 'বন্ধ';

  @override
  String get actionExport => 'ডেটা এক্সপোর্ট';

  @override
  String get actionAddDay => 'দিন যোগ করুন';

  @override
  String get actionLog => 'লগ করুন';

  @override
  String get cannotUndo => 'এটি পূর্বাবস্থায় ফেরানো যাবে না।';

  @override
  String get noData => 'কোনো ডেটা নেই';

  @override
  String get noNotes => 'কোনো নোট নেই';

  @override
  String get noDetails => 'কোনো বিস্তারিত নেই';

  @override
  String get optional => '(ঐচ্ছিক)';

  @override
  String get homeTitle => 'ট্র্যাকার';

  @override
  String get feedsToday => 'আজকের খাবার';

  @override
  String get diapersToday => 'আজকের ডায়াপার';

  @override
  String get sleepToday => 'আজকের ঘুম';

  @override
  String todayLabel(String date) {
    return 'আজ — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি ঘটনা',
      one: '১টি ঘটনা',
      zero: 'কোনো ঘটনা নেই',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'দিনটি মুছবেন?';

  @override
  String deleteDayContent(String date) {
    return '$date এবং এর সব এন্ট্রি মুছবেন? এটি পূর্বাবস্থায় ফেরানো যাবে না।';
  }

  @override
  String get rashRecorded => 'ডায়াপার র্যাশ রেকর্ড করা হয়েছে';

  @override
  String get noEntriesYet => 'এখনও কোনো এন্ট্রি নেই';

  @override
  String get addEntry => 'এন্ট্রি যোগ করুন';

  @override
  String get deleteEntryTitle => 'এন্ট্রি মুছবেন?';

  @override
  String get entryTypeDiaper => 'ডায়াপার পরিবর্তন';

  @override
  String get entryTypeFeeding => 'খাবার';

  @override
  String get entryTypeSleep => 'ঘুম';

  @override
  String get entryTypeTemperature => 'তাপমাত্রা';

  @override
  String get entryTypeWeight => 'ওজন';

  @override
  String get entryTypeTummyTime => 'টামি টাইম (পেটের ওপর)';

  @override
  String get entryTypeMedication => 'ঔষধ';

  @override
  String get entryTypeDoctorVisit => 'ডাক্তারের দেখা';

  @override
  String get entryTypeNote => 'দৈনিক নোট / ডায়েরি';

  @override
  String get entryTypePumping => 'পাম্পিং সেশন';

  @override
  String get entryTypeBath => 'গোসল';

  @override
  String get diaperPeePoo => 'ডায়াপার — পেশাব + পায়খানা';

  @override
  String get diaperPee => 'ডায়াপার — পেশাব';

  @override
  String get diaperPoo => 'ডায়াপার — পায়খানা';

  @override
  String get diaperChange => 'ডায়াপার পরিবর্তন';

  @override
  String get editDiaper => 'ডায়াপার সম্পাদনা';

  @override
  String get diaperContents => 'বিষয়বস্তু';

  @override
  String get diaperNone => 'কিছুই না';

  @override
  String get diaperPeeLabel => 'পেশাব';

  @override
  String get diaperPooLabel => 'পায়খানা';

  @override
  String get diaperBoth => 'দুটোই';

  @override
  String get diaperConsistency => 'পায়খানার গঠন';

  @override
  String get consistencyHard => 'শক্ত / দানাদার';

  @override
  String get consistencyHardHint => 'কোষ্ঠকাঠিন্য';

  @override
  String get consistencyFirm => 'শক্তসার';

  @override
  String get consistencyFirmHint => 'হালকা শক্ত';

  @override
  String get consistencyNormal => 'স্বাভাবিক';

  @override
  String get consistencyNormalHint => 'স্বাস্থ্যকর';

  @override
  String get consistencySoft => 'নরম';

  @override
  String get consistencySoftHint => 'হালকা নরম';

  @override
  String get consistencyLoose => 'পাতলা / মরা মরা';

  @override
  String get consistencyLooseHint => 'নজর রাখুন';

  @override
  String get consistencyWatery => 'পানির মতো';

  @override
  String get consistencyWateryHint => 'ডায়রিয়া';

  @override
  String get warnConstipation => 'কোষ্ঠকাঠিন্যের লক্ষণ — ঘনিষ্ঠভাবে পর্যবেক্ষণ করুন';

  @override
  String get warnDiarrhea => 'ডায়রিয়ার লক্ষণ — ঘনিষ্ঠভাবে পর্যবেক্ষণ করুন';

  @override
  String get pooColourLabel => 'রং (নির্বাচনে ট্যাপ করুন)';

  @override
  String get pooColourAbnormal => '⚠️ অস্বাভাবিক (ফ্যাকাশে)';

  @override
  String get pooColourNormal => '✅ স্বাভাবিক';

  @override
  String pooColourSelected(String label) {
    return 'নির্বাচিত: $label';
  }

  @override
  String get diaperSize => 'ডায়াপারের সাইজ';

  @override
  String get diaperBrand => 'ব্র্যান্ড';

  @override
  String get diaperBrandCustomLabel => 'ব্র্যান্ডের নাম';

  @override
  String get rashPresent => 'ডায়াপার র্যাশ আছে';

  @override
  String get rashPresentHint => 'লালচে ভাব, জ্বালাপোড়া বা ডায়াপার র্যাশ';

  @override
  String get rashCreamUsed => 'র্যাশ ক্রিম ব্যবহার করা হয়েছে';

  @override
  String get rashCreamCustomLabel => 'ক্রিম / মলমের নাম';

  @override
  String get rashFollowUpTitle => '⚠️ র্যাশ ফলোআপ';

  @override
  String get rashFollowUpQuestion => 'শেষ ডায়াপারে র্যাশ রেকর্ড করা ছিল। কি উন্নতি হয়েছে?';

  @override
  String get rashImproved => 'হ্যাঁ, উন্নতি হয়েছে';

  @override
  String get rashNoChange => 'কোনো পরিবর্তন নেই / আরও খারাপ';

  @override
  String get addFeeding => 'খাবার যোগ করুন';

  @override
  String get editFeeding => 'খাবার সম্পাদনা';

  @override
  String feedLabel(int number) {
    return 'খাবার $number';
  }

  @override
  String get feedModeBottle => 'বোতল';

  @override
  String get feedModeSuckle => 'বুকের দুধ';

  @override
  String get feedAmountMl => 'পরিমাণ (মিলি)';

  @override
  String get feedType => 'ধরন';

  @override
  String get feedBreastMilk => 'মায়ের দুধ';

  @override
  String get feedFormula => 'ফর্মুলা';

  @override
  String get feedFormulaBrand => 'ফর্মুলার ব্র্যান্ড';

  @override
  String get feedFormulaBrandCustom => 'ফর্মুলা ব্র্যান্ডের নাম';

  @override
  String get feedDurationMinutes => 'সময়কাল (মিনিট)';

  @override
  String get addAnotherFeed => 'আরেকটি খাবার যোগ করুন';

  @override
  String get bottleBreastMilk => 'বোতল — মায়ের দুধ';

  @override
  String get bottleFormula => 'বোতল — ফর্মুলা';

  @override
  String get breastfeedingSuckle => 'বুকের দুধ খাওয়ানো';

  @override
  String get logSleep => 'ঘুম লগ করুন';

  @override
  String get editSleep => 'ঘুম সম্পাদনা';

  @override
  String get sleepStart => 'ঘুম শুরুর সময়';

  @override
  String get sleepWakeUp => 'জাগরণের সময়';

  @override
  String sleepDuration(String duration) {
    return 'সময়কাল: $duration';
  }

  @override
  String get sleepInvalidTimes => 'অবৈধ সময়';

  @override
  String get sleepWrapsNextDay => '(পরের দিন শেষ হয়)';

  @override
  String get sleepNotes => 'নোট (ঐচ্ছিক)';

  @override
  String get sleepNotesHint => 'যেমন: অস্থির, সামান্য জেগেছিল...';

  @override
  String get sleepNoNotes => 'কোনো নোট নেই';

  @override
  String sleepHoursShort(int h, int m) {
    return '$hঘ $mমি';
  }

  @override
  String get logTemperature => 'তাপমাত্রা লগ করুন';

  @override
  String get editTemperature => 'তাপমাত্রা সম্পাদনা';

  @override
  String get temperatureLabel => 'তাপমাত্রা';

  @override
  String get tempSeverityLow => 'নিম্ন তাপমাত্রা — পর্যবেক্ষণ করুন';

  @override
  String get tempSeverityNormal => 'স্বাভাবিক তাপমাত্রা';

  @override
  String get tempSeverityElevated => 'সামান্য বেড়েছে — ঘনিষ্ঠভাবে পর্যবেক্ষণ করুন';

  @override
  String get tempSeverityFever => 'জ্বর — ডাক্তারের পরামর্শ নিন';

  @override
  String get tempReference => 'তাপমাত্রার রেফারেন্স';

  @override
  String get tempRefLow => '< ৩৬.০ °C / ৯৬.৮ °F';

  @override
  String get tempRefNormal => '৩৬.০ – ৩৭.৪ °C / ৯৬.৮ – ৯৯.৩ °F';

  @override
  String get tempRefElevated => '৩৭.৫ – ৩৮.৪ °C / ৯৯.৫ – ১০১.১ °F';

  @override
  String get tempRefFever => '≥ ৩৮.৫ °C / ১০১.৩ °F';

  @override
  String get tempFeverWarning => '⚠️ ৩ মাসের কম বয়সী শিশুর জ্বরে সবসময় শিশু বিশেষজ্ঞের পরামর্শ নিন।';

  @override
  String get tempLow => 'নিম্ন';

  @override
  String get tempNormal => 'স্বাভাবিক';

  @override
  String get tempElevated => 'বৃদ্ধিপ্রাপ্ত';

  @override
  String get tempFever => 'জ্বর';

  @override
  String get tempLatest => 'সর্বশেষ তাপমাত্রা';

  @override
  String get tempSummary => 'তাপমাত্রার সারাংশ';

  @override
  String get tempFeverThreshold => 'জ্বরের সীমারেখা';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন',
      one: '১ দিন',
      zero: 'কোনো দিন নয়',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'ওজন লগ করুন';

  @override
  String get editWeight => 'ওজন সম্পাদনা';

  @override
  String get weightLabel => 'ওজন';

  @override
  String weightGain(String amount) {
    return '+$amount বৃদ্ধি';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount হ্রাস';
  }

  @override
  String weightPrevious(String weight) {
    return 'পূর্ববর্তী: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'সর্বশেষ রেকর্ড: $weight, $date তারিখে';
  }

  @override
  String get weightLatest => 'সর্বশেষ ওজন';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount নির্দিষ্ট সময়ে';
  }

  @override
  String get tummyTimeLog => 'টামি টাইম লগ করুন';

  @override
  String get tummyTimeEdit => 'টামি টাইম সম্পাদনা';

  @override
  String get tummyTimeStart => 'শুরু করার সময়';

  @override
  String get tummyTimeEnd => 'শেষ করার সময়';

  @override
  String get tummyTimeTip => 'টামি টাইম ঘাড় ও কাঁধের পেশি মজবুত করে।';

  @override
  String get medicationLog => 'ঔষধ লগ করুন';

  @override
  String get medicationEdit => 'ঔষধ সম্পাদনা';

  @override
  String get medicationName => 'ঔষধের নাম *';

  @override
  String get medicationDose => 'ডোজ';

  @override
  String get medicationUnit => 'একক';

  @override
  String get medicationCommon => 'সাধারণ ঔষধ';

  @override
  String get medicationWarning => 'ওজন/বয়স অনুযায়ী ডোজ নির্দেশনা মেনে চলুন। নির্ধারিত বারবারতা অতিক্রম করবেন না।';

  @override
  String get medicationNotes => 'নোট (ঐচ্ছিক)';

  @override
  String get medicationNotesHint => 'যেমন: কারণ, প্রতিক্রিয়া...';

  @override
  String get doctorVisitLog => 'ডাক্তারের দেখা';

  @override
  String get doctorVisitEdit => 'ডাক্তারের দেখা সম্পাদনা';

  @override
  String get doctorName => 'ডাক্তার / ক্লিনিকের নাম';

  @override
  String get doctorVisitReason => 'দেখা করার কারণ';

  @override
  String get doctorVisitMeasurements => 'মাপ (ঐচ্ছিক)';

  @override
  String get doctorVisitNotes => 'নোট';

  @override
  String get doctorVisitNotesHint => 'যেমন: দেওয়া টিকা, ডাক্তারের পরামর্শ...';

  @override
  String get measurementWeightKg => 'ওজন (কেজি)';

  @override
  String get measurementWeightLbs => 'ওজন (পাউন্ড)';

  @override
  String get measurementHeightCm => 'লম্বা / উচ্চতা (সেমি)';

  @override
  String get measurementHeadCm => 'মাথার পরিধি (সেমি)';

  @override
  String get dailyNoteLog => 'দৈনিক নোট';

  @override
  String get dailyNoteEdit => 'নোট সম্পাদনা';

  @override
  String get dailyNoteTitle => 'শিরোনাম (ঐচ্ছিক)';

  @override
  String get dailyNoteText => 'নোট';

  @override
  String get dailyNoteHint => 'আজ কী হলো? প্রথমবার গড়ানো? অস্থির সকাল?';

  @override
  String get dailyNoteTags => 'দ্রুত ট্যাগ';

  @override
  String get pumpingLog => 'পাম্পিং সেশন লগ করুন';

  @override
  String get pumpingEdit => 'পাম্পিং সেশন সম্পাদনা';

  @override
  String get pumpingLeft => 'বাম স্তন (মিলি)';

  @override
  String get pumpingRight => 'ডান স্তন (মিলি)';

  @override
  String get pumpingTotal => 'মোট পাম্পকৃত পরিমাণ';

  @override
  String get pumpingDuration => 'সময়কাল (মিনিট)';

  @override
  String get pumpingStored => 'সংরক্ষিত / হিমায়িত';

  @override
  String get pumpingNotes => 'নোট (ঐচ্ছিক)';

  @override
  String get pumpingSessionTitle => 'পাম্পিং';

  @override
  String pumpingTotalMl(int ml) {
    return 'মোট $ml মিলি';
  }

  @override
  String get bathLog => 'গোসল লগ করুন';

  @override
  String get bathEdit => 'গোসল সম্পাদনা';

  @override
  String get bathType => 'গোসলের ধরন';

  @override
  String get bathTypeSponge => 'স্পঞ্জ গোসল';

  @override
  String get bathTypeTub => 'টবে গোসল';

  @override
  String get bathTypeShower => 'শাওয়ার';

  @override
  String get bathNotes => 'নোট (ঐচ্ছিক)';

  @override
  String get bathProducts => 'ব্যবহৃত পণ্য (ঐচ্ছিক)';

  @override
  String get vaccineTitle => 'টিকাদান';

  @override
  String get vaccineTabGiven => 'দেওয়া হয়েছে';

  @override
  String get vaccineTabSchedule => 'তফসিল';

  @override
  String get vaccineLog => 'টিকা লগ করুন';

  @override
  String get vaccineEdit => 'টিকা সম্পাদনা';

  @override
  String get vaccineName => 'টিকার নাম';

  @override
  String get vaccineBrand => 'ব্র্যান্ড / প্রস্তুতকারক (ঐচ্ছিক)';

  @override
  String get vaccineDate => 'দেওয়ার তারিখ';

  @override
  String get vaccineDose => 'ডোজ নম্বর (ঐচ্ছিক)';

  @override
  String get vaccineSite => 'ইনজেকশনের স্থান (ঐচ্ছিক)';

  @override
  String get vaccineNotes => 'নোট / প্রতিক্রিয়া';

  @override
  String vaccineDue(String age) {
    return '$age বয়সে প্রাপ্য';
  }

  @override
  String get vaccineGiven => 'দেওয়া হয়েছে';

  @override
  String get vaccineNoGiven => 'এখনও কোনো টিকা লগ করা হয়নি।';

  @override
  String get vaccineMarkGiven => 'দেওয়া হয়েছে হিসেবে চিহ্নিত করুন';

  @override
  String get whoChartTitle => 'ডব্লিউএইচও গ্রোথ চার্ট';

  @override
  String get whoWeightForAge => 'বয়স অনুযায়ী ওজন';

  @override
  String get whoHeightForAge => 'বয়স অনুযায়ী লম্বা/উচ্চতা';

  @override
  String get whoHeadForAge => 'বয়স অনুযায়ী মাথার পরিধি';

  @override
  String get whoGenderBoy => 'ছেলে';

  @override
  String get whoGenderGirl => 'মেয়ে';

  @override
  String get whoNoData => 'এখনও কোনো পরিমাপ লগ করা হয়নি।\nচার্ট দেখতে দৈনিক এন্ট্রি থেকে ওজন লগ করুন।';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'আপনার শিশু';

  @override
  String whoAgeMonths(int n) {
    return '$n মাস';
  }

  @override
  String get whoNoBirthDate => 'বয়সভিত্তিক চার্ট দেখতে প্রোফাইলে শিশুর জন্মতারিখ সেট করুন।';

  @override
  String get notifTitle => 'রিমাইন্ডার';

  @override
  String get notifFeedingReminder => 'খাবার রিমাইন্ডার';

  @override
  String notifFeedingReminderDesc(int hours) {
    return '$hours ঘণ্টা পর আমাকে মনে করিয়ে দিন যদি কোনো খাবার লগ না করা হয়';
  }

  @override
  String get notifDiaperReminder => 'ডায়াপার রিমাইন্ডার';

  @override
  String notifDiaperReminderDesc(int hours) {
    return '$hours ঘণ্টা পর আমাকে মনে করিয়ে দিন যদি কোনো ডায়াপার লগ না করা হয়';
  }

  @override
  String get notifMedicationReminder => 'ঔষধ রিমাইন্ডার';

  @override
  String get notifEnabled => 'বিজ্ঞপ্তি সক্রিয়';

  @override
  String get notifDisabled => 'বিজ্ঞপ্তি নিষ্ক্রিয়';

  @override
  String get notifPermissionRequired => 'আপনার ডিভাইসের সেটিংসে বিজ্ঞপ্তি সক্রিয় করুন।';

  @override
  String get exportTitle => 'এক্সপোর্ট ও ব্যাকআপ';

  @override
  String get exportJson => 'JSON হিসেবে এক্সপোর্ট';

  @override
  String get exportPdf => 'PDF হিসেবে এক্সপোর্ট';

  @override
  String get exportPdfDesc => 'আপনার শিশু বিশেষজ্ঞের জন্য পাঠযোগ্য সারাংশ';

  @override
  String get exportGoogleDrive => 'Google Drive এ ব্যাকআপ';

  @override
  String get exportGenerating => 'রিপোর্ট তৈরি হচ্ছে...';

  @override
  String get milestoneTitle => 'মাইলস্টোন';

  @override
  String get milestoneTabAchieved => 'অর্জিত';

  @override
  String get milestoneTabUpcoming => 'আসন্ন';

  @override
  String get milestoneCustomAdd => 'কাস্টম মাইলস্টোন';

  @override
  String get milestoneDeleteTitle => 'মাইলস্টোন মুছবেন?';

  @override
  String get milestoneEdit => 'মাইলস্টোন সম্পাদনা';

  @override
  String get milestoneAdd => 'মাইলস্টোন যোগ করুন';

  @override
  String get milestoneName => 'মাইলস্টোনের নাম *';

  @override
  String get milestoneDate => 'অর্জনের তারিখ';

  @override
  String get milestoneNotes => 'নোট (ঐচ্ছিক)';

  @override
  String get milestoneNotesHint => 'মনে রাখার মতো কোনো বিবরণ...';

  @override
  String get milestoneNoAchieved => 'এখনও কোনো মাইলস্টোন লগ করা হয়নি।';

  @override
  String get milestoneAllDone => 'সমস্ত পূর্বনির্ধারিত মাইলস্টোন অর্জিত! 🎉';

  @override
  String get milestoneFirstSmile => '😊 প্রথম হাসি';

  @override
  String get milestoneFirstLaugh => '😂 প্রথম হাসি (সশব্দ)';

  @override
  String get milestoneFirstTooth => '🦷 প্রথম দাঁত';

  @override
  String get milestoneRolledBackTummy => '🔄 পিঠ থেকে পেটের ওপর গড়াল';

  @override
  String get milestoneRolledTummyBack => '🔄 পেট থেকে পিঠের ওপর গড়াল';

  @override
  String get milestoneSatUnsupported => '🧸 সমর্থন ছাড়া বসল';

  @override
  String get milestoneStartedCrawling => '🐣 হামাগুড়ি শুরু';

  @override
  String get milestonePulledToStand => '🏋️ ধরে দাঁড়াল';

  @override
  String get milestoneFirstSteps => '👣 প্রথম পদক্ষেপ';

  @override
  String get milestoneFirstWord => '💬 প্রথম কথা';

  @override
  String get milestoneFirstSolidFood => '🥣 প্রথম কঠিন খাবার';

  @override
  String get milestoneFirstHaircut => '✂️ প্রথম চুল কাটা';

  @override
  String get milestoneSleptThroughNight => '🌙 সারা রাত ঘুমিয়েছে';

  @override
  String get milestoneWavedBye => '👋 হাত নাড়িয়ে বাই-বাই জানাল';

  @override
  String get milestoneClappedHands => '👏 হাততালি দিল';

  @override
  String get milestoneFirstBirthday => '🎂 প্রথম জন্মদিন';

  @override
  String get settingsTitle => 'সেটিংস';

  @override
  String get settingsAppearance => 'আবির্ভাব';

  @override
  String get settingsDarkMode => 'ডার্ক মোড';

  @override
  String get settingsDarkActive => 'ডার্ক থিম সক্রিয়';

  @override
  String get settingsLightActive => 'লাইট থিম সক্রিয়';

  @override
  String get settingsUnits => 'একক';

  @override
  String get settingsWeightUnit => 'ওজনের একক';

  @override
  String get settingsTempUnit => 'তাপমাত্রার একক';

  @override
  String get settingsLanguage => 'ভাষা';

  @override
  String get settingsNotifications => 'বিজ্ঞপ্তি ও রিমাইন্ডার';

  @override
  String get settingsExport => 'এক্সপোর্ট ও ব্যাকআপ';

  @override
  String get settingsTips => 'টিপস';

  @override
  String get tipSwitchBabies => 'শিশু পরিবর্তন করুন';

  @override
  String get tipSwitchBabiesDesc => 'উপরে শিশুর অ্যাভাটারে ট্যাপ করে অপর শিশুতে স্যুইচ করুন বা নতুন প্রোফাইল যোগ করুন।';

  @override
  String get tipSwipeDelete => 'মুছতে বামে সোয়াইপ করুন';

  @override
  String get tipSwipeDeleteDesc => 'দিনের টাইল এবং পৃথক এন্ট্রিতে কাজ করে।';

  @override
  String get tipTapToEdit => 'যেকোনো এন্ট্রি সম্পাদনা করতে ট্যাপ করুন';

  @override
  String get tipMultipleFeeds => 'একাধিক খাবার লগ করুন';

  @override
  String get tipMultipleFeedsDesc => 'খাবার ফর্মে, \"আরেকটি খাবার যোগ করুন\" ট্যাপ করে একসঙ্গে বুকের দুধ + বোতল লগ করুন।';

  @override
  String get tipExportData => 'ডেটা এক্সপোর্ট করুন';

  @override
  String get tipExportDataDesc => 'হোম স্ক্রিনের শেয়ার আইকন ব্যবহার করে সব ডেটা JSON আকারে এক্সপোর্ট করুন।';

  @override
  String get babiesTitle => 'শিশু';

  @override
  String get addBaby => 'শিশু যোগ করুন';

  @override
  String get editProfile => 'প্রোফাইল সম্পাদনা';

  @override
  String get babyNameRequired => 'নাম *';

  @override
  String get babyDobOptional => 'জন্ম তারিখ (ঐচ্ছিক)';

  @override
  String babyBornOn(String date) {
    return '$date তারিখে জন্ম';
  }

  @override
  String get genderUnknown => 'অজানা';

  @override
  String get genderBoy => 'ছেলে';

  @override
  String get genderGirl => 'মেয়ে';

  @override
  String get cannotDeleteOnlyProfile => 'একমাত্র শিশু প্রোফাইল মুছতে পারবেন না।';

  @override
  String deleteProfileTitle(String name) {
    return '$name কে মুছবেন?';
  }

  @override
  String get deleteProfileContent => 'এই শিশুটির সমস্ত ডেটা স্থায়ীভাবে মুছে যাবে।';

  @override
  String get graphsTitle => 'গ্রাফ';

  @override
  String get graphsTabDaily => 'দৈনিক';

  @override
  String get graphsTabGrowth => 'বৃদ্ধি';

  @override
  String get graphsTabHealth => 'স্বাস্থ্য';

  @override
  String get graphsTabWho => 'ডব্লিউএইচও চার্ট';

  @override
  String get graphsTotalFeeds => 'মোট খাবার';

  @override
  String get graphsAvgPerDay => 'গড় / দিন';

  @override
  String get graphsTotalDiapers => 'ডায়াপার';

  @override
  String get graphsTotalMilk => 'মোট দুধ';

  @override
  String get graphsTotalSleep => 'মোট ঘুম';

  @override
  String get graphsAvgSleep => 'গড় ঘুম / দিন';

  @override
  String get graphsFeedsPerDay => 'প্রতিদিন খাবার';

  @override
  String get graphsDiapersPerDay => 'প্রতিদিন ডায়াপার';

  @override
  String get graphsMilkPerDay => 'প্রতিদিন দুধ (মিলি)';

  @override
  String get graphsSleepPerDay => 'প্রতিদিন ঘুম (ঘণ্টা)';

  @override
  String get graphsWeightOverTime => 'সময়ের সাথে ওজন';

  @override
  String get graphsTempOverTime => 'সময়ের সাথে তাপমাত্রা';

  @override
  String graphsMaxLabel(String value) {
    return 'সর্বোচ্চ: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'সর্বনিম্ন: $value';
  }

  @override
  String get graphsNoWeightData => 'এখনও কোনো ওজনের এন্ট্রি নেই।\nদৈনিক এন্ট্রি থেকে ওজন লগ করুন।';

  @override
  String get graphsNoTempData => 'এখনও কোনো তাপমাত্রার এন্ট্রি নেই।\nদিনে তাপমাত্রা লগ করুন।';

  @override
  String get timeLabel => 'সময়';

  @override
  String get noColourRecorded => 'কোনো রং রেকর্ড করা হয়নি';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন',
      one: '১ দিন',
      zero: 'নবজাতক',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count মাস',
      one: '১ মাস',
      zero: '১ মাসের কম',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years বছর $months মাস';
  }
}
