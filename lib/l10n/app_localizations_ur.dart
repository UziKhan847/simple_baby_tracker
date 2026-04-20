// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'بچے کا ٹریکر';

  @override
  String get navHome => 'ہوم';

  @override
  String get navGraphs => 'گراف';

  @override
  String get navSettings => 'ترتیبات';

  @override
  String get actionCancel => 'منسوخ کریں';

  @override
  String get actionSave => 'محفوظ کریں';

  @override
  String get actionUpdate => 'اپ ڈیٹ کریں';

  @override
  String get actionDelete => 'حذف کریں';

  @override
  String get actionAdd => 'شامل کریں';

  @override
  String get actionEdit => 'ترمیم کریں';

  @override
  String get actionClose => 'بند کریں';

  @override
  String get actionExport => 'ڈیٹا برآمد کریں';

  @override
  String get actionAddDay => 'دن شامل کریں';

  @override
  String get cannotUndo => 'اسے کالعدم نہیں کیا جا سکتا';

  @override
  String get noData => 'کوئی ڈیٹا نہیں';

  @override
  String get homeTitle => 'ٹریکر';

  @override
  String get feedsToday => 'آج کی فیڈنگ';

  @override
  String get diapersToday => 'آج کے ڈائپر';

  @override
  String get sleepToday => 'آج کی نیند';

  @override
  String todayLabel(String date) {
    return 'آج — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count واقعات',
      one: '1 واقعہ',
      zero: 'کوئی واقعہ نہیں',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'دن حذف کریں؟';

  @override
  String deleteDayContent(String date) {
    return '$date اور اس کی تمام اندراجات حذف کریں؟ اسے کالعدم نہیں کیا جا سکتا';
  }

  @override
  String get noEntriesYet => 'ابھی کوئی اندراج نہیں';

  @override
  String get addEntry => 'اندراج شامل کریں';

  @override
  String get deleteEntryTitle => 'اندراج حذف کریں؟';

  @override
  String get entryTypeDiaper => 'ڈائپر تبدیل کریں';

  @override
  String get entryTypeFeeding => 'فیڈنگ';

  @override
  String get entryTypeSleep => 'نیند';

  @override
  String get entryTypeTemperature => 'درجہ حرارت';

  @override
  String get entryTypeWeight => 'وزن';

  @override
  String get diaperPeePoo => 'ڈائپر — پیشاب + پاخانہ';

  @override
  String get diaperPee => 'ڈائپر — صرف پیشاب';

  @override
  String get diaperPoo => 'ڈائپر — صرف پاخانہ';

  @override
  String get diaperChange => 'ڈائپر تبدیل کریں';

  @override
  String get editDiaper => 'ڈائپر ترمیم کریں';

  @override
  String get diaperContents => 'مواد';

  @override
  String get diaperNone => 'کچھ نہیں';

  @override
  String get diaperPeeLabel => 'پیشاب';

  @override
  String get diaperPooLabel => 'پاخانہ';

  @override
  String get diaperBoth => 'دونوں';

  @override
  String get diaperConsistency => 'مستقل مزاجی';

  @override
  String get consistencyHard => 'سخت / دانے دار';

  @override
  String get consistencyHardHint => 'قبض';

  @override
  String get consistencyFirm => 'ٹھوس';

  @override
  String get consistencyFirmHint => 'ہلکا ٹھوس';

  @override
  String get consistencyNormal => 'معمول';

  @override
  String get consistencyNormalHint => 'صحت مند';

  @override
  String get consistencySoft => 'نرم';

  @override
  String get consistencySoftHint => 'ہلکا نرم';

  @override
  String get consistencyLoose => 'پتلا / گاڑھا پانی';

  @override
  String get consistencyLooseHint => 'نگرانی کریں';

  @override
  String get consistencyWatery => 'پانی جیسا';

  @override
  String get consistencyWateryHint => 'اسہال';

  @override
  String get warnConstipation => 'قبض کی علامات — قریب سے نگرانی کریں';

  @override
  String get warnDiarrhea => 'اسہال کی علامات — قریب سے نگرانی کریں';

  @override
  String get pooColourLabel => 'رنگ (منتخب کرنے کے لیے ٹیپ کریں)';

  @override
  String get pooColourAbnormal => '⚠️ غیر معمولی (پھیکا)';

  @override
  String get pooColourNormal => '✅ معمول';

  @override
  String pooColourSelected(String label) {
    return 'منتخب: $label';
  }

  @override
  String get diaperSize => 'ڈائپر کا سائز';

  @override
  String get diaperBrand => 'برانڈ';

  @override
  String get diaperBrandCustomLabel => 'برانڈ کا نام';

  @override
  String get rashPresent => 'ڈائپر ریش موجود';

  @override
  String get rashPresentHint => 'لالی، جلن یا ڈائپر ریش';

  @override
  String get rashCreamUsed => 'کریم لگائی گئی';

  @override
  String get rashCreamCustomLabel => 'کریم / مرہم کا نام';

  @override
  String get rashFollowUpTitle => '⚠️ ریش کی پیروی';

  @override
  String get rashFollowUpQuestion => 'آخری ڈائپر میں ریش درج تھا۔ کیا بہتری ہوئی؟';

  @override
  String get rashImproved => 'ہاں، بہتری ہوئی';

  @override
  String get rashNoChange => 'کوئی تبدیلی نہیں / بگڑ گیا';

  @override
  String get rashRecorded => 'ریش درج کیا گیا';

  @override
  String get addFeeding => 'فیڈنگ شامل کریں';

  @override
  String get editFeeding => 'فیڈنگ ترمیم کریں';

  @override
  String feedLabel(int number) {
    return 'فیڈ $number';
  }

  @override
  String get feedModeBottle => 'بوتل';

  @override
  String get feedModeSuckle => 'چھاتی';

  @override
  String get feedAmountMl => 'مقدار (ملی)';

  @override
  String get feedType => 'قسم';

  @override
  String get feedBreastMilk => 'ماں کا دودھ';

  @override
  String get feedFormula => 'فارمولا دودھ';

  @override
  String get feedFormulaBrand => 'فارمولا برانڈ';

  @override
  String get feedFormulaBrandCustom => 'برانڈ کا نام';

  @override
  String get feedDurationMinutes => 'مدت (منٹ)';

  @override
  String get addAnotherFeed => 'ایک اور فیڈنگ شامل کریں';

  @override
  String get bottleBreastMilk => 'بوتل — ماں کا دودھ';

  @override
  String get bottleFormula => 'بوتل — فارمولا';

  @override
  String get breastfeedingSuckle => 'چھاتی کا دودھ';

  @override
  String get logSleep => 'نیند لاگ کریں';

  @override
  String get editSleep => 'نیند ترمیم کریں';

  @override
  String get sleepStart => 'نیند کا آغاز';

  @override
  String get sleepWakeUp => 'جاگنا';

  @override
  String sleepDuration(String duration) {
    return 'مدت: $duration';
  }

  @override
  String get sleepInvalidTimes => 'غلط اوقات';

  @override
  String get sleepWrapsNextDay => '(اگلے دن ختم ہوتی ہے)';

  @override
  String get sleepNotes => 'نوٹس (اختیاری)';

  @override
  String get sleepNotesHint => 'مثال: بے چین، تھوڑی دیر جاگا...';

  @override
  String get sleepNoNotes => 'کوئی نوٹ نہیں';

  @override
  String sleepHoursShort(int h, int m) {
    return '$hگھنٹے $mمنٹ';
  }

  @override
  String get logTemperature => 'درجہ حرارت لاگ کریں';

  @override
  String get editTemperature => 'درجہ حرارت ترمیم کریں';

  @override
  String get temperatureLabel => 'درجہ حرارت';

  @override
  String get tempSeverityLow => 'درجہ حرارت کم — نگرانی کریں';

  @override
  String get tempSeverityNormal => 'نارمل درجہ حرارت';

  @override
  String get tempSeverityElevated => 'ہلکا بڑھا ہوا — قریب سے نگرانی کریں';

  @override
  String get tempSeverityFever => 'بخار — ڈاکٹر سے رجوع کریں';

  @override
  String get tempReference => 'درجہ حرارت کا حوالہ';

  @override
  String get tempRefLow => '< 36.0 °C / 96.8 °F';

  @override
  String get tempRefNormal => '36.0 – 37.4 °C / 96.8 – 99.3 °F';

  @override
  String get tempRefElevated => '37.5 – 38.4 °C / 99.5 – 101.1 °F';

  @override
  String get tempRefFever => '≥ 38.5 °C / 101.3 °F';

  @override
  String get tempFeverWarning => '⚠️ 3 ماہ سے کم عمر بچوں میں بخار ہونے پر ہمیشہ ماہر اطفال سے رجوع کریں';

  @override
  String get tempLow => 'کم';

  @override
  String get tempNormal => 'نارمل';

  @override
  String get tempElevated => 'بڑھا ہوا';

  @override
  String get tempFever => 'بخار';

  @override
  String get tempLatest => 'تازہ ترین درجہ حرارت';

  @override
  String get tempSummary => 'درجہ حرارت کا خلاصہ';

  @override
  String get tempFeverThreshold => 'بخار کی حد';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دن',
      one: '1 دن',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'وزن لاگ کریں';

  @override
  String get editWeight => 'وزن ترمیم کریں';

  @override
  String get weightLabel => 'وزن';

  @override
  String weightGain(String amount) {
    return '+$amount بڑھا';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount گھٹا';
  }

  @override
  String weightPrevious(String weight) {
    return 'پچھلا: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'آخری ریکارڈ: $weight ($date)';
  }

  @override
  String get weightLatest => 'تازہ ترین وزن';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount اس مدت میں';
  }

  @override
  String get settingsTitle => 'ترتیبات';

  @override
  String get settingsAppearance => 'ظاہریت';

  @override
  String get settingsDarkMode => 'ڈارک موڈ';

  @override
  String get settingsDarkActive => 'ڈارک تھیم فعال';

  @override
  String get settingsLightActive => 'لائٹ تھیم فعال';

  @override
  String get settingsUnits => 'اکائیاں';

  @override
  String get settingsWeightUnit => 'وزن کی اکائی';

  @override
  String get settingsTempUnit => 'درجہ حرارت کی اکائی';

  @override
  String get settingsLanguage => 'زبان';

  @override
  String get settingsTips => 'تجاویز';

  @override
  String get tipSwitchBabies => 'بچہ تبدیل کریں';

  @override
  String get tipSwitchBabiesDesc => 'بچہ تبدیل کرنے یا نیا پروفائل شامل کرنے کے لیے اوپر والے بچے کے ایواٹار پر ٹیپ کریں';

  @override
  String get tipSwipeDelete => 'حذف کرنے کے لیے بائیں سوائپ کریں';

  @override
  String get tipSwipeDeleteDesc => 'دن کارڈز اور انفرادی اندراجات پر کام کرتا ہے';

  @override
  String get tipMultipleFeeds => 'ایک ساتھ متعدد فیڈنگ لاگ کریں';

  @override
  String get tipMultipleFeedsDesc => 'فیڈنگ فارم میں، \"ایک اور فیڈنگ شامل کریں\" پر ٹیپ کریں';

  @override
  String get tipExportData => 'ڈیٹا برآمد کریں';

  @override
  String get tipExportDataDesc => 'ہوم پر شیئر آئیکون استعمال کریں';

  @override
  String get tipTapToEdit => 'ترمیم کرنے کے لیے کسی بھی اندراج پر ٹیپ کریں';

  @override
  String get babiesTitle => 'بچے';

  @override
  String get addBaby => 'بچہ شامل کریں';

  @override
  String get editProfile => 'پروفائل ترمیم کریں';

  @override
  String get babyNameRequired => 'نام *';

  @override
  String get babyDobOptional => 'پیدائش کی تاریخ (اختیاری)';

  @override
  String babyBornOn(String date) {
    return 'پیدائش $date';
  }

  @override
  String get genderUnknown => 'غیر متعین';

  @override
  String get genderBoy => 'لڑکا';

  @override
  String get genderGirl => 'لڑکی';

  @override
  String get cannotDeleteOnlyProfile => 'اکلوتا بچہ پروفائل حذف نہیں کیا جا سکتا';

  @override
  String deleteProfileTitle(String name) {
    return '$name حذف کریں؟';
  }

  @override
  String get deleteProfileContent => 'اس بچے کا سارا ڈیٹا مستقل طور پر حذف ہو جائے گا';

  @override
  String get graphsTitle => 'گراف';

  @override
  String get graphsTabDaily => 'یومیہ';

  @override
  String get graphsTabGrowth => 'نمو';

  @override
  String get graphsTabHealth => 'صحت';

  @override
  String get graphsTotalFeeds => 'کل فیڈنگز';

  @override
  String get graphsAvgPerDay => 'اوسط/دن';

  @override
  String get graphsTotalDiapers => 'ڈائپرز';

  @override
  String get graphsTotalMilk => 'کل دودھ';

  @override
  String get graphsTotalSleep => 'کل نیند';

  @override
  String get graphsAvgSleep => 'اوسط نیند/دن';

  @override
  String get graphsFeedsPerDay => 'فی دن فیڈنگز';

  @override
  String get graphsDiapersPerDay => 'فی دن ڈائپرز';

  @override
  String get graphsMilkPerDay => 'فی دن دودھ (ملی)';

  @override
  String get graphsSleepPerDay => 'فی دن نیند (گھنٹے)';

  @override
  String get graphsWeightOverTime => 'وقت کے ساتھ وزن';

  @override
  String get graphsTempOverTime => 'وقت کے ساتھ درجہ حرارت';

  @override
  String graphsMaxLabel(String value) {
    return 'زیادہ سے زیادہ: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'کم سے کم: $value';
  }

  @override
  String get graphsNoWeightData => 'ابھی کوئی وزن اندراج نہیں\nکسی دن کی اندراجات سے وزن لاگ کریں';

  @override
  String get graphsNoTempData => 'ابھی کوئی درجہ حرارت اندراج نہیں\nکسی دن سے درجہ حرارت لاگ کریں';

  @override
  String get timeLabel => 'وقت';

  @override
  String get noColourRecorded => 'کوئی رنگ ریکارڈ نہیں';

  @override
  String get noDetails => 'کوئی تفصیل نہیں';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دن',
      one: '1 دن',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مہینے',
      one: '1 مہینہ',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years سال $months مہینے';
  }
}
