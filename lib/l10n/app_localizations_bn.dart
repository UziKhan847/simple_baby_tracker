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
  String get exportJson => 'ব্যাকআপ এক্সপোর্ট করুন';

  @override
  String get exportJsonDesc => 'সব ডেটা ও ছবি একটি .zip ফাইলে';

  @override
  String get exportPdf => 'PDF হিসেবে এক্সপোর্ট';

  @override
  String get exportPdfDesc => 'আপনার শিশু বিশেষজ্ঞের জন্য পাঠযোগ্য সারাংশ';

  @override
  String get importJson => 'ব্যাকআপ পুনরুদ্ধার করুন';

  @override
  String get importJsonDesc => '.zip ব্যাকআপ থেকে (বা পুরোনো .json এক্সপোর্ট থেকে)';

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
  String get settingsVolumeUnit => 'দুধের পরিমাণের একক';

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
  String get tipExportDataDesc => 'সব ডেটা ও ছবি একটি ফাইলে ব্যাকআপ করতে হোমে শেয়ার আইকন ব্যবহার করুন।';

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
  String get graphsMilkPerDayMl => 'দৈনিক দুধ (ml)';

  @override
  String get graphsMilkPerDayOz => 'দৈনিক দুধ (oz)';

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
  String get summaryMilkLabelMl => 'দুধ ml';

  @override
  String get summaryMilkLabelOz => 'দুধ oz';

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
  String get medicationEditTitle => 'ঔষধ সম্পাদনা';

  @override
  String get medicationLogTitle => 'ঔষধ লগ করুন';

  @override
  String get medicationYourCourses => 'আপনার চিকিৎসা';

  @override
  String get medicationManageCourses => 'চিকিৎসা পরিচালনা';

  @override
  String get medicationNameRequired => 'ঔষধের নাম *';

  @override
  String get medicationDosageWarning => 'সবসময় ওজন/বয়স অনুযায়ী ডোজ দিন। প্রস্তাবিত সংখ্যার বেশি দেবেন না।';

  @override
  String get medicationNotesOptional => 'নোট (ঐচ্ছিক)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count মিনিট আগে',
      one: '1 মিনিট আগে',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ঘণ্টা আগে',
      one: '1 ঘণ্টা আগে',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন আগে',
      one: '1 দিন আগে',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'শেষ দেওয়া হয়েছে $ago';
  }

  @override
  String get medicationNeverGiven => 'এখনও দেওয়া হয়নি';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'আজ $countটি ডোজ',
      one: 'আজ 1টি ডোজ',
      zero: 'আজ কোনো ডোজ নেই',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'পরের ডোজ আগেরটির $hours ঘণ্টা পরে দিতে হবে';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'এই চিকিৎসার দৈনিক $max সীমা ইতিমধ্যে পূর্ণ';
  }

  @override
  String get medicationEditCourse => 'চিকিৎসা সম্পাদনা';

  @override
  String get medicationNewCourse => 'নতুন চিকিৎসা';

  @override
  String get medicationReasonOptional => 'কারণ (ঐচ্ছিক)';

  @override
  String get medicationIntervalHoursOptional => 'প্রতি কত ঘণ্টায় (ঐচ্ছিক)';

  @override
  String get medicationMaxPerDayOptional => 'দৈনিক সর্বোচ্চ ডোজ (ঐচ্ছিক)';

  @override
  String get medicationRemindNextDose => 'পরের ডোজের সময় মনে করিয়ে দিন';

  @override
  String medicationEndCourseTitle(String name) {
    return '$name শেষ করবেন?';
  }

  @override
  String get medicationEndCoursePrompt => 'কেমন হলো?';

  @override
  String get medicationDeleteCourseTitle => 'এই চিকিৎসা মুছবেন?';

  @override
  String get medicationResultWorked => 'কাজ করেছে';

  @override
  String get medicationResultPartlyWorked => 'কিছুটা কাজ করেছে';

  @override
  String get medicationResultDidntWork => 'কাজ করেনি';

  @override
  String get medicationResultSideEffects => 'পার্শ্বপ্রতিক্রিয়া';

  @override
  String get medicationResultNone => 'মূল্যায়ন নেই';

  @override
  String get medicationsTitle => 'ঔষধ';

  @override
  String medicationActiveTab(int count) {
    return 'চলমান ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'আগের ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'কোনো চলমান চিকিৎসা নেই।\n+ বোতাম দিয়ে শুরু করুন।';

  @override
  String get medicationNoPastCourses => 'এখনও কোনো আগের চিকিৎসা নেই।';

  @override
  String medicationTimesGiven(int count) {
    return '$count× দেওয়া হয়েছে';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'শেষ: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'পরের $time';
  }

  @override
  String get medicationEndCourse => 'চিকিৎসা শেষ করুন';

  @override
  String feedLastSideHint(String side) {
    return 'গতবার: $side';
  }

  @override
  String get feedSideLeft => 'বাম';

  @override
  String get feedSideRight => 'ডান';

  @override
  String get feedSideBoth => 'দুটোই';

  @override
  String get feedSideLeftMinutes => 'বাম (মিনিট)';

  @override
  String get feedSideRightMinutes => 'ডান (মিনিট)';

  @override
  String get timeAgoJustNow => 'এইমাত্র';

  @override
  String get timeUntilOverdue => 'সময় পেরিয়ে গেছে';

  @override
  String timeUntilMinutes(int count) {
    return '$count মিনিটে';
  }

  @override
  String timeUntilHours(int count) {
    return '$count ঘণ্টায়';
  }

  @override
  String timeUntilDays(int count) {
    return '$count দিনে';
  }

  @override
  String get timerDiscardTitle => 'এই টাইমার বাতিল করবেন?';

  @override
  String get timerDiscard => 'বাতিল';

  @override
  String timerFeedingRunning(String side) {
    return 'খাওয়ানো · $side';
  }

  @override
  String get timerSleepRunning => 'ঘুমের টাইমার চলছে';

  @override
  String get timerSwitchSide => 'পাশ বদলান';

  @override
  String get timerStop => 'থামান';

  @override
  String get sinceLastFeed => 'শেষ খাওয়া';

  @override
  String get sinceLastDiaper => 'শেষ ডায়াপার';

  @override
  String get sinceAwake => 'জেগে আছে';

  @override
  String get sinceAsleep => 'ঘুমিয়ে আছে';

  @override
  String nextDoseDue(String name) {
    return '$name-এর সময়';
  }

  @override
  String get weighConditionNaked => 'পোশাক ছাড়া';

  @override
  String get weighConditionDiaper => 'শুধু ডায়াপার';

  @override
  String get weighConditionLightClothes => 'হালকা পোশাক';

  @override
  String get weighConditionDressed => 'পোশাক পরে';

  @override
  String get weighCondition => 'ওজনের সময় পরনে';

  @override
  String get growthMeasurementsOptional => 'অন্যান্য মাপ (ঐচ্ছিক)';

  @override
  String get growthHeightCm => 'উচ্চতা (cm)';

  @override
  String get growthHeadCm => 'মাথার পরিধি (cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'গতবার ওজন নেওয়া হয়েছিল $condition — পার্থক্যটা শুধু বৃদ্ধির কারণে নাও হতে পারে';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm cm';
  }

  @override
  String growthHeadValue(String cm) {
    return 'মাথা $cm cm';
  }

  @override
  String get growthHeightOverTime => 'সময়ের সাথে উচ্চতা';

  @override
  String get growthHeadOverTime => 'সময়ের সাথে মাথার পরিধি';

  @override
  String get graphsRecentWeighIns => 'সাম্প্রতিক ওজন';

  @override
  String get solidsAmountFewSpoons => 'কয়েক চামচ';

  @override
  String get solidsAmountHalf => 'অর্ধেক পরিমাণ';

  @override
  String get solidsAmountFull => 'পুরো পরিমাণ';

  @override
  String get solidsAmountTaste => 'শুধু চেখেছে';

  @override
  String get solidsReactionMild => 'হালকা প্রতিক্রিয়া';

  @override
  String get solidsReactionAllergic => 'অ্যালার্জির প্রতিক্রিয়া';

  @override
  String get solidsReactionNone => 'কোনো প্রতিক্রিয়া নেই';

  @override
  String get solidsEditTitle => 'শক্ত খাবার সম্পাদনা';

  @override
  String get solidsLogTitle => 'শক্ত খাবার লগ করুন';

  @override
  String get solidsFoodsLabel => 'খাবার';

  @override
  String get solidsAddFoodHint => 'খাবার যোগ করুন';

  @override
  String get solidsAmount => 'পরিমাণ';

  @override
  String get solidsLiked => 'পছন্দ হয়েছে?';

  @override
  String get solidsReaction => 'প্রতিক্রিয়া';

  @override
  String get solidsNotesOptional => 'নোট (ঐচ্ছিক)';

  @override
  String get foodsTitle => 'চেখে দেখা খাবার';

  @override
  String get foodsEmpty => 'এখনও কোনো শক্ত খাবার লগ করা হয়নি।';

  @override
  String get foodsAllergensNotYet => 'সাধারণ অ্যালার্জেন যা এখনও দেওয়া হয়নি';

  @override
  String foodsTriedCount(int count) {
    return '$countটি খাবার চেখেছে';
  }

  @override
  String foodsFirstTried(String date) {
    return 'প্রথম: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'শক্ত খাবার';

  @override
  String get feedAmountOz => 'পরিমাণ (oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'শেষ খাওয়ার $interval পরে মনে করিয়ে দিন';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'শেষ ডায়াপারের $interval পরে মনে করিয়ে দিন';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'প্রতি $interval';
  }

  @override
  String get notifIntervalTitle => 'রিমাইন্ডারের ব্যবধান';

  @override
  String get notifIntervalHours => 'ঘণ্টা';

  @override
  String get notifIntervalMinutes => 'মিনিট';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'অন্তত $minutes মিনিট';
  }

  @override
  String get settingsFeeding => 'খাওয়ানো';

  @override
  String get settingsTrackBottles => 'বোতল ট্র্যাক করুন';

  @override
  String get settingsTrackBottlesDesc => 'কোন বোতল ব্যবহার হলো, এবং কতটা তৈরি হলো আর কতটা খেল তা বেছে নিন';

  @override
  String get bottlesTitle => 'আমার বোতল';

  @override
  String get bottlesEmpty => 'এখনও কোনো বোতল নেই।\nআপনার বোতলগুলো যোগ করুন যাতে খাওয়ানো লগ করার সময় একটি বেছে নিতে পারেন।';

  @override
  String get bottleAdd => 'বোতল যোগ করুন';

  @override
  String get bottleEdit => 'বোতল সম্পাদনা';

  @override
  String get bottleLabel => 'লেবেল / নম্বর (যেমন #3)';

  @override
  String get bottleBrand => 'ব্র্যান্ড / ধরন (ঐচ্ছিক)';

  @override
  String get bottleCapacity => 'ধারণক্ষমতা (ঐচ্ছিক)';

  @override
  String get bottleNipple => 'নিপলের আকার / প্রবাহ (ঐচ্ছিক)';

  @override
  String get bottleMaterial => 'উপাদান';

  @override
  String get bottleRetired => 'ব্যবহার বন্ধ';

  @override
  String get bottleRetire => 'ব্যবহার বন্ধ করুন';

  @override
  String get bottleUnretire => 'আবার ব্যবহার করুন';

  @override
  String bottleDeleteTitle(String name) {
    return '$name মুছবেন?';
  }

  @override
  String get bottleDeleteBody => 'আগের খাওয়ানোগুলো পরিমাণ রাখবে কিন্তু এই বোতল আর দেখাবে না। ইতিহাস রেখে তালিকা থেকে লুকাতে \"ব্যবহার বন্ধ করুন\" বেছে নিন।';

  @override
  String get feedPrepared => 'তৈরি';

  @override
  String get feedDrank => 'খেয়েছে';

  @override
  String feedLeftover(String amount) {
    return '$amount বাকি';
  }

  @override
  String get feedDrankMoreThanPrepared => 'তৈরির চেয়ে বেশি?';

  @override
  String get feedWhichBottle => 'কোন বোতল?';

  @override
  String get feedNoBottlesYet => 'এখনও কোনো বোতল নেই — সেটিংস → আমার বোতল-এ যোগ করুন।';

  @override
  String get photoPrivacyTitle => 'আপনার ছবি এই ফোনেই থাকে';

  @override
  String get photoPrivacyBody => 'ছবি শুধু এই ডিভাইসে এই অ্যাপের ভেতরে সংরক্ষিত হয়। অ্যাপটির ইন্টারনেট অ্যাক্সেস নেই, তাই আপনি নিজে ব্যাকআপ এক্সপোর্ট না করলে কিছুই আপলোড বা শেয়ার হয় না।\n\nপ্রথমবার ছবি তোলার সময় Android ক্যামেরার অনুমতি চাইতে পারে।';

  @override
  String get photoPrivacyContinue => 'চালিয়ে যান';

  @override
  String get photoTakePhoto => 'ছবি তুলুন';

  @override
  String get photoChooseFromGallery => 'গ্যালারি থেকে বাছুন';

  @override
  String get photoCaption => 'ক্যাপশন';

  @override
  String get photoCompare => 'প্রথম বনাম সর্বশেষ';

  @override
  String get photoAddOtherDay => 'অন্য দিনের জন্য যোগ করুন';

  @override
  String get photoEmpty => 'এখনও কোনো ছবি নেই।\nপ্রতিদিন একটি ছবি তুলুন আর শিশুকে বড় হতে দেখুন।';

  @override
  String get photoToday => 'আজকের ছবি';

  @override
  String get photoAddToday => 'আজকের ছবি যোগ করুন';

  @override
  String get photoReplace => 'বদলান';

  @override
  String get photoDeleteTitle => 'এই ছবি মুছবেন?';

  @override
  String get ageBeforeBirth => 'জন্মের আগে';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন বয়স',
      one: '1 দিন বয়স',
      zero: 'জন্মদিন',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months মাস $days দিন';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years বছর $months মাস';
  }

  @override
  String get navMemories => 'স্মৃতি';

  @override
  String get memoriesTabPhotos => 'ছবি';

  @override
  String get milestoneNoAchievedHint => 'তৈরি করা মাইলস্টোন লগ করতে \"আসন্ন\" ট্যাপ করুন,\nবা নিজের জন্য নিচের বোতাম ব্যবহার করুন।';

  @override
  String get skinTitle => 'ত্বকের সমস্যা';

  @override
  String get skinNew => 'নতুন ত্বকের সমস্যা';

  @override
  String get skinEdit => 'ত্বকের সমস্যা সম্পাদনা';

  @override
  String skinTabActive(int count) {
    return 'চলমান ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'সেরে গেছে ($count)';
  }

  @override
  String get skinEmptyActive => 'কোনো ত্বকের সমস্যা ট্র্যাক হচ্ছে না।\nশুরু করতে + ট্যাপ করুন — ডাক্তারকে পরিবর্তন দেখাতে প্রতিদিন একটি ছবি যোগ করতে পারেন।';

  @override
  String get skinEmptyHealed => 'এখনও কিছু সারেনি।';

  @override
  String get skinUpdateDue => 'আজ আপডেট করুন';

  @override
  String skinSince(String date) {
    return '$date থেকে';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন',
      one: '1 দিন',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return '$date-এ সেরেছে';
  }

  @override
  String skinReminderAt(String time) {
    return 'প্রতিদিন $time-এ রিমাইন্ডার';
  }

  @override
  String get skinSeverityTrend => 'সময়ের সাথে তীব্রতা';

  @override
  String get skinNoUpdates => 'এখনও কোনো আপডেট নেই। টাইমলাইন শুরু করতে আজকেরটি যোগ করুন।';

  @override
  String get skinExportPdf => 'ডাক্তারের জন্য এক্সপোর্ট (PDF)';

  @override
  String get skinMarkHealed => 'সেরে গেছে চিহ্নিত করুন';

  @override
  String get skinReopen => 'আবার চলমান চিহ্নিত করুন';

  @override
  String get skinUpdateToday => 'আজকের আপডেট যোগ করুন';

  @override
  String get skinEditToday => 'আজকের আপডেট সম্পাদনা';

  @override
  String skinDeleteTitle(String name) {
    return '$name ও এর সব আপডেট মুছবেন?';
  }

  @override
  String get skinDeleteUpdateTitle => 'এই আপডেট মুছবেন?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'চিকিৎসা: $treatment';
  }

  @override
  String get skinName => 'সমস্যা *';

  @override
  String get skinBodyArea => 'শরীরের কোথায়?';

  @override
  String get skinBegan => 'শুরু হয়েছে';

  @override
  String get skinRemindDaily => 'প্রতিদিন আপডেট করতে মনে করিয়ে দিন';

  @override
  String get skinReminderTime => 'রিমাইন্ডারের সময়';

  @override
  String get skinUpdateTitle => 'ত্বকের আপডেট';

  @override
  String get skinSeverity => 'দেখতে কেমন?';

  @override
  String get skinSeverity0 => '0 · পরিষ্কার';

  @override
  String get skinSeverity1 => '1 · হালকা';

  @override
  String get skinSeverity2 => '2 · মাঝারি';

  @override
  String get skinSeverity3 => '3 · গুরুতর';

  @override
  String get skinSeverity4 => '4 · খুব গুরুতর';

  @override
  String get skinTreatment => 'চিকিৎসা (ঐচ্ছিক)';

  @override
  String get skinTreatmentHint => 'যেমন ময়েশ্চারাইজার, হাইড্রোকর্টিসোন 1%';

  @override
  String get skinAddPhoto => 'ছবি যোগ করুন';

  @override
  String get skinCardNone => 'র‍্যাশ, একজিমা বা অন্য ত্বকের সমস্যা দিনে দিনে ট্র্যাক করুন, ডাক্তারের জন্য ছবিসহ';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটির আজকের আপডেট দরকার',
      one: '1টির আজকের আপডেট দরকার',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'ব্যাকআপ তৈরি হচ্ছে…';

  @override
  String get backupFailed => 'ব্যাকআপ তৈরি করা যায়নি।';

  @override
  String get backupSavedTo => 'ব্যাকআপ সংরক্ষিত হয়েছে:';

  @override
  String get backupShareSubject => 'Baby Tracker ব্যাকআপ';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি ছবি আছে।',
      one: '1টি ছবি আছে।',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'খাওয়ানো';

  @override
  String get widgetStopFeed => 'খাওয়ানো থামান';

  @override
  String get widgetDiaper => 'ডায়াপার';

  @override
  String get widgetSleep => 'ঘুম';

  @override
  String get widgetWakeUp => 'জেগেছে';

  @override
  String widgetFeedingFor(String duration) {
    return 'খাচ্ছে $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'খেয়েছে $ago';
  }

  @override
  String get widgetNoFeedsYet => 'এখনও খাওয়ানো হয়নি';

  @override
  String widgetChangedAgo(String ago) {
    return 'বদলানো $ago';
  }

  @override
  String get widgetNoDiapersYet => 'এখনও ডায়াপার নেই';

  @override
  String widgetAsleepFor(String duration) {
    return 'ঘুমাচ্ছে $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'জেগেছে $ago';
  }

  @override
  String get widgetStopSleepFirst => 'আগে ঘুমের টাইমার থামান';

  @override
  String get widgetStopFeedFirst => 'আগে খাওয়ানোর টাইমার থামান';

  @override
  String quickAddTitle(String name) {
    return '$name-এর জন্য যোগ করুন';
  }

  @override
  String get quickAddOpenApp => 'অ্যাপ খুলুন';

  @override
  String get foodPeanut => 'চিনাবাদাম';

  @override
  String get foodEgg => 'ডিম';

  @override
  String get foodDairy => 'দুগ্ধজাত';

  @override
  String get foodWheat => 'গম';

  @override
  String get foodSoy => 'সয়া';

  @override
  String get foodFish => 'মাছ';

  @override
  String get foodShellfish => 'চিংড়ি / খোলসযুক্ত মাছ';

  @override
  String get foodTreeNuts => 'বাদাম';

  @override
  String get foodSesame => 'তিল';

  @override
  String get foodBanana => 'কলা';

  @override
  String get foodAvocado => 'অ্যাভোকাডো';

  @override
  String get foodSweetPotato => 'মিষ্টি আলু';

  @override
  String get foodRiceCereal => 'চালের সুজি';

  @override
  String get foodOatmeal => 'ওটস';

  @override
  String get foodCarrot => 'গাজর';

  @override
  String get foodApple => 'আপেল';

  @override
  String get foodPea => 'মটরশুঁটি';

  @override
  String get symptomRash => 'র‍্যাশ';

  @override
  String get symptomHives => 'আমবাত';

  @override
  String get symptomVomiting => 'বমি';

  @override
  String get symptomDiarrhea => 'ডায়রিয়া';

  @override
  String get symptomSwelling => 'ফোলা';

  @override
  String get doseUnitDrops => 'ফোঁটা';

  @override
  String get doseUnitTablets => 'ট্যাবলেট';

  @override
  String get bottleMaterialPlastic => 'প্লাস্টিক';

  @override
  String get bottleMaterialGlass => 'কাচ';

  @override
  String get bottleMaterialSilicone => 'সিলিকন';

  @override
  String get bottleMaterialSteel => 'স্টেইনলেস স্টিল';

  @override
  String get visitReasonRoutine => 'নিয়মিত চেক-আপ';

  @override
  String get visitReasonSick => 'অসুস্থতা';

  @override
  String get visitReasonVaccination => 'টিকা';

  @override
  String get visitReasonSpecialist => 'বিশেষজ্ঞ';

  @override
  String get visitReasonFollowUp => 'ফলো-আপ';

  @override
  String get visitReasonOther => 'অন্যান্য';

  @override
  String get pooColourPale => 'ফ্যাকাশে';

  @override
  String get noteTagHappyDay => 'আনন্দের দিন';

  @override
  String get noteTagSleptWell => 'ভালো ঘুম';

  @override
  String get noteTagFussy => 'খিটখিটে';

  @override
  String get noteTagNotWell => 'শরীর ভালো ছিল না';

  @override
  String get noteTagFirstTime => 'প্রথমবার!';

  @override
  String get noteTagTeething => 'দাঁত ওঠা';

  @override
  String get noteTagGrowthSpurt => 'দ্রুত বৃদ্ধি';

  @override
  String get noteTagMilestone => 'মাইলস্টোন';

  @override
  String get tummyTimeNotesHint => 'যেমন মজা পেয়েছে, খিটখিটে...';

  @override
  String get skinSuggestEczema => 'একজিমা';

  @override
  String get skinSuggestDiaperRash => 'ডায়াপার র‍্যাশ';

  @override
  String get skinSuggestCradleCap => 'ক্র্যাডল ক্যাপ (মাথার খুশকি)';

  @override
  String get skinSuggestBabyAcne => 'শিশুর ব্রণ';

  @override
  String get skinSuggestHeatRash => 'ঘামাচি';

  @override
  String get skinSuggestDrySkin => 'শুষ্ক ত্বক';

  @override
  String get bodyFace => 'মুখ';

  @override
  String get bodyScalp => 'মাথার ত্বক';

  @override
  String get bodyNeck => 'ঘাড়';

  @override
  String get bodyChest => 'বুক';

  @override
  String get bodyBack => 'পিঠ';

  @override
  String get bodyArms => 'বাহু';

  @override
  String get bodyHands => 'হাত';

  @override
  String get bodyDiaperArea => 'ডায়াপারের জায়গা';

  @override
  String get bodyLegs => 'পা';

  @override
  String get bodyFeet => 'পায়ের পাতা';

  @override
  String get medSuggestGripeWater => 'গ্রাইপ ওয়াটার';

  @override
  String get medSuggestVitaminD => 'ভিটামিন D';

  @override
  String get medSuggestIronDrops => 'আয়রন ড্রপ';

  @override
  String get medSuggestAntibiotic => 'অ্যান্টিবায়োটিক';

  @override
  String get medSuggestProbiotic => 'প্রোবায়োটিক';

  @override
  String vaccinePageTitle(String name) {
    return '$name — টিকাদান';
  }

  @override
  String get vaccineDeleteTitle => 'টিকার রেকর্ড মুছবেন?';

  @override
  String get vaccineSiteHint => 'যেমন বাম ঊরু';

  @override
  String get vaccineNotesHint => 'যেমন হালকা জ্বর, খিটখিটে, কোনো প্রতিক্রিয়া নেই...';

  @override
  String get vaccineNoGivenHint => '+ বোতাম ব্যবহার করুন বা সময়সূচি ট্যাবে \"দেওয়া হয়েছে চিহ্নিত করুন\" ট্যাপ করুন।';

  @override
  String get vaccineAgeBirth => 'জন্মের সময়';

  @override
  String vaccineAgeMonths(String range) {
    return '$range মাস';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range মাস (প্রতি বছর)';
  }

  @override
  String get whoTabHeight => 'উচ্চতা';

  @override
  String get whoTabHead => 'মাথা';

  @override
  String get whoChartFor => 'চার্ট:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 মাস)';
  }

  @override
  String get whoNoDataPoints => 'এখনও কোনো ডেটা নেই। চার্টে শিশুকে দেখতে মাপ লগ করুন।';

  @override
  String get whoLatestMeasurement => 'সর্বশেষ মাপ';

  @override
  String whoApproxPercentile(String value) {
    return 'আনুমানিক পার্সেন্টাইল: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return '$low ও $high-এর মধ্যে';
  }

  @override
  String whoMonthsOld(String months) {
    return '$months মাস বয়স';
  }

  @override
  String get whoDisclaimer => 'এই চার্টগুলো শুধু তথ্যের জন্য। ব্যাখ্যার জন্য সবসময় শিশু বিশেষজ্ঞের পরামর্শ নিন।';

  @override
  String get whoMedian => 'P50 (মধ্যমা)';

  @override
  String get notifChannelName => 'Baby Tracker রিমাইন্ডার';

  @override
  String get notifChannelDesc => 'খাওয়ানো, ডায়াপার, ঔষধ ও ত্বক পরীক্ষার রিমাইন্ডার';

  @override
  String get notifFeedTitle => 'খাওয়ানোর সময়!';

  @override
  String notifFeedBody(String interval) {
    return 'গত $interval-এ কোনো খাওয়ানো লগ হয়নি।';
  }

  @override
  String get notifDiaperTitle => 'ডায়াপার দেখুন!';

  @override
  String notifDiaperBody(String interval) {
    return 'গত $interval-এ কোনো ডায়াপার বদল লগ হয়নি।';
  }

  @override
  String notifDoseTitle(String name) {
    return 'ডোজের সময়: $name';
  }

  @override
  String notifDoseBody(String name) {
    return '$name-এর পরের ডোজের সময় হয়েছে।';
  }

  @override
  String notifSkinTitle(String name) {
    return 'ত্বক পরীক্ষা: $name';
  }

  @override
  String get notifSkinBody => 'আজকের আপডেট যোগ করুন (চাইলে ছবিও)।';

  @override
  String get timerFeedingNotif => 'খাওয়ানোর টাইমার চলছে';

  @override
  String intervalMinutes(String m) {
    return '$m মিনিট';
  }

  @override
  String intervalHours(String h) {
    return '$h ঘণ্টা';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h ঘণ্টা $m মিনিট';
  }

  @override
  String get settingsRtlActive => 'ডান থেকে বাম লেআউট চালু';

  @override
  String get measurementHeightIn => 'দৈর্ঘ্য / উচ্চতা (ইঞ্চি)';

  @override
  String get measurementHeadIn => 'মাথার পরিধি (ইঞ্চি)';

  @override
  String get growthHeightIn => 'উচ্চতা (ইঞ্চি)';

  @override
  String get growthHeadIn => 'মাথার পরিধি (ইঞ্চি)';

  @override
  String growthHeightValueIn(String value) {
    return '$value ইঞ্চি';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'মাথা $value ইঞ্চি';
  }

  @override
  String get settingsLengthUnitNote => 'দৈর্ঘ্য ওজনের একক অনুসরণ করে (kg-এর সাথে cm, lbs-এর সাথে ইঞ্চি)';

  @override
  String get formulaStoreBrand => 'দোকানের নিজস্ব ব্র্যান্ড';

  @override
  String get pooShade1 => 'চকের মতো সাদা';

  @override
  String get pooShade2 => 'হালকা ধূসর';

  @override
  String get pooShade3 => 'কাদামাটির ধূসর';

  @override
  String get pooShade4 => 'ক্রিম';

  @override
  String get pooShade5 => 'গাঢ় বেইজ';

  @override
  String get pooShade6 => 'ফ্যাকাশে হলদে-সবুজ';

  @override
  String get pooShade7 => 'সরষে হলুদ';

  @override
  String get pooShade8 => 'বাদামি';

  @override
  String get pooShade9 => 'সবুজ';

  @override
  String get vaccineScheduleNote => 'মার্কিন CDC সময়সূচির ভিত্তিতে। আপনার দেশের সময়সূচি আলাদা হতে পারে — ডাক্তারের পরামর্শ মেনে চলুন।';

  @override
  String get settingsAbout => 'অ্যাপ সম্পর্কে';

  @override
  String get aboutTitle => 'অ্যাপ সম্পর্কে ও লাইসেন্স';

  @override
  String aboutVersion(String version) {
    return 'সংস্করণ $version';
  }

  @override
  String get aboutLicenseLine => 'GNU জেনারেল পাবলিক লাইসেন্স v3.0 বা পরবর্তী সংস্করণে প্রকাশিত মুক্ত সফটওয়্যার। আপনি এটি ব্যবহার, অধ্যয়ন, শেয়ার ও পরিবর্তন করতে পারেন।';

  @override
  String get aboutSourceCode => 'সোর্স কোড';

  @override
  String get aboutDisclaimerTitle => 'চিকিৎসা পরামর্শ নয়';

  @override
  String get aboutDisclaimerBody => 'Simple Baby Tracker আপনার নিজের রেকর্ডের জন্য একটি ডায়েরি। এটি কোনো চিকিৎসা যন্ত্র নয় এবং কোনো রোগ নির্ণয়, চিকিৎসা বা পর্যবেক্ষণ করে না। বৃদ্ধির চার্ট, তাপমাত্রার সীমা, ঔষধের রিমাইন্ডার এবং মলের রঙের নোট শুধু সাধারণ তথ্য এবং অসম্পূর্ণ বা ভুল হতে পারে। সবসময় আপনার ডাক্তার বা ফার্মাসিস্টের পরামর্শ মানুন, আর শিশুকে নিয়ে চিন্তা হলে তাঁদের বা জরুরি সেবার সাথে যোগাযোগ করুন।';

  @override
  String get aboutPrivacyTitle => 'আপনার ডেটা এই ফোনেই থাকে';

  @override
  String get aboutPrivacyBody => 'অ্যাপটির ইন্টারনেট অ্যাক্সেস, অ্যাকাউন্ট, বিজ্ঞাপন বা অ্যানালিটিক্স নেই। এন্ট্রি ও ছবি শুধু এই ডিভাইসে সংরক্ষিত হয়। আপনি নিজে ব্যাকআপ এক্সপোর্ট করে শেয়ার না করলে কিছুই বাইরে যায় না।';

  @override
  String get aboutCreditsTitle => 'কৃতজ্ঞতা';

  @override
  String get aboutCreditsBody => 'আইকন: Claude Design দিয়ে তৈরি।\nফন্ট: Inter ও Quicksand (SIL Open Font License 1.1)।\nবৃদ্ধির চার্ট: WHO শিশু বৃদ্ধির মান (who.int)।\nটিকার সময়সূচি: মার্কিন CDC সময়সূচির ভিত্তিতে।\nFlutter দিয়ে তৈরি।';

  @override
  String get aboutLicencesButton => 'ওপেন-সোর্স লাইসেন্স';
}
