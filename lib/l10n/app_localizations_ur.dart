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
  String get navMilestones => 'نشوونما کے مراحل';

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
  String get actionLog => 'لاگ کریں';

  @override
  String get cannotUndo => 'یہ عمل واپس نہیں کیا جا سکتا۔';

  @override
  String get noData => 'کوئی ڈیٹا نہیں';

  @override
  String get noNotes => 'کوئی نوٹ نہیں';

  @override
  String get noDetails => 'کوئی تفصیلات نہیں';

  @override
  String get optional => '(اختیاری)';

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
    return '$date اور اس کے تمام اندراجات حذف کریں؟ یہ واپس نہیں ہو سکتا۔';
  }

  @override
  String get rashRecorded => 'جلدی خارش ریکارڈ کی گئی';

  @override
  String get noEntriesYet => 'ابھی تک کوئی اندراج نہیں';

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
  String get entryTypeTummyTime => 'ٹمی ٹائم (پیٹ کے بل)';

  @override
  String get entryTypeMedication => 'دوائی';

  @override
  String get entryTypeDoctorVisit => 'ڈاکٹر کا دورہ';

  @override
  String get entryTypeNote => 'روزانہ نوٹ / ڈائری';

  @override
  String get entryTypePumping => 'پمپنگ سیشن';

  @override
  String get entryTypeBath => 'نہانا';

  @override
  String get diaperPeePoo => 'ڈائپر — پیشاب + پاخانہ';

  @override
  String get diaperPee => 'ڈائپر — پیشاب';

  @override
  String get diaperPoo => 'ڈائپر — پاخانہ';

  @override
  String get diaperChange => 'ڈائپر تبدیل کریں';

  @override
  String get editDiaper => 'ڈائپر میں ترمیم کریں';

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
  String get diaperConsistency => 'مستقل مزاجی (بناوٹ)';

  @override
  String get consistencyHard => 'سخت / دانے دار';

  @override
  String get consistencyHardHint => 'قبض';

  @override
  String get consistencyFirm => 'ٹھوس';

  @override
  String get consistencyFirmHint => 'ہلکی ٹھوس';

  @override
  String get consistencyNormal => 'نارمل';

  @override
  String get consistencyNormalHint => 'صحت مند';

  @override
  String get consistencySoft => 'نرم';

  @override
  String get consistencySoftHint => 'ہلکی نرم';

  @override
  String get consistencyLoose => 'پتلا / گارا جیسا';

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
  String get pooColourLabel => 'رنگ (منتخب کرنے کے لیے تھپتھپائیں)';

  @override
  String get pooColourAbnormal => '⚠️ غیر معمولی (پھیکا)';

  @override
  String get pooColourNormal => '✅ نارمل';

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
  String get rashPresent => 'جلدی خارش موجود ہے';

  @override
  String get rashPresentHint => 'لالی، جلن یا ڈائپر ریش';

  @override
  String get rashCreamUsed => 'خارش کی کریم استعمال کی';

  @override
  String get rashCreamCustomLabel => 'کریم / مرہم کا نام';

  @override
  String get rashFollowUpTitle => '⚠️ خارش کی فالو اپ';

  @override
  String get rashFollowUpQuestion => 'آخری ڈائپر میں خارش ریکارڈ تھی۔ کیا بہتری آئی؟';

  @override
  String get rashImproved => 'جی ہاں، بہتر ہوا';

  @override
  String get rashNoChange => 'کوئی تبدیلی نہیں / مزید خراب';

  @override
  String get addFeeding => 'فیڈنگ شامل کریں';

  @override
  String get editFeeding => 'فیڈنگ میں ترمیم کریں';

  @override
  String feedLabel(int number) {
    return 'فیڈ $number';
  }

  @override
  String get feedModeBottle => 'بوتل';

  @override
  String get feedModeSuckle => 'چھاتی سے دودھ';

  @override
  String get feedAmountMl => 'مقدار (ملی لیٹر)';

  @override
  String get feedType => 'قسم';

  @override
  String get feedBreastMilk => 'ماں کا دودھ';

  @override
  String get feedFormula => 'فارمولا (بچوں کا دودھ)';

  @override
  String get feedFormulaBrand => 'فارمولے کا برانڈ';

  @override
  String get feedFormulaBrandCustom => 'فارمولے کے برانڈ کا نام';

  @override
  String get feedDurationMinutes => 'مدت (منٹ)';

  @override
  String get addAnotherFeed => 'ایک اور فیڈ شامل کریں';

  @override
  String get bottleBreastMilk => 'بوتل — ماں کا دودھ';

  @override
  String get bottleFormula => 'بوتل — فارمولا';

  @override
  String get breastfeedingSuckle => 'چھاتی سے دودھ (بریسٹ فیڈنگ)';

  @override
  String get logSleep => 'نیند لاگ کریں';

  @override
  String get editSleep => 'نیند میں ترمیم کریں';

  @override
  String get sleepStart => 'نیند کا آغاز';

  @override
  String get sleepWakeUp => 'جاگنے کا وقت';

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
  String get sleepNotesHint => 'مثلاً: بے چین، تھوڑی دیر کے لیے جاگا...';

  @override
  String get sleepNoNotes => 'کوئی نوٹ نہیں';

  @override
  String sleepHoursShort(int h, int m) {
    return '$hگھنٹے $mمنٹ';
  }

  @override
  String get logTemperature => 'درجہ حرارت لاگ کریں';

  @override
  String get editTemperature => 'درجہ حرارت میں ترمیم کریں';

  @override
  String get temperatureLabel => 'درجہ حرارت';

  @override
  String get tempSeverityLow => 'کم درجہ حرارت — نگرانی کریں';

  @override
  String get tempSeverityNormal => 'نارمل درجہ حرارت';

  @override
  String get tempSeverityElevated => 'ہلکا بلند — قریب سے نگرانی کریں';

  @override
  String get tempSeverityFever => 'بخار — اپنے ڈاکٹر سے رجوع کریں';

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
  String get tempFeverWarning => '⚠️ 3 ماہ سے کم عمر بچوں میں بخار کی صورت میں ہمیشہ ماہر اطفال سے رجوع کریں۔';

  @override
  String get tempLow => 'کم';

  @override
  String get tempNormal => 'نارمل';

  @override
  String get tempElevated => 'بلند';

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
      zero: 'کوئی دن نہیں',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'وزن لاگ کریں';

  @override
  String get editWeight => 'وزن میں ترمیم کریں';

  @override
  String get weightLabel => 'وزن';

  @override
  String weightGain(String amount) {
    return '+$amount اضافہ';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount کمی';
  }

  @override
  String weightPrevious(String weight) {
    return 'پچھلا: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'آخری بار: $weight تاریخ $date کو';
  }

  @override
  String get weightLatest => 'تازہ ترین وزن';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount مدت کے دوران';
  }

  @override
  String get tummyTimeLog => 'ٹمی ٹائم لاگ کریں';

  @override
  String get tummyTimeEdit => 'ٹمی ٹائم میں ترمیم کریں';

  @override
  String get tummyTimeStart => 'شروع کا وقت';

  @override
  String get tummyTimeEnd => 'اختتام کا وقت';

  @override
  String get tummyTimeTip => 'ٹمی ٹائم گردن اور کندھوں کے پٹھوں کو مضبوط کرتا ہے۔';

  @override
  String get medicationLog => 'دوائی لاگ کریں';

  @override
  String get medicationEdit => 'دوائی میں ترمیم کریں';

  @override
  String get medicationName => 'دوائی کا نام *';

  @override
  String get medicationDose => 'خوراک';

  @override
  String get medicationUnit => 'یونٹ';

  @override
  String get medicationCommon => 'عام دوائیاں';

  @override
  String get medicationWarning => 'وزن/عمر کے مطابق خوراک کی ہدایات پر عمل کریں۔ تجویز کردہ فریکوئنسی سے زیادہ نہ کریں۔';

  @override
  String get medicationNotes => 'نوٹس (اختیاری)';

  @override
  String get medicationNotesHint => 'مثلاً: وجہ، رد عمل...';

  @override
  String get doctorVisitLog => 'ڈاکٹر کا دورہ';

  @override
  String get doctorVisitEdit => 'ڈاکٹر کے دورے میں ترمیم کریں';

  @override
  String get doctorName => 'ڈاکٹر / کلینک کا نام';

  @override
  String get doctorVisitReason => 'دورے کی وجہ';

  @override
  String get doctorVisitMeasurements => 'پیمائشیں (اختیاری)';

  @override
  String get doctorVisitNotes => 'نوٹس';

  @override
  String get doctorVisitNotesHint => 'مثلاً: دی گئی ویکسین، ڈاکٹر کی سفارشات...';

  @override
  String get measurementWeightKg => 'وزن (کلوگرام)';

  @override
  String get measurementWeightLbs => 'وزن (پاؤنڈ)';

  @override
  String get measurementHeightCm => 'لمبائی / قد (سینٹی میٹر)';

  @override
  String get measurementHeadCm => 'سر کا طواف (سینٹی میٹر)';

  @override
  String get dailyNoteLog => 'روزانہ نوٹ';

  @override
  String get dailyNoteEdit => 'نوٹ میں ترمیم کریں';

  @override
  String get dailyNoteTitle => 'عنوان (اختیاری)';

  @override
  String get dailyNoteText => 'نوٹ';

  @override
  String get dailyNoteHint => 'آج کیا ہوا؟ پہلی بار کروٹ بدلی؟ پریشان صبح؟';

  @override
  String get dailyNoteTags => 'فوری ٹیگز';

  @override
  String get pumpingLog => 'پمپنگ سیشن لاگ کریں';

  @override
  String get pumpingEdit => 'پمپنگ سیشن میں ترمیم کریں';

  @override
  String get pumpingLeft => 'بایاں چھاتی (ملی لیٹر)';

  @override
  String get pumpingRight => 'دایاں چھاتی (ملی لیٹر)';

  @override
  String get pumpingTotal => 'کل پمپ شدہ مقدار';

  @override
  String get pumpingDuration => 'مدت (منٹ)';

  @override
  String get pumpingStored => 'ذخیرہ / منجمد';

  @override
  String get pumpingNotes => 'نوٹس (اختیاری)';

  @override
  String get pumpingSessionTitle => 'پمپنگ';

  @override
  String pumpingTotalMl(int ml) {
    return 'کل $ml ملی لیٹر';
  }

  @override
  String get bathLog => 'نہانے کا لاگ';

  @override
  String get bathEdit => 'نہانے میں ترمیم کریں';

  @override
  String get bathType => 'نہانے کی قسم';

  @override
  String get bathTypeSponge => 'اسفنج سے نہانا';

  @override
  String get bathTypeTub => 'ٹب میں نہانا';

  @override
  String get bathTypeShower => 'شاور';

  @override
  String get bathNotes => 'نوٹس (اختیاری)';

  @override
  String get bathProducts => 'استعمال کردہ مصنوعات (اختیاری)';

  @override
  String get vaccineTitle => 'ویکسینیشن';

  @override
  String get vaccineTabGiven => 'دی گئی';

  @override
  String get vaccineTabSchedule => 'شیڈول';

  @override
  String get vaccineLog => 'ویکسین لاگ کریں';

  @override
  String get vaccineEdit => 'ویکسین میں ترمیم کریں';

  @override
  String get vaccineName => 'ویکسین کا نام';

  @override
  String get vaccineBrand => 'برانڈ / کارخانہ دار (اختیاری)';

  @override
  String get vaccineDate => 'دی گئی تاریخ';

  @override
  String get vaccineDose => 'خوراک نمبر (اختیاری)';

  @override
  String get vaccineSite => 'انجکشن کی جگہ (اختیاری)';

  @override
  String get vaccineNotes => 'نوٹس / ردعمل';

  @override
  String vaccineDue(String age) {
    return '$age سال کی عمر میں دی جائے گی';
  }

  @override
  String get vaccineGiven => 'دی گئی';

  @override
  String get vaccineNoGiven => 'ابھی تک کوئی ویکسین لاگ نہیں ہوئی۔';

  @override
  String get vaccineMarkGiven => 'دی گئی کے طور پر نشان زد کریں';

  @override
  String get whoChartTitle => 'ڈبلیو ایچ او نشوونما چارٹس';

  @override
  String get whoWeightForAge => 'عمر کے لحاظ سے وزن';

  @override
  String get whoHeightForAge => 'عمر کے لحاظ سے لمبائی/قد';

  @override
  String get whoHeadForAge => 'عمر کے لحاظ سے سر کا طواف';

  @override
  String get whoGenderBoy => 'لڑکا';

  @override
  String get whoGenderGirl => 'لڑکی';

  @override
  String get whoNoData => 'ابھی تک کوئی پیمائش لاگ نہیں ہوئی۔\nچارٹ دیکھنے کے لیے دن کے اندراجات سے وزن لاگ کریں۔';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'آپ کا بچہ';

  @override
  String whoAgeMonths(int n) {
    return '$n ماہ';
  }

  @override
  String get whoNoBirthDate => 'عمر کی بنیاد پر چارٹ دیکھنے کے لیے پروفائل میں بچے کی تاریخ پیدائش سیٹ کریں۔';

  @override
  String get notifTitle => 'یاد دہانیاں';

  @override
  String get notifFeedingReminder => 'فیڈنگ کی یاد دہانی';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'مجھے $hours گھنٹے بعد یاد دلائیں اگر کوئی فیڈ لاگ نہ ہو';
  }

  @override
  String get notifDiaperReminder => 'ڈائپر کی یاد دہانی';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'مجھے $hours گھنٹے بعد یاد دلائیں اگر کوئی ڈائپر لاگ نہ ہو';
  }

  @override
  String get notifMedicationReminder => 'دوائی کی یاد دہانی';

  @override
  String get notifEnabled => 'اطلاعات فعال ہیں';

  @override
  String get notifDisabled => 'اطلاعات غیر فعال ہیں';

  @override
  String get notifPermissionRequired => 'براہ کرم اپنے ڈیوائس کی ترتیبات میں اطلاعات کو فعال کریں۔';

  @override
  String get exportTitle => 'برآمد اور بیک اپ';

  @override
  String get exportJson => 'بیک اپ برآمد کریں';

  @override
  String get exportJsonDesc => 'تمام ڈیٹا اور تصاویر ایک ‎.zip فائل میں';

  @override
  String get exportPdf => 'PDF کے طور پر برآمد کریں';

  @override
  String get exportPdfDesc => 'ماہر اطفال کے لیے پڑھنے کے قابل خلاصہ';

  @override
  String get importJson => 'بیک اپ بحال کریں';

  @override
  String get importJsonDesc => '‎.zip بیک اپ سے (یا پرانی ‎.json برآمد سے)';

  @override
  String get importDialogTitle => 'ڈیٹا درآمد کریں؟';

  @override
  String get importDialogBody => 'ضم کرنا فائل کے اندراجات کو آپ کے موجودہ ڈیٹا کے ساتھ شامل کرتا ہے۔ سب کچھ بدل دیں پہلے آپ کا موجودہ ڈیٹا حذف کر دیتا ہے۔';

  @override
  String get importMerge => 'ضم کریں';

  @override
  String get importReplaceAll => 'سب بدل دیں';

  @override
  String get importSuccess => 'درآمد مکمل ہوئی';

  @override
  String get importInvalidFile => 'یہ Baby Tracker ایکسپورٹ فائل نہیں لگتی۔';

  @override
  String get exportGoogleDrive => 'Google Drive پر بیک اپ';

  @override
  String get exportGenerating => 'رپورٹ تیار کی جا رہی ہے...';

  @override
  String get milestoneTitle => 'نشوونما کے مراحل';

  @override
  String get milestoneTabAchieved => 'حاصل شدہ';

  @override
  String get milestoneTabUpcoming => 'آنے والے';

  @override
  String get milestoneCustomAdd => 'اپنی مرضی کا مرحلہ';

  @override
  String get milestoneDeleteTitle => 'مرحلہ حذف کریں؟';

  @override
  String get milestoneEdit => 'مرحلہ میں ترمیم کریں';

  @override
  String get milestoneAdd => 'مرحلہ شامل کریں';

  @override
  String get milestoneName => 'مرحلے کا نام *';

  @override
  String get milestoneDate => 'حاصل کرنے کی تاریخ';

  @override
  String get milestoneNotes => 'نوٹس (اختیاری)';

  @override
  String get milestoneNotesHint => 'یاد رکھنے کے قابل کوئی تفصیلات...';

  @override
  String get milestoneNoAchieved => 'ابھی تک کوئی مرحلہ حاصل نہیں ہوا۔';

  @override
  String get milestoneAllDone => 'تمام طے شدہ مراحل حاصل کر لیے!';

  @override
  String get milestoneFirstSmile => 'پہلی مسکراہٹ';

  @override
  String get milestoneFirstLaugh => 'پہلی ہنسی';

  @override
  String get milestoneFirstTooth => 'پہلا دانت';

  @override
  String get milestoneRolledBackTummy => 'پیٹھ سے پیٹ کے بل پلٹا';

  @override
  String get milestoneRolledTummyBack => 'پیٹ سے پیٹھ کے بل پلٹا';

  @override
  String get milestoneSatUnsupported => 'بغیر سہارے بیٹھا';

  @override
  String get milestoneStartedCrawling => 'رینگنا شروع کیا';

  @override
  String get milestonePulledToStand => 'پکڑ کر کھڑا ہوا';

  @override
  String get milestoneFirstSteps => 'پہلے قدم';

  @override
  String get milestoneFirstWord => 'پہلا لفظ';

  @override
  String get milestoneFirstSolidFood => 'پہلا ٹھوس کھانا';

  @override
  String get milestoneFirstHaircut => 'پہلا بال کٹوانا';

  @override
  String get milestoneSleptThroughNight => 'رات بھر سویا';

  @override
  String get milestoneWavedBye => 'ہاتھ ہلا کر بائے کہا';

  @override
  String get milestoneClappedHands => 'تالیاں بجائیں';

  @override
  String get milestoneFirstBirthday => 'پہلی سالگرہ';

  @override
  String get settingsTitle => 'ترتیبات';

  @override
  String get settingsAppearance => 'ظاہری شکل';

  @override
  String get settingsDarkMode => 'ڈارک موڈ';

  @override
  String get settingsDarkActive => 'ڈارک تھیم فعال ہے';

  @override
  String get settingsLightActive => 'لائٹ تھیم فعال ہے';

  @override
  String get settingsUnits => 'اکائیاں';

  @override
  String get settingsWeightUnit => 'وزن کی اکائی';

  @override
  String get settingsTempUnit => 'درجہ حرارت کی اکائی';

  @override
  String get settingsVolumeUnit => 'دودھ کی مقدار کی اکائی';

  @override
  String get settingsLanguage => 'زبان';

  @override
  String get settingsNotifications => 'اطلاعات اور یاد دہانیاں';

  @override
  String get settingsExport => 'برآمد اور بیک اپ';

  @override
  String get settingsTips => 'ٹپس';

  @override
  String get tipSwitchBabies => 'بچوں کے درمیان سوئچ کریں';

  @override
  String get tipSwitchBabiesDesc => 'بچے کے اوتار پر ٹیپ کریں (اوپر) تاکہ سوئچ کریں یا بچے کا پروفائل شامل کریں۔';

  @override
  String get tipSwipeDelete => 'حذف کرنے کے لیے بائیں سوائپ کریں';

  @override
  String get tipSwipeDeleteDesc => 'دن کی ٹائلوں اور انفرادی اندراجات پر کام کرتا ہے۔';

  @override
  String get tipTapToEdit => 'کسی بھی اندراج کو ترمیم کرنے کے لیے تھپتھپائیں';

  @override
  String get tipMultipleFeeds => 'متعدد فیڈز لاگ کریں';

  @override
  String get tipMultipleFeedsDesc => 'فیڈنگ فارم میں، \"ایک اور فیڈ شامل کریں\" کو تھپتھپا کر ایک ساتھ چھاتی اور بوتل کی فیڈ لاگ کریں۔';

  @override
  String get tipExportData => 'ڈیٹا برآمد کریں';

  @override
  String get tipExportDataDesc => 'تمام ڈیٹا اور تصاویر کو ایک فائل میں محفوظ کرنے کے لیے ہوم پر شیئر آئیکن استعمال کریں۔';

  @override
  String get babiesTitle => 'بچے';

  @override
  String get addBaby => 'بچہ شامل کریں';

  @override
  String get editProfile => 'پروفائل میں ترمیم کریں';

  @override
  String get babyNameRequired => 'نام *';

  @override
  String get babyDobOptional => 'پیدائش کی تاریخ (اختیاری)';

  @override
  String babyBornOn(String date) {
    return '$date کو پیدا ہوا';
  }

  @override
  String get genderUnknown => 'نامعلوم';

  @override
  String get genderBoy => 'لڑکا';

  @override
  String get genderGirl => 'لڑکی';

  @override
  String get cannotDeleteOnlyProfile => 'صرف ایک بچے کا پروفائل حذف نہیں کر سکتے۔';

  @override
  String deleteProfileTitle(String name) {
    return '$name کو حذف کریں؟';
  }

  @override
  String get deleteProfileContent => 'اس بچے کا تمام ڈیٹا مستقل طور پر حذف ہو جائے گا۔';

  @override
  String get graphsTitle => 'گراف';

  @override
  String get graphsTabDaily => 'روزانہ';

  @override
  String get graphsTabGrowth => 'نشوونما';

  @override
  String get graphsTabHealth => 'صحت';

  @override
  String get graphsTabWho => 'ڈبلیو ایچ او چارٹس';

  @override
  String get graphsTotalFeeds => 'کل فیڈز';

  @override
  String get graphsAvgPerDay => 'اوسط / دن';

  @override
  String get graphsTotalDiapers => 'ڈائپرز';

  @override
  String get graphsTotalMilk => 'کل دودھ';

  @override
  String get graphsTotalSleep => 'کل نیند';

  @override
  String get graphsAvgSleep => 'اوسط نیند / دن';

  @override
  String get graphsFeedsPerDay => 'فی دن فیڈز';

  @override
  String get graphsDiapersPerDay => 'فی دن ڈائپرز';

  @override
  String get graphsMilkPerDay => 'فی دن دودھ (ملی لیٹر)';

  @override
  String get graphsMilkPerDayMl => 'روزانہ دودھ (ملی لیٹر)';

  @override
  String get graphsMilkPerDayOz => 'روزانہ دودھ (اونس)';

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
  String get graphsNoWeightData => 'ابھی تک کوئی وزن کے اندراجات نہیں۔\nدن کے اندراجات سے وزن لاگ کریں۔';

  @override
  String get graphsNoTempData => 'ابھی تک کوئی درجہ حرارت کے اندراجات نہیں۔\nدن میں درجہ حرارت لاگ کریں۔';

  @override
  String get timeLabel => 'وقت';

  @override
  String get noColourRecorded => 'کوئی رنگ ریکارڈ نہیں کیا گیا';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دن کی عمر',
      one: '1 دن کی عمر',
      zero: 'نومولود',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ماہ کی عمر',
      one: '1 ماہ کی عمر',
      zero: '1 ماہ سے کم',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years سال $months ماہ کی عمر';
  }

  @override
  String medicationLabel(String name) {
    return 'دوائی: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'دورہ';

  @override
  String doctorVisitLabel(String reason) {
    return 'ڈاکٹر کا دورہ — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 نوٹ';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'ڈاکٹر: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'کوئی ڈاکٹر درج نہیں';

  @override
  String get summaryPoosLabel => 'پاخانہ';

  @override
  String get summaryPeesLabel => 'پیشاب';

  @override
  String get summaryMilkLabel => 'دودھ ملی';

  @override
  String get summaryMilkLabelMl => 'دودھ ملی لیٹر';

  @override
  String get summaryMilkLabelOz => 'دودھ اونس';

  @override
  String get summaryBreastLabel => 'دودھ پلانا من';

  @override
  String get summarySleepLabel => 'نیند';

  @override
  String get settingsOledMode => 'OLED (خالص سیاہ)';

  @override
  String get settingsOledModeDesc => 'OLED اسکرینوں پر بیٹری بچانے کے لیے خالص سیاہ پس منظر استعمال کریں';

  @override
  String get settingsImmersiveMode => 'امرسیو موڈ';

  @override
  String get settingsImmersiveModeDesc => 'سسٹم اسٹیٹس اور نیویگیشن بار چھپائیں';

  @override
  String get navVaccinationsEntry => 'ویکسینیشن';

  @override
  String get whoChartsEntry => 'WHO نمو کے چارٹس';

  @override
  String get medicationEditTitle => 'دوائی میں ترمیم';

  @override
  String get medicationLogTitle => 'دوائی درج کریں';

  @override
  String get medicationYourCourses => 'آپ کے علاج';

  @override
  String get medicationManageCourses => 'علاج کا انتظام';

  @override
  String get medicationNameRequired => 'دوائی کا نام *';

  @override
  String get medicationDosageWarning => 'ہمیشہ وزن/عمر کے مطابق خوراک دیں۔ تجویز کردہ تعداد سے زیادہ نہ دیں۔';

  @override
  String get medicationNotesOptional => 'نوٹس (اختیاری)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count منٹ پہلے',
      one: '1 منٹ پہلے',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count گھنٹے پہلے',
      one: '1 گھنٹہ پہلے',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دن پہلے',
      one: '1 دن پہلے',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'آخری بار دی گئی $ago';
  }

  @override
  String get medicationNeverGiven => 'ابھی نہیں دی گئی';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'آج $count خوراکیں',
      one: 'آج 1 خوراک',
      zero: 'آج کوئی خوراک نہیں',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'اگلی خوراک پچھلی کے $hours گھنٹے بعد ہی دی جا سکتی ہے';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'اس علاج کی روزانہ حد $max پوری ہو چکی ہے';
  }

  @override
  String get medicationEditCourse => 'علاج میں ترمیم';

  @override
  String get medicationNewCourse => 'نیا علاج';

  @override
  String get medicationReasonOptional => 'وجہ (اختیاری)';

  @override
  String get medicationIntervalHoursOptional => 'ہر کتنے گھنٹے بعد (اختیاری)';

  @override
  String get medicationMaxPerDayOptional => 'روزانہ زیادہ سے زیادہ خوراکیں (اختیاری)';

  @override
  String get medicationRemindNextDose => 'اگلی خوراک کے وقت یاد دلائیں';

  @override
  String medicationEndCourseTitle(String name) {
    return '$name ختم کریں؟';
  }

  @override
  String get medicationEndCoursePrompt => 'کیسا رہا؟';

  @override
  String get medicationDeleteCourseTitle => 'یہ علاج حذف کریں؟';

  @override
  String get medicationResultWorked => 'فائدہ ہوا';

  @override
  String get medicationResultPartlyWorked => 'کچھ فائدہ ہوا';

  @override
  String get medicationResultDidntWork => 'فائدہ نہیں ہوا';

  @override
  String get medicationResultSideEffects => 'مضر اثرات';

  @override
  String get medicationResultNone => 'درجہ بندی نہیں';

  @override
  String get medicationsTitle => 'دوائیاں';

  @override
  String medicationActiveTab(int count) {
    return 'جاری ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'گزشتہ ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'کوئی جاری علاج نہیں۔\n+ بٹن سے نیا شروع کریں۔';

  @override
  String get medicationNoPastCourses => 'ابھی کوئی گزشتہ علاج نہیں۔';

  @override
  String medicationTimesGiven(int count) {
    return '$count× دی گئی';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'آخری: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'اگلی $time';
  }

  @override
  String get medicationEndCourse => 'علاج ختم کریں';

  @override
  String feedLastSideHint(String side) {
    return 'پچھلی بار: $side';
  }

  @override
  String get feedSideLeft => 'بایاں';

  @override
  String get feedSideRight => 'دایاں';

  @override
  String get feedSideBoth => 'دونوں';

  @override
  String get feedSideLeftMinutes => 'بایاں (منٹ)';

  @override
  String get feedSideRightMinutes => 'دایاں (منٹ)';

  @override
  String get timeAgoJustNow => 'ابھی ابھی';

  @override
  String get timeUntilOverdue => 'وقت گزر گیا';

  @override
  String timeUntilMinutes(int count) {
    return '$count منٹ میں';
  }

  @override
  String timeUntilHours(int count) {
    return '$count گھنٹے میں';
  }

  @override
  String timeUntilDays(int count) {
    return '$count دن میں';
  }

  @override
  String get timerDiscardTitle => 'یہ ٹائمر ختم کریں؟';

  @override
  String get timerDiscard => 'ختم کریں';

  @override
  String timerFeedingRunning(String side) {
    return 'فیڈنگ · $side';
  }

  @override
  String get timerSleepRunning => 'نیند کا ٹائمر چل رہا ہے';

  @override
  String get timerSwitchSide => 'طرف بدلیں';

  @override
  String get timerStop => 'روکیں';

  @override
  String get sinceLastFeed => 'آخری فیڈ';

  @override
  String get sinceLastDiaper => 'آخری ڈائپر';

  @override
  String get sinceAwake => 'جاگ رہا ہے';

  @override
  String get sinceAsleep => 'سو رہا ہے';

  @override
  String nextDoseDue(String name) {
    return '$name کا وقت';
  }

  @override
  String get weighConditionNaked => 'بغیر کپڑوں کے';

  @override
  String get weighConditionDiaper => 'صرف ڈائپر';

  @override
  String get weighConditionLightClothes => 'ہلکے کپڑے';

  @override
  String get weighConditionDressed => 'کپڑوں سمیت';

  @override
  String get weighCondition => 'وزن کے وقت پہنا ہوا';

  @override
  String get growthMeasurementsOptional => 'دیگر پیمائشیں (اختیاری)';

  @override
  String get growthHeightCm => 'قد (سینٹی میٹر)';

  @override
  String get growthHeadCm => 'سر کا گھیر (سینٹی میٹر)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'پچھلی بار وزن $condition کیا گیا تھا — فرق صرف نشوونما کا نہیں ہو سکتا';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm سینٹی میٹر';
  }

  @override
  String growthHeadValue(String cm) {
    return 'سر $cm سینٹی میٹر';
  }

  @override
  String get growthHeightOverTime => 'وقت کے ساتھ قد';

  @override
  String get growthHeadOverTime => 'وقت کے ساتھ سر کا گھیر';

  @override
  String get graphsRecentWeighIns => 'حالیہ وزن';

  @override
  String get solidsAmountFewSpoons => 'چند چمچ';

  @override
  String get solidsAmountHalf => 'آدھی مقدار';

  @override
  String get solidsAmountFull => 'پوری مقدار';

  @override
  String get solidsAmountTaste => 'صرف چکھا';

  @override
  String get solidsReactionMild => 'ہلکا ردعمل';

  @override
  String get solidsReactionAllergic => 'الرجی کا ردعمل';

  @override
  String get solidsReactionNone => 'کوئی ردعمل نہیں';

  @override
  String get solidsEditTitle => 'ٹھوس غذا میں ترمیم';

  @override
  String get solidsLogTitle => 'ٹھوس غذا درج کریں';

  @override
  String get solidsFoodsLabel => 'غذائیں';

  @override
  String get solidsAddFoodHint => 'غذا شامل کریں';

  @override
  String get solidsAmount => 'مقدار';

  @override
  String get solidsLiked => 'پسند آیا؟';

  @override
  String get solidsReaction => 'ردعمل';

  @override
  String get solidsNotesOptional => 'نوٹس (اختیاری)';

  @override
  String get foodsTitle => 'آزمائی گئی غذائیں';

  @override
  String get foodsEmpty => 'ابھی کوئی ٹھوس غذا درج نہیں۔';

  @override
  String get foodsAllergensNotYet => 'عام الرجی والی غذائیں جو ابھی شروع نہیں ہوئیں';

  @override
  String foodsTriedCount(int count) {
    return '$count غذائیں آزمائی گئیں';
  }

  @override
  String foodsFirstTried(String date) {
    return 'پہلی بار: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'ٹھوس غذا';

  @override
  String get feedAmountOz => 'مقدار (اونس)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'آخری فیڈ کے $interval بعد یاد دلائیں';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'آخری ڈائپر کے $interval بعد یاد دلائیں';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'ہر $interval';
  }

  @override
  String get notifIntervalTitle => 'یاد دہانی کا وقفہ';

  @override
  String get notifIntervalHours => 'گھنٹے';

  @override
  String get notifIntervalMinutes => 'منٹ';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'کم از کم $minutes منٹ';
  }

  @override
  String get settingsFeeding => 'فیڈنگ';

  @override
  String get settingsTrackBottles => 'بوتلوں کا ریکارڈ رکھیں';

  @override
  String get settingsTrackBottlesDesc => 'منتخب کریں کہ کون سی بوتل استعمال ہوئی، اور کتنا تیار ہوا اور کتنا پیا گیا';

  @override
  String get bottlesTitle => 'میری بوتلیں';

  @override
  String get bottlesEmpty => 'ابھی کوئی بوتل نہیں۔\nاپنی بوتلیں شامل کریں تاکہ فیڈ درج کرتے وقت ایک منتخب کر سکیں۔';

  @override
  String get bottleAdd => 'بوتل شامل کریں';

  @override
  String get bottleEdit => 'بوتل میں ترمیم';

  @override
  String get bottleLabel => 'لیبل / نمبر (مثلاً #3)';

  @override
  String get bottleBrand => 'برانڈ / قسم (اختیاری)';

  @override
  String get bottleCapacity => 'گنجائش (اختیاری)';

  @override
  String get bottleNipple => 'نپل کا سائز / بہاؤ (اختیاری)';

  @override
  String get bottleMaterial => 'مواد';

  @override
  String get bottleRetired => 'استعمال سے باہر';

  @override
  String get bottleRetire => 'استعمال بند کریں';

  @override
  String get bottleUnretire => 'دوبارہ استعمال کریں';

  @override
  String bottleDeleteTitle(String name) {
    return '$name حذف کریں؟';
  }

  @override
  String get bottleDeleteBody => 'پچھلی فیڈز اپنی مقدار برقرار رکھیں گی لیکن یہ بوتل نہیں دکھائیں گی۔ ریکارڈ رکھتے ہوئے اسے فہرست سے چھپانے کے لیے \"استعمال بند کریں\" استعمال کریں۔';

  @override
  String get feedPrepared => 'تیار کیا';

  @override
  String get feedDrank => 'پیا';

  @override
  String feedLeftover(String amount) {
    return '$amount بچ گیا';
  }

  @override
  String get feedDrankMoreThanPrepared => 'تیار شدہ سے زیادہ؟';

  @override
  String get feedWhichBottle => 'کون سی بوتل؟';

  @override
  String get feedNoBottlesYet => 'ابھی کوئی بوتل نہیں — ترتیبات ← میری بوتلیں میں شامل کریں۔';

  @override
  String get photoPrivacyTitle => 'آپ کی تصاویر اسی فون پر رہتی ہیں';

  @override
  String get photoPrivacyBody => 'تصاویر صرف اس ڈیوائس پر اسی ایپ کے اندر محفوظ ہوتی ہیں۔ ایپ کو انٹرنیٹ تک رسائی نہیں، اس لیے کچھ بھی اپ لوڈ یا شیئر نہیں ہوتا جب تک آپ خود بیک اپ برآمد نہ کریں۔\n\nپہلی تصویر لیتے وقت Android کیمرے کی اجازت مانگ سکتا ہے۔';

  @override
  String get photoPrivacyContinue => 'جاری رکھیں';

  @override
  String get photoTakePhoto => 'تصویر لیں';

  @override
  String get photoChooseFromGallery => 'گیلری سے منتخب کریں';

  @override
  String get photoCaption => 'عنوان';

  @override
  String get photoCompare => 'پہلی بمقابلہ تازہ ترین';

  @override
  String get photoAddOtherDay => 'کسی اور دن کے لیے شامل کریں';

  @override
  String get photoEmpty => 'ابھی کوئی تصویر نہیں۔\nروزانہ ایک تصویر لیں اور اپنے بچے کو بڑا ہوتا دیکھیں۔';

  @override
  String get photoToday => 'آج کی تصویر';

  @override
  String get photoAddToday => 'آج کی تصویر شامل کریں';

  @override
  String get photoReplace => 'بدلیں';

  @override
  String get photoDeleteTitle => 'یہ تصویر حذف کریں؟';

  @override
  String get ageBeforeBirth => 'پیدائش سے پہلے';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دن کا',
      one: '1 دن کا',
      zero: 'پیدائش کا دن',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months ماہ $days دن';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years سال $months ماہ';
  }

  @override
  String get navMemories => 'یادیں';

  @override
  String get memoriesTabPhotos => 'تصاویر';

  @override
  String get milestoneNoAchievedHint => 'تیار شدہ مرحلہ درج کرنے کے لیے \"آنے والے\" پر ٹیپ کریں،\nیا اپنا مرحلہ شامل کرنے کے لیے نیچے والا بٹن استعمال کریں۔';

  @override
  String get skinTitle => 'جلد کے مسائل';

  @override
  String get skinNew => 'جلد کا نیا مسئلہ';

  @override
  String get skinEdit => 'جلد کے مسئلے میں ترمیم';

  @override
  String skinTabActive(int count) {
    return 'جاری ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'ٹھیک ہو گئے ($count)';
  }

  @override
  String get skinEmptyActive => 'جلد کے کسی مسئلے کو ٹریک نہیں کیا جا رہا۔\nشروع کرنے کے لیے + دبائیں — ڈاکٹر کو تبدیلی دکھانے کے لیے آپ روزانہ تصویر شامل کر سکتے ہیں۔';

  @override
  String get skinEmptyHealed => 'ابھی کچھ ٹھیک نہیں ہوا۔';

  @override
  String get skinUpdateDue => 'آج اپ ڈیٹ کریں';

  @override
  String skinSince(String date) {
    return '$date سے';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دن',
      one: '1 دن',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return '$date کو ٹھیک ہوا';
  }

  @override
  String skinReminderAt(String time) {
    return 'روزانہ یاد دہانی $time بجے';
  }

  @override
  String get skinSeverityTrend => 'وقت کے ساتھ شدت';

  @override
  String get skinNoUpdates => 'ابھی کوئی اپ ڈیٹ نہیں۔ ٹائم لائن شروع کرنے کے لیے آج کی اپ ڈیٹ شامل کریں۔';

  @override
  String get skinExportPdf => 'ڈاکٹر کے لیے برآمد کریں (PDF)';

  @override
  String get skinMarkHealed => 'ٹھیک ہونے کا نشان لگائیں';

  @override
  String get skinReopen => 'دوبارہ جاری کا نشان لگائیں';

  @override
  String get skinUpdateToday => 'آج کی اپ ڈیٹ شامل کریں';

  @override
  String get skinEditToday => 'آج کی اپ ڈیٹ میں ترمیم';

  @override
  String skinDeleteTitle(String name) {
    return '$name اور اس کی تمام اپ ڈیٹس حذف کریں؟';
  }

  @override
  String get skinDeleteUpdateTitle => 'یہ اپ ڈیٹ حذف کریں؟';

  @override
  String skinTreatmentValue(String treatment) {
    return 'علاج: $treatment';
  }

  @override
  String get skinName => 'مسئلہ *';

  @override
  String get skinBodyArea => 'جسم پر کہاں؟';

  @override
  String get skinBegan => 'شروع ہوا';

  @override
  String get skinRemindDaily => 'روزانہ اپ ڈیٹ کی یاد دلائیں';

  @override
  String get skinReminderTime => 'یاد دہانی کا وقت';

  @override
  String get skinUpdateTitle => 'جلد کی اپ ڈیٹ';

  @override
  String get skinSeverity => 'کیسا لگ رہا ہے؟';

  @override
  String get skinSeverity0 => '0 · صاف';

  @override
  String get skinSeverity1 => '1 · ہلکا';

  @override
  String get skinSeverity2 => '2 · درمیانہ';

  @override
  String get skinSeverity3 => '3 · شدید';

  @override
  String get skinSeverity4 => '4 · بہت شدید';

  @override
  String get skinTreatment => 'علاج (اختیاری)';

  @override
  String get skinTreatmentHint => 'مثلاً موئسچرائزر، ہائیڈروکارٹیزون 1%';

  @override
  String get skinAddPhoto => 'تصویر شامل کریں';

  @override
  String get skinCardNone => 'خارش، ایگزیما یا جلد کے کسی اور مسئلے کو روز بہ روز ڈاکٹر کے لیے تصاویر کے ساتھ ٹریک کریں';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کو آج کی اپ ڈیٹ چاہیے',
      one: '1 کو آج کی اپ ڈیٹ چاہیے',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'بیک اپ تیار ہو رہا ہے…';

  @override
  String get backupFailed => 'بیک اپ نہیں بن سکا۔';

  @override
  String get backupSavedTo => 'بیک اپ یہاں محفوظ ہوا:';

  @override
  String get backupShareSubject => 'Baby Tracker بیک اپ';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تصاویر شامل ہیں۔',
      one: '1 تصویر شامل ہے۔',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'فیڈ';

  @override
  String get widgetStopFeed => 'فیڈ روکیں';

  @override
  String get widgetDiaper => 'ڈائپر';

  @override
  String get widgetSleep => 'نیند';

  @override
  String get widgetWakeUp => 'جاگ گیا';

  @override
  String widgetFeedingFor(String duration) {
    return 'فیڈنگ $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'فیڈ $ago';
  }

  @override
  String get widgetNoFeedsYet => 'ابھی کوئی فیڈ نہیں';

  @override
  String widgetChangedAgo(String ago) {
    return 'بدلا گیا $ago';
  }

  @override
  String get widgetNoDiapersYet => 'ابھی کوئی ڈائپر نہیں';

  @override
  String widgetAsleepFor(String duration) {
    return 'سو رہا ہے $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'جاگا $ago';
  }

  @override
  String get widgetStopSleepFirst => 'پہلے نیند کا ٹائمر روکیں';

  @override
  String get widgetStopFeedFirst => 'پہلے فیڈنگ کا ٹائمر روکیں';

  @override
  String quickAddTitle(String name) {
    return '$name کے لیے شامل کریں';
  }

  @override
  String get quickAddOpenApp => 'ایپ کھولیں';

  @override
  String get foodPeanut => 'مونگ پھلی';

  @override
  String get foodEgg => 'انڈا';

  @override
  String get foodDairy => 'دودھ کی مصنوعات';

  @override
  String get foodWheat => 'گندم';

  @override
  String get foodSoy => 'سویا';

  @override
  String get foodFish => 'مچھلی';

  @override
  String get foodShellfish => 'جھینگا / شیل فش';

  @override
  String get foodTreeNuts => 'میوے';

  @override
  String get foodSesame => 'تل';

  @override
  String get foodBanana => 'کیلا';

  @override
  String get foodAvocado => 'ایووکاڈو';

  @override
  String get foodSweetPotato => 'شکرقندی';

  @override
  String get foodRiceCereal => 'چاول کا دلیہ';

  @override
  String get foodOatmeal => 'جئی کا دلیہ';

  @override
  String get foodCarrot => 'گاجر';

  @override
  String get foodApple => 'سیب';

  @override
  String get foodPea => 'مٹر';

  @override
  String get symptomRash => 'دانے';

  @override
  String get symptomHives => 'پتی اچھلنا';

  @override
  String get symptomVomiting => 'قے';

  @override
  String get symptomDiarrhea => 'دست';

  @override
  String get symptomSwelling => 'سوجن';

  @override
  String get doseUnitDrops => 'قطرے';

  @override
  String get doseUnitTablets => 'گولیاں';

  @override
  String get bottleMaterialPlastic => 'پلاسٹک';

  @override
  String get bottleMaterialGlass => 'شیشہ';

  @override
  String get bottleMaterialSilicone => 'سلیکون';

  @override
  String get bottleMaterialSteel => 'اسٹین لیس اسٹیل';

  @override
  String get visitReasonRoutine => 'معمول کا معائنہ';

  @override
  String get visitReasonSick => 'بیماری';

  @override
  String get visitReasonVaccination => 'ویکسینیشن';

  @override
  String get visitReasonSpecialist => 'ماہر ڈاکٹر';

  @override
  String get visitReasonFollowUp => 'فالو اپ';

  @override
  String get visitReasonOther => 'دیگر';

  @override
  String get pooColourPale => 'پھیکا';

  @override
  String get noteTagHappyDay => 'خوشی کا دن';

  @override
  String get noteTagSleptWell => 'اچھی نیند';

  @override
  String get noteTagFussy => 'چڑچڑا';

  @override
  String get noteTagNotWell => 'طبیعت ٹھیک نہیں';

  @override
  String get noteTagFirstTime => 'پہلی بار!';

  @override
  String get noteTagTeething => 'دانت نکلنا';

  @override
  String get noteTagGrowthSpurt => 'تیز نشوونما';

  @override
  String get noteTagMilestone => 'اہم مرحلہ';

  @override
  String get tummyTimeNotesHint => 'مثلاً مزہ آیا، چڑچڑا تھا...';

  @override
  String get skinSuggestEczema => 'ایگزیما';

  @override
  String get skinSuggestDiaperRash => 'ڈائپر ریش';

  @override
  String get skinSuggestCradleCap => 'سر کی خشکی (کریڈل کیپ)';

  @override
  String get skinSuggestBabyAcne => 'بچوں کے دانے';

  @override
  String get skinSuggestHeatRash => 'گرمی دانے';

  @override
  String get skinSuggestDrySkin => 'خشک جلد';

  @override
  String get bodyFace => 'چہرہ';

  @override
  String get bodyScalp => 'سر کی جلد';

  @override
  String get bodyNeck => 'گردن';

  @override
  String get bodyChest => 'سینہ';

  @override
  String get bodyBack => 'کمر';

  @override
  String get bodyArms => 'بازو';

  @override
  String get bodyHands => 'ہاتھ';

  @override
  String get bodyDiaperArea => 'ڈائپر والی جگہ';

  @override
  String get bodyLegs => 'ٹانگیں';

  @override
  String get bodyFeet => 'پاؤں';

  @override
  String get medSuggestGripeWater => 'گرائپ واٹر';

  @override
  String get medSuggestVitaminD => 'وٹامن ڈی';

  @override
  String get medSuggestIronDrops => 'آئرن کے قطرے';

  @override
  String get medSuggestAntibiotic => 'اینٹی بائیوٹک';

  @override
  String get medSuggestProbiotic => 'پروبائیوٹک';

  @override
  String vaccinePageTitle(String name) {
    return '$name — ویکسینیشن';
  }

  @override
  String get vaccineDeleteTitle => 'ویکسین کا ریکارڈ حذف کریں؟';

  @override
  String get vaccineSiteHint => 'مثلاً بائیں ران';

  @override
  String get vaccineNotesHint => 'مثلاً ہلکا بخار، چڑچڑاپن، کوئی ردعمل نہیں...';

  @override
  String get vaccineNoGivenHint => '+ بٹن استعمال کریں یا شیڈول ٹیب میں \"دی گئی کا نشان لگائیں\" پر ٹیپ کریں۔';

  @override
  String get vaccineAgeBirth => 'پیدائش پر';

  @override
  String vaccineAgeMonths(String range) {
    return '$range ماہ';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range ماہ (سالانہ)';
  }

  @override
  String get whoTabHeight => 'قد';

  @override
  String get whoTabHead => 'سر';

  @override
  String get whoChartFor => 'چارٹ برائے:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 ماہ)';
  }

  @override
  String get whoNoDataPoints => 'ابھی کوئی ڈیٹا نہیں۔ اپنے بچے کو چارٹ پر دیکھنے کے لیے پیمائشیں درج کریں۔';

  @override
  String get whoLatestMeasurement => 'تازہ ترین پیمائش';

  @override
  String whoApproxPercentile(String value) {
    return 'تقریبی پرسنٹائل: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return '$low اور $high کے درمیان';
  }

  @override
  String whoMonthsOld(String months) {
    return '$months ماہ کا';
  }

  @override
  String get whoDisclaimer => 'یہ چارٹ صرف معلومات کے لیے ہیں۔ ان کی تشریح ہمیشہ بچوں کے ڈاکٹر سے کروائیں۔';

  @override
  String get whoMedian => 'P50 (وسطانیہ)';

  @override
  String get notifChannelName => 'Baby Tracker یاد دہانیاں';

  @override
  String get notifChannelDesc => 'فیڈنگ، ڈائپر، دوائی اور جلد کے معائنے کی یاد دہانیاں';

  @override
  String get notifFeedTitle => 'فیڈ کا وقت!';

  @override
  String notifFeedBody(String interval) {
    return 'پچھلے $interval میں کوئی فیڈ درج نہیں ہوئی۔';
  }

  @override
  String get notifDiaperTitle => 'ڈائپر چیک کریں!';

  @override
  String notifDiaperBody(String interval) {
    return 'پچھلے $interval میں کوئی ڈائپر تبدیلی درج نہیں ہوئی۔';
  }

  @override
  String notifDoseTitle(String name) {
    return 'خوراک کا وقت: $name';
  }

  @override
  String notifDoseBody(String name) {
    return '$name کی اگلی خوراک کا وقت ہو گیا ہے۔';
  }

  @override
  String notifSkinTitle(String name) {
    return 'جلد کا معائنہ: $name';
  }

  @override
  String get notifSkinBody => 'آج کی اپ ڈیٹ شامل کریں (اور چاہیں تو تصویر بھی)۔';

  @override
  String get timerFeedingNotif => 'فیڈنگ کا ٹائمر چل رہا ہے';

  @override
  String intervalMinutes(String m) {
    return '$m منٹ';
  }

  @override
  String intervalHours(String h) {
    return '$h گھنٹے';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h گھنٹے $m منٹ';
  }

  @override
  String get settingsRtlActive => 'دائیں سے بائیں ترتیب فعال ہے';

  @override
  String get measurementHeightIn => 'لمبائی / قد (انچ)';

  @override
  String get measurementHeadIn => 'سر کا گھیر (انچ)';

  @override
  String get growthHeightIn => 'قد (انچ)';

  @override
  String get growthHeadIn => 'سر کا گھیر (انچ)';

  @override
  String growthHeightValueIn(String value) {
    return '$value انچ';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'سر $value انچ';
  }

  @override
  String get settingsLengthUnitNote => 'لمبائی وزن کی اکائی کے مطابق ہے (کلوگرام کے ساتھ سینٹی میٹر، پاؤنڈ کے ساتھ انچ)';

  @override
  String get formulaStoreBrand => 'اسٹور کا برانڈ';
}
