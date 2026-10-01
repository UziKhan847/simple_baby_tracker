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
  String get exportJson => 'JSON کے طور پر برآمد کریں';

  @override
  String get exportJsonDesc => 'بیک اپ کے لیے خام ڈیٹا';

  @override
  String get exportPdf => 'PDF کے طور پر برآمد کریں';

  @override
  String get exportPdfDesc => 'ماہر اطفال کے لیے پڑھنے کے قابل خلاصہ';

  @override
  String get importJson => 'JSON سے درآمد کریں';

  @override
  String get importJsonDesc => 'بیک اپ فائل سے بحال کریں';

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
  String get settingsVolumeUnit => 'Milk volume unit';

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
  String get tipExportDataDesc => 'ہوم اسکرین پر شیئر آئیکون استعمال کریں تاکہ تمام ڈیٹا JSON میں برآمد ہو سکے۔';

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
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

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
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

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
