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
  String get exportPdf => 'PDF کے طور پر برآمد کریں';

  @override
  String get exportPdfDesc => 'ماہر اطفال کے لیے پڑھنے کے قابل خلاصہ';

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
  String get milestoneAllDone => 'تمام طے شدہ مراحل حاصل کر لیے! 🎉';

  @override
  String get milestoneFirstSmile => '😊 پہلی مسکراہٹ';

  @override
  String get milestoneFirstLaugh => '😂 پہلی ہنسی';

  @override
  String get milestoneFirstTooth => '🦷 پہلا دانت';

  @override
  String get milestoneRolledBackTummy => '🔄 پیٹھ سے پیٹ کے بل پلٹا';

  @override
  String get milestoneRolledTummyBack => '🔄 پیٹ سے پیٹھ کے بل پلٹا';

  @override
  String get milestoneSatUnsupported => '🧸 بغیر سہارے بیٹھا';

  @override
  String get milestoneStartedCrawling => '🐣 رینگنا شروع کیا';

  @override
  String get milestonePulledToStand => '🏋️ پکڑ کر کھڑا ہوا';

  @override
  String get milestoneFirstSteps => '👣 پہلے قدم';

  @override
  String get milestoneFirstWord => '💬 پہلا لفظ';

  @override
  String get milestoneFirstSolidFood => '🥣 پہلا ٹھوس کھانا';

  @override
  String get milestoneFirstHaircut => '✂️ پہلا بال کٹوانا';

  @override
  String get milestoneSleptThroughNight => '🌙 رات بھر سویا';

  @override
  String get milestoneWavedBye => '👋 ہاتھ ہلا کر بائے کہا';

  @override
  String get milestoneClappedHands => '👏 تالیاں بجائیں';

  @override
  String get milestoneFirstBirthday => '🎂 پہلی سالگرہ';

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
}
