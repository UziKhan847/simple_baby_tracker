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
  String get exportJsonDesc => 'ব্যাকআপের জন্য কাঁচা ডেটা';

  @override
  String get exportPdf => 'PDF হিসেবে এক্সপোর্ট';

  @override
  String get exportPdfDesc => 'আপনার শিশু বিশেষজ্ঞের জন্য পাঠযোগ্য সারাংশ';

  @override
  String get importJson => 'JSON থেকে ইম্পোর্ট করুন';

  @override
  String get importJsonDesc => 'ব্যাকআপ ফাইল থেকে পুনরুদ্ধার করুন';

  @override
  String get importDialogTitle => 'ডেটা ইম্পোর্ট করবেন?';

  @override
  String get importDialogBody => 'মার্জ করলে ফাইলের এন্ট্রিগুলো আপনার বিদ্যমান ডেটার সাথে যোগ হবে। সব প্রতিস্থাপন করলে প্রথমে আপনার বিদ্যমান ডেটা মুছে যাবে।';

  @override
  String get importMerge => 'মার্জ করুন';

  @override
  String get importReplaceAll => 'সব প্রতিস্থাপন করুন';

  @override
  String get importSuccess => 'ইম্পোর্ট সম্পন্ন হয়েছে';

  @override
  String get importInvalidFile => 'এটি Baby Tracker এক্সপোর্ট ফাইলের মতো মনে হচ্ছে না।';

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
  String get milestoneAllDone => 'সমস্ত পূর্বনির্ধারিত মাইলস্টোন অর্জিত!';

  @override
  String get milestoneFirstSmile => 'প্রথম হাসি';

  @override
  String get milestoneFirstLaugh => 'প্রথম হাসি (সশব্দ)';

  @override
  String get milestoneFirstTooth => 'প্রথম দাঁত';

  @override
  String get milestoneRolledBackTummy => 'পিঠ থেকে পেটের ওপর গড়াল';

  @override
  String get milestoneRolledTummyBack => 'পেট থেকে পিঠের ওপর গড়াল';

  @override
  String get milestoneSatUnsupported => 'সমর্থন ছাড়া বসল';

  @override
  String get milestoneStartedCrawling => 'হামাগুড়ি শুরু';

  @override
  String get milestonePulledToStand => 'ধরে দাঁড়াল';

  @override
  String get milestoneFirstSteps => 'প্রথম পদক্ষেপ';

  @override
  String get milestoneFirstWord => 'প্রথম কথা';

  @override
  String get milestoneFirstSolidFood => 'প্রথম কঠিন খাবার';

  @override
  String get milestoneFirstHaircut => 'প্রথম চুল কাটা';

  @override
  String get milestoneSleptThroughNight => 'সারা রাত ঘুমিয়েছে';

  @override
  String get milestoneWavedBye => 'হাত নাড়িয়ে বাই-বাই জানাল';

  @override
  String get milestoneClappedHands => 'হাততালি দিল';

  @override
  String get milestoneFirstBirthday => 'প্রথম জন্মদিন';

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
  String get settingsVolumeUnit => 'Milk volume unit';

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
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

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

  @override
  String medicationLabel(String name) {
    return 'ঔষধ: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'ভিজিট';

  @override
  String doctorVisitLabel(String reason) {
    return 'ডাক্তারের দেখা — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 নোট';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'ডাঃ $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'কোনো ডাক্তার লেখা হয়নি';

  @override
  String get summaryPoosLabel => 'পায়খানা';

  @override
  String get summaryPeesLabel => 'পেশাব';

  @override
  String get summaryMilkLabel => 'দুধ মিলি';

  @override
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

  @override
  String get summaryBreastLabel => 'স্তন্যপান মি';

  @override
  String get summarySleepLabel => 'ঘুম';

  @override
  String get settingsOledMode => 'OLED (নিখাদ কালো)';

  @override
  String get settingsOledModeDesc => 'OLED স্ক্রিনে ব্যাটারি সাশ্রয়ে সম্পূর্ণ কালো ব্যাকগ্রাউন্ড ব্যবহার করুন';

  @override
  String get settingsImmersiveMode => 'ইমারসিভ মোড';

  @override
  String get settingsImmersiveModeDesc => 'সিস্টেম স্ট্যাটাস ও নেভিগেশন বার লুকান';

  @override
  String get navVaccinationsEntry => 'টিকাদান';

  @override
  String get whoChartsEntry => 'WHO বৃদ্ধি চার্ট';

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
