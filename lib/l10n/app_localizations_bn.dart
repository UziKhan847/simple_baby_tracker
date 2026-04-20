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
  String get navSettings => 'সেটিংস';

  @override
  String get actionCancel => 'বাতিল করুন';

  @override
  String get actionSave => 'সংরক্ষণ করুন';

  @override
  String get actionUpdate => 'আপডেট করুন';

  @override
  String get actionDelete => 'মুছে ফেলুন';

  @override
  String get actionAdd => 'যোগ করুন';

  @override
  String get actionEdit => 'সম্পাদনা করুন';

  @override
  String get actionClose => 'বন্ধ করুন';

  @override
  String get actionExport => 'ডেটা এক্সপোর্ট করুন';

  @override
  String get actionAddDay => 'দিন যোগ করুন';

  @override
  String get cannotUndo => 'এটি পূর্বাবস্থায় ফেরানো যাবে না';

  @override
  String get noData => 'কোনো ডেটা নেই';

  @override
  String get homeTitle => 'ট্র্যাকার';

  @override
  String get feedsToday => 'আজকের খাওয়ানো';

  @override
  String get diapersToday => 'আজকের ডায়াপার';

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
      one: '1টি ঘটনা',
      zero: 'কোনো ঘটনা নেই',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'দিনটি মুছবেন?';

  @override
  String deleteDayContent(String date) {
    return '$date এবং এর সমস্ত এন্ট্রি মুছবেন? এটি পূর্বাবস্থায় ফেরানো যাবে না';
  }

  @override
  String get noEntriesYet => 'এখনও কোনো এন্ট্রি নেই';

  @override
  String get addEntry => 'এন্ট্রি যোগ করুন';

  @override
  String get deleteEntryTitle => 'এন্ট্রি মুছবেন?';

  @override
  String get entryTypeDiaper => 'ডায়াপার পরিবর্তন';

  @override
  String get entryTypeFeeding => 'খাওয়ানো';

  @override
  String get entryTypeSleep => 'ঘুম';

  @override
  String get entryTypeTemperature => 'তাপমাত্রা';

  @override
  String get entryTypeWeight => 'ওজন';

  @override
  String get diaperPeePoo => 'ডায়াপার — প্রস্রাব + পায়খানা';

  @override
  String get diaperPee => 'ডায়াপার — শুধু প্রস্রাব';

  @override
  String get diaperPoo => 'ডায়াপার — শুধু পায়খানা';

  @override
  String get diaperChange => 'ডায়াপার পরিবর্তন';

  @override
  String get editDiaper => 'ডায়াপার সম্পাদনা করুন';

  @override
  String get diaperContents => 'বিষয়বস্তু';

  @override
  String get diaperNone => 'কিছু না';

  @override
  String get diaperPeeLabel => 'প্রস্রাব';

  @override
  String get diaperPooLabel => 'পায়খানা';

  @override
  String get diaperBoth => 'উভয়';

  @override
  String get diaperConsistency => 'গঠন';

  @override
  String get consistencyHard => 'শক্ত / দানাদার';

  @override
  String get consistencyHardHint => 'কোষ্ঠকাঠিন্য';

  @override
  String get consistencyFirm => 'শক্ত (নরম নয়)';

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
  String get consistencyLoose => 'পাতলা / মাড়ানো';

  @override
  String get consistencyLooseHint => 'নজর রাখুন';

  @override
  String get consistencyWatery => 'পানির মতো';

  @override
  String get consistencyWateryHint => 'ডায়রিয়া';

  @override
  String get warnConstipation => 'কোষ্ঠকাঠিন্যের লক্ষণ — ঘনিষ্ঠভাবে পর্যবেক্ষণ করুন';

  @override
  String get warnDiarrhea => 'ডায়রিয়ার লক্ষণ — ঘনিষ্ঠভাবে পর্যবেক্ষণ করুন';

  @override
  String get pooColourLabel => 'রং (নির্বাচন করতে ট্যাপ করুন)';

  @override
  String get pooColourAbnormal => '⚠️ অস্বাভাবিক (ফ্যাকাশে)';

  @override
  String get pooColourNormal => '✅ স্বাভাবিক';

  @override
  String pooColourSelected(String label) {
    return 'নির্বাচিত: $label';
  }

  @override
  String get diaperSize => 'ডায়াপারের সাইজ';

  @override
  String get diaperBrand => 'ব্র্যান্ড';

  @override
  String get diaperBrandCustomLabel => 'ব্র্যান্ডের নাম';

  @override
  String get rashPresent => 'ডায়াপার র্যাশ আছে';

  @override
  String get rashPresentHint => 'লালচেভাব, জ্বালা বা ডায়াপার র্যাশ';

  @override
  String get rashCreamUsed => 'ক্রিম ব্যবহার করা হয়েছে';

  @override
  String get rashCreamCustomLabel => 'ক্রিম / মলমের নাম';

  @override
  String get rashFollowUpTitle => '⚠️ র্যাশের ফলোআপ';

  @override
  String get rashFollowUpQuestion => 'শেষ ডায়াপারে র্যাশ রেকর্ড করা হয়েছিল। কি উন্নতি হয়েছে?';

  @override
  String get rashImproved => 'হ্যাঁ, উন্নতি হয়েছে';

  @override
  String get rashNoChange => 'কোনো পরিবর্তন নাই / খারাপ হয়েছে';

  @override
  String get rashRecorded => 'র্যাশ রেকর্ড করা হয়েছে';

  @override
  String get addFeeding => 'খাওয়ানো যোগ করুন';

  @override
  String get editFeeding => 'খাওয়ানো সম্পাদনা করুন';

  @override
  String feedLabel(int number) {
    return 'খাওয়ানো $number';
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
  String get feedBreastMilk => 'মায়ের দুধ';

  @override
  String get feedFormula => 'ফর্মুলা দুধ';

  @override
  String get feedFormulaBrand => 'ফর্মুলার ব্র্যান্ড';

  @override
  String get feedFormulaBrandCustom => 'ব্র্যান্ডের নাম';

  @override
  String get feedDurationMinutes => 'সময়কাল (মিনিট)';

  @override
  String get addAnotherFeed => 'আরেকটি খাওয়ানো যোগ করুন';

  @override
  String get bottleBreastMilk => 'বোতল — মায়ের দুধ';

  @override
  String get bottleFormula => 'বোতল — ফর্মুলা';

  @override
  String get breastfeedingSuckle => 'বুকের দুধ খাওয়ানো';

  @override
  String get logSleep => 'ঘুম লগ করুন';

  @override
  String get editSleep => 'ঘুম সম্পাদনা করুন';

  @override
  String get sleepStart => 'ঘুম শুরুর সময়';

  @override
  String get sleepWakeUp => 'জাগরণের সময়';

  @override
  String sleepDuration(String duration) {
    return 'সময়কাল: $duration';
  }

  @override
  String get sleepInvalidTimes => 'অবৈধ সময়';

  @override
  String get sleepWrapsNextDay => '(পরের দিন শেষ হয়)';

  @override
  String get sleepNotes => 'নোট (ঐচ্ছিক)';

  @override
  String get sleepNotesHint => 'উদা: অস্থির, কিছুক্ষণ জেগেছিল...';

  @override
  String get sleepNoNotes => 'কোনো নোট নেই';

  @override
  String sleepHoursShort(int h, int m) {
    return '$hঘ $mমি';
  }

  @override
  String get logTemperature => 'তাপমাত্রা লগ করুন';

  @override
  String get editTemperature => 'তাপমাত্রা সম্পাদনা করুন';

  @override
  String get temperatureLabel => 'তাপমাত্রা';

  @override
  String get tempSeverityLow => 'তাপমাত্রা কম — পর্যবেক্ষণ করুন';

  @override
  String get tempSeverityNormal => 'স্বাভাবিক তাপমাত্রা';

  @override
  String get tempSeverityElevated => 'সামান্য বেড়েছে — ঘনিষ্ঠভাবে পর্যবেক্ষণ করুন';

  @override
  String get tempSeverityFever => 'জ্বর — ডাক্তারের পরামর্শ নিন';

  @override
  String get tempReference => 'তাপমাত্রার রেফারেন্স';

  @override
  String get tempRefLow => '< 36.0 °C / 96.8 °F';

  @override
  String get tempRefNormal => '36.0 – 37.4 °C / 96.8 – 99.3 °F';

  @override
  String get tempRefElevated => '37.5 – 38.4 °C / 99.5 – 101.1 °F';

  @override
  String get tempRefFever => '≥ 38.5 °C / 101.3 °F';

  @override
  String get tempFeverWarning => '⚠️ ৩ মাসের কম বয়সী শিশুর জ্বরে সর্বদা শিশু বিশেষজ্ঞের পরামর্শ নিন';

  @override
  String get tempLow => 'কম';

  @override
  String get tempNormal => 'স্বাভাবিক';

  @override
  String get tempElevated => 'বেড়েছে';

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
      one: '1 দিন',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'ওজন লগ করুন';

  @override
  String get editWeight => 'ওজন সম্পাদনা করুন';

  @override
  String get weightLabel => 'ওজন';

  @override
  String weightGain(String amount) {
    return '+$amount বেড়েছে';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount কমেছে';
  }

  @override
  String weightPrevious(String weight) {
    return 'আগের: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'শেষ রেকর্ড: $weight ($date)';
  }

  @override
  String get weightLatest => 'সর্বশেষ ওজন';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount এই সময়ের মধ্যে';
  }

  @override
  String get settingsTitle => 'সেটিংস';

  @override
  String get settingsAppearance => 'চেহারা';

  @override
  String get settingsDarkMode => 'ডার্ক মোড';

  @override
  String get settingsDarkActive => 'ডার্ক থিম সক্রিয়';

  @override
  String get settingsLightActive => 'লাইট থিম সক্রিয়';

  @override
  String get settingsUnits => 'একক';

  @override
  String get settingsWeightUnit => 'ওজনের একক';

  @override
  String get settingsTempUnit => 'তাপমাত্রার একক';

  @override
  String get settingsLanguage => 'ভাষা';

  @override
  String get settingsTips => 'টিপস';

  @override
  String get tipSwitchBabies => 'বাচ্চা পরিবর্তন করুন';

  @override
  String get tipSwitchBabiesDesc => 'বাচ্চা পরিবর্তন বা নতুন প্রোফাইল যোগ করতে উপরের বাচ্চার অবতার ট্যাপ করুন';

  @override
  String get tipSwipeDelete => 'মুছতে বামে সোয়াইপ করুন';

  @override
  String get tipSwipeDeleteDesc => 'দিনের কার্ড এবং পৃথক এন্ট্রিতে কাজ করে';

  @override
  String get tipMultipleFeeds => 'একসাথে একাধিক খাওয়ানো লগ করুন';

  @override
  String get tipMultipleFeedsDesc => 'খাওয়ানোর ফর্মে, \"আরেকটি খাওয়ানো যোগ করুন\" ট্যাপ করুন';

  @override
  String get tipExportData => 'ডেটা এক্সপোর্ট করুন';

  @override
  String get tipExportDataDesc => 'হোমে শেয়ার আইকন ব্যবহার করুন';

  @override
  String get tipTapToEdit => 'সম্পাদনা করতে যেকোনো এন্ট্রি ট্যাপ করুন';

  @override
  String get babiesTitle => 'বাচ্চারা';

  @override
  String get addBaby => 'বাচ্চা যোগ করুন';

  @override
  String get editProfile => 'প্রোফাইল সম্পাদনা করুন';

  @override
  String get babyNameRequired => 'নাম *';

  @override
  String get babyDobOptional => 'জন্ম তারিখ (ঐচ্ছিক)';

  @override
  String babyBornOn(String date) {
    return 'জন্ম $date';
  }

  @override
  String get genderUnknown => 'অনির্ধারিত';

  @override
  String get genderBoy => 'ছেলে';

  @override
  String get genderGirl => 'মেয়ে';

  @override
  String get cannotDeleteOnlyProfile => 'একমাত্র বাচ্চার প্রোফাইল মুছা যাবে না';

  @override
  String deleteProfileTitle(String name) {
    return '$name মুছবেন?';
  }

  @override
  String get deleteProfileContent => 'এই বাচ্চার সমস্ত ডেটা স্থায়ীভাবে মুছে ফেলা হবে';

  @override
  String get graphsTitle => 'গ্রাফ';

  @override
  String get graphsTabDaily => 'দৈনিক';

  @override
  String get graphsTabGrowth => 'বৃদ্ধি';

  @override
  String get graphsTabHealth => 'স্বাস্থ্য';

  @override
  String get graphsTotalFeeds => 'মোট খাওয়ানো';

  @override
  String get graphsAvgPerDay => 'গড়/দিন';

  @override
  String get graphsTotalDiapers => 'ডায়াপার';

  @override
  String get graphsTotalMilk => 'মোট দুধ';

  @override
  String get graphsTotalSleep => 'মোট ঘুম';

  @override
  String get graphsAvgSleep => 'গড় ঘুম/দিন';

  @override
  String get graphsFeedsPerDay => 'প্রতিদিন খাওয়ানো';

  @override
  String get graphsDiapersPerDay => 'প্রতিদিন ডায়াপার';

  @override
  String get graphsMilkPerDay => 'প্রতিদিন দুধ (মিলি)';

  @override
  String get graphsSleepPerDay => 'প্রতিদিন ঘুম (ঘন্টা)';

  @override
  String get graphsWeightOverTime => 'সময়ের সাথে ওজন';

  @override
  String get graphsTempOverTime => 'সময়ের সাথে তাপমাত্রা';

  @override
  String graphsMaxLabel(String value) {
    return 'সর্বোচ্চ: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'সর্বনিম্ন: $value';
  }

  @override
  String get graphsNoWeightData => 'এখনও কোনো ওজন এন্ট্রি নেই\nএকটি দিনের এন্ট্রি থেকে ওজন লগ করুন';

  @override
  String get graphsNoTempData => 'এখনও কোনো তাপমাত্রা এন্ট্রি নেই\nএকটি দিন থেকে তাপমাত্রা লগ করুন';

  @override
  String get timeLabel => 'সময়';

  @override
  String get noColourRecorded => 'কোনো রং রেকর্ড করা হয়নি';

  @override
  String get noDetails => 'কোনো বিবরণ নেই';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন',
      one: '1 দিন',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count মাস',
      one: '1 মাস',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years বছর $months মাস';
  }
}
