// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'ردیاب کودک';

  @override
  String get navHome => 'خانه';

  @override
  String get navGraphs => 'نمودارها';

  @override
  String get navMilestones => 'مراحل رشد';

  @override
  String get navSettings => 'تنظیمات';

  @override
  String get actionCancel => 'لغو';

  @override
  String get actionSave => 'ذخیره';

  @override
  String get actionUpdate => 'به‌روزرسانی';

  @override
  String get actionDelete => 'حذف';

  @override
  String get actionAdd => 'افزودن';

  @override
  String get actionEdit => 'ویرایش';

  @override
  String get actionClose => 'بستن';

  @override
  String get actionExport => 'خروجی داده';

  @override
  String get actionAddDay => 'افزودن روز';

  @override
  String get actionLog => 'ثبت';

  @override
  String get cannotUndo => 'این عمل قابل بازگشت نیست.';

  @override
  String get noData => 'داده‌ای وجود ندارد';

  @override
  String get noNotes => 'یادداشتی وجود ندارد';

  @override
  String get noDetails => 'جزئیاتی وجود ندارد';

  @override
  String get optional => '(اختیاری)';

  @override
  String get homeTitle => 'ردیاب';

  @override
  String get feedsToday => 'تغذیه‌های امروز';

  @override
  String get diapersToday => 'پوشک‌های امروز';

  @override
  String get sleepToday => 'خواب امروز';

  @override
  String todayLabel(String date) {
    return 'امروز — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count رویداد',
      one: '۱ رویداد',
      zero: 'هیچ رویدادی',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'حذف روز؟';

  @override
  String deleteDayContent(String date) {
    return '$date و تمام ورودی‌های آن حذف شود؟ این عمل قابل بازگشت نیست.';
  }

  @override
  String get rashRecorded => 'راش پوشک ثبت شد';

  @override
  String get noEntriesYet => 'هنوز ورودی‌ای وجود ندارد';

  @override
  String get addEntry => 'افزودن ورودی';

  @override
  String get deleteEntryTitle => 'حذف ورودی؟';

  @override
  String get entryTypeDiaper => 'تعویض پوشک';

  @override
  String get entryTypeFeeding => 'تغذیه';

  @override
  String get entryTypeSleep => 'خواب';

  @override
  String get entryTypeTemperature => 'دما';

  @override
  String get entryTypeWeight => 'وزن';

  @override
  String get entryTypeTummyTime => 'زمان شکم';

  @override
  String get entryTypeMedication => 'دارو';

  @override
  String get entryTypeDoctorVisit => 'مراجعه به پزشک';

  @override
  String get entryTypeNote => 'یادداشت روزانه / دفترچه';

  @override
  String get entryTypePumping => 'جلسه دوشیدن شیر';

  @override
  String get entryTypeBath => 'حمام';

  @override
  String get diaperPeePoo => 'پوشک — ادرار + مدفوع';

  @override
  String get diaperPee => 'پوشک — ادرار';

  @override
  String get diaperPoo => 'پوشک — مدفوع';

  @override
  String get diaperChange => 'تعویض پوشک';

  @override
  String get editDiaper => 'ویرایش پوشک';

  @override
  String get diaperContents => 'محصولات';

  @override
  String get diaperNone => 'هیچ';

  @override
  String get diaperPeeLabel => 'ادرار';

  @override
  String get diaperPooLabel => 'مدفوع';

  @override
  String get diaperBoth => 'هر دو';

  @override
  String get diaperConsistency => 'قوام مدفوع';

  @override
  String get consistencyHard => 'سفت / گلوله‌ای';

  @override
  String get consistencyHardHint => 'یبوست';

  @override
  String get consistencyFirm => 'نیمه‌سفت';

  @override
  String get consistencyFirmHint => 'کمی سفت';

  @override
  String get consistencyNormal => 'طبیعی';

  @override
  String get consistencyNormalHint => 'سالم';

  @override
  String get consistencySoft => 'نرم';

  @override
  String get consistencySoftHint => 'کمی نرم';

  @override
  String get consistencyLoose => 'آبکی / شل';

  @override
  String get consistencyLooseHint => 'تحت نظر';

  @override
  String get consistencyWatery => 'آبی';

  @override
  String get consistencyWateryHint => 'اسهال';

  @override
  String get warnConstipation => 'نشانه‌های یبوست — از نزدیک تحت نظر داشته باشید';

  @override
  String get warnDiarrhea => 'نشانه‌های اسهال — از نزدیک تحت نظر داشته باشید';

  @override
  String get pooColourLabel => 'رنگ (برای انتخاب ضربه بزنید)';

  @override
  String get pooColourAbnormal => '⚠️ غیرعادی (کم رنگ)';

  @override
  String get pooColourNormal => '✅ طبیعی';

  @override
  String pooColourSelected(String label) {
    return 'انتخاب شده: $label';
  }

  @override
  String get diaperSize => 'سایز پوشک';

  @override
  String get diaperBrand => 'برند';

  @override
  String get diaperBrandCustomLabel => 'نام برند';

  @override
  String get rashPresent => 'راش جلدی وجود دارد';

  @override
  String get rashPresentHint => 'قرمزی، تحریک یا راش پوشک';

  @override
  String get rashCreamUsed => 'کرم راش استفاده شده';

  @override
  String get rashCreamCustomLabel => 'نام کرم / پماد';

  @override
  String get rashFollowUpTitle => '⚠️ پیگیری راش';

  @override
  String get rashFollowUpQuestion => 'آخرین پوشک راش ثبت شده داشت. آیا بهبود یافته؟';

  @override
  String get rashImproved => 'بله، بهبود یافته';

  @override
  String get rashNoChange => 'بدون تغییر / بدتر شده';

  @override
  String get addFeeding => 'افزودن تغذیه';

  @override
  String get editFeeding => 'ویرایش تغذیه';

  @override
  String feedLabel(int number) {
    return 'تغذیه $number';
  }

  @override
  String get feedModeBottle => 'شیشه';

  @override
  String get feedModeSuckle => 'شیر مادر';

  @override
  String get feedAmountMl => 'مقدار (میلی‌لیتر)';

  @override
  String get feedType => 'نوع';

  @override
  String get feedBreastMilk => 'شیر مادر';

  @override
  String get feedFormula => 'شیر خشک';

  @override
  String get feedFormulaBrand => 'برند شیر خشک';

  @override
  String get feedFormulaBrandCustom => 'نام برند شیر خشک';

  @override
  String get feedDurationMinutes => 'مدت زمان (دقیقه)';

  @override
  String get addAnotherFeed => 'افزودن تغذیه دیگر';

  @override
  String get bottleBreastMilk => 'شیشه — شیر مادر';

  @override
  String get bottleFormula => 'شیشه — شیر خشک';

  @override
  String get breastfeedingSuckle => 'شیر مادر (از سینه)';

  @override
  String get logSleep => 'ثبت خواب';

  @override
  String get editSleep => 'ویرایش خواب';

  @override
  String get sleepStart => 'شروع خواب';

  @override
  String get sleepWakeUp => 'بیدار شدن';

  @override
  String sleepDuration(String duration) {
    return 'مدت: $duration';
  }

  @override
  String get sleepInvalidTimes => 'زمان نامعتبر';

  @override
  String get sleepWrapsNextDay => '(به روز بعد ختم می‌شود)';

  @override
  String get sleepNotes => 'یادداشت‌ها (اختیاری)';

  @override
  String get sleepNotesHint => 'مثلاً: بی‌قرار، مختصر بیدار شد...';

  @override
  String get sleepNoNotes => 'بدون یادداشت';

  @override
  String sleepHoursShort(int h, int m) {
    return '$hساعت $mدقیقه';
  }

  @override
  String get logTemperature => 'ثبت دما';

  @override
  String get editTemperature => 'ویرایش دما';

  @override
  String get temperatureLabel => 'دما';

  @override
  String get tempSeverityLow => 'دمای پایین — تحت نظر داشته باشید';

  @override
  String get tempSeverityNormal => 'دمای طبیعی';

  @override
  String get tempSeverityElevated => 'کمی بالا — از نزدیک تحت نظر داشته باشید';

  @override
  String get tempSeverityFever => 'تب — با پزشک مشورت کنید';

  @override
  String get tempReference => 'مرجع دما';

  @override
  String get tempRefLow => '< ۳۶/۰ °C / ۹۶/۸ °F';

  @override
  String get tempRefNormal => '۳۶/۰ – ۳۷/۴ °C / ۹۶/۸ – ۹۹/۳ °F';

  @override
  String get tempRefElevated => '۳۷/۵ – ۳۸/۴ °C / ۹۹/۵ – ۱۰۱/۱ °F';

  @override
  String get tempRefFever => '≥ ۳۸/۵ °C / ۱۰۱/۳ °F';

  @override
  String get tempFeverWarning => '⚠️ در صورت تب در نوزادان زیر ۳ ماه، همیشه با پزشک متخصص اطفال مشورت کنید.';

  @override
  String get tempLow => 'پایین';

  @override
  String get tempNormal => 'طبیعی';

  @override
  String get tempElevated => 'بالا';

  @override
  String get tempFever => 'تب';

  @override
  String get tempLatest => 'آخرین دما';

  @override
  String get tempSummary => 'خلاصه دما';

  @override
  String get tempFeverThreshold => 'آستانه تب';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز',
      one: '۱ روز',
      zero: 'هیچ روزی',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'ثبت وزن';

  @override
  String get editWeight => 'ویرایش وزن';

  @override
  String get weightLabel => 'وزن';

  @override
  String weightGain(String amount) {
    return '+$amount افزایش';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount کاهش';
  }

  @override
  String weightPrevious(String weight) {
    return 'قبلی: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'آخرین ثبت: $weight در تاریخ $date';
  }

  @override
  String get weightLatest => 'آخرین وزن';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount در بازه زمانی';
  }

  @override
  String get tummyTimeLog => 'ثبت زمان شکم';

  @override
  String get tummyTimeEdit => 'ویرایش زمان شکم';

  @override
  String get tummyTimeStart => 'زمان شروع';

  @override
  String get tummyTimeEnd => 'زمان پایان';

  @override
  String get tummyTimeTip => 'زمان شکم عضلات گردن و شانه را تقویت می‌کند.';

  @override
  String get medicationLog => 'ثبت دارو';

  @override
  String get medicationEdit => 'ویرایش دارو';

  @override
  String get medicationName => 'نام دارو *';

  @override
  String get medicationDose => 'دوز';

  @override
  String get medicationUnit => 'واحد';

  @override
  String get medicationCommon => 'داروهای رایج';

  @override
  String get medicationWarning => 'همیشه دستورالعمل دوز را بر اساس وزن/سن دنبال کنید. از دفعات توصیه شده تجاوز نکنید.';

  @override
  String get medicationNotes => 'یادداشت‌ها (اختیاری)';

  @override
  String get medicationNotesHint => 'مثلاً: دلیل، واکنش...';

  @override
  String get doctorVisitLog => 'مراجعه به پزشک';

  @override
  String get doctorVisitEdit => 'ویرایش مراجعه به پزشک';

  @override
  String get doctorName => 'نام پزشک / کلینیک';

  @override
  String get doctorVisitReason => 'دلیل مراجعه';

  @override
  String get doctorVisitMeasurements => 'اندازه‌گیری‌ها (اختیاری)';

  @override
  String get doctorVisitNotes => 'یادداشت‌ها';

  @override
  String get doctorVisitNotesHint => 'مثلاً: واکسن‌های تزریق شده، توصیه‌های پزشک...';

  @override
  String get measurementWeightKg => 'وزن (کیلوگرم)';

  @override
  String get measurementWeightLbs => 'وزن (پوند)';

  @override
  String get measurementHeightCm => 'طول / قد (سانتی‌متر)';

  @override
  String get measurementHeadCm => 'دور سر (سانتی‌متر)';

  @override
  String get dailyNoteLog => 'یادداشت روزانه';

  @override
  String get dailyNoteEdit => 'ویرایش یادداشت';

  @override
  String get dailyNoteTitle => 'عنوان (اختیاری)';

  @override
  String get dailyNoteText => 'یادداشت';

  @override
  String get dailyNoteHint => 'امروز چه اتفاقی افتاد؟ اولین بار غلت زدن؟ صبح زود ناآرام؟';

  @override
  String get dailyNoteTags => 'برچسب‌های سریع';

  @override
  String get pumpingLog => 'ثبت جلسه دوشیدن';

  @override
  String get pumpingEdit => 'ویرایش جلسه دوشیدن';

  @override
  String get pumpingLeft => 'سینه چپ (میلی‌لیتر)';

  @override
  String get pumpingRight => 'سینه راست (میلی‌لیتر)';

  @override
  String get pumpingTotal => 'کل دوشیده شده';

  @override
  String get pumpingDuration => 'مدت زمان (دقیقه)';

  @override
  String get pumpingStored => 'ذخیره / منجمد شده';

  @override
  String get pumpingNotes => 'یادداشت‌ها (اختیاری)';

  @override
  String get pumpingSessionTitle => 'دوشیدن شیر';

  @override
  String pumpingTotalMl(int ml) {
    return 'مجموع $ml میلی‌لیتر';
  }

  @override
  String get bathLog => 'ثبت حمام';

  @override
  String get bathEdit => 'ویرایش حمام';

  @override
  String get bathType => 'نوع حمام';

  @override
  String get bathTypeSponge => 'حمام اسفنجی';

  @override
  String get bathTypeTub => 'حمام در وان';

  @override
  String get bathTypeShower => 'دوش';

  @override
  String get bathNotes => 'یادداشت‌ها (اختیاری)';

  @override
  String get bathProducts => 'محصولات استفاده شده (اختیاری)';

  @override
  String get vaccineTitle => 'واکسیناسیون';

  @override
  String get vaccineTabGiven => 'تزریق شده';

  @override
  String get vaccineTabSchedule => 'برنامه زمانی';

  @override
  String get vaccineLog => 'ثبت واکسن';

  @override
  String get vaccineEdit => 'ویرایش واکسن';

  @override
  String get vaccineName => 'نام واکسن';

  @override
  String get vaccineBrand => 'برند / تولیدکننده (اختیاری)';

  @override
  String get vaccineDate => 'تاریخ تزریق';

  @override
  String get vaccineDose => 'شماره دوز (اختیاری)';

  @override
  String get vaccineSite => 'محل تزریق (اختیاری)';

  @override
  String get vaccineNotes => 'یادداشت‌ها / واکنش‌ها';

  @override
  String vaccineDue(String age) {
    return 'مقرر در سن $age';
  }

  @override
  String get vaccineGiven => 'تزریق شده';

  @override
  String get vaccineNoGiven => 'هنوز واکسنی ثبت نشده است.';

  @override
  String get vaccineMarkGiven => 'علامت‌گذاری به عنوان تزریق شده';

  @override
  String get whoChartTitle => 'نمودارهای رشد سازمان جهانی بهداشت';

  @override
  String get whoWeightForAge => 'وزن بر اساس سن';

  @override
  String get whoHeightForAge => 'طول/قد بر اساس سن';

  @override
  String get whoHeadForAge => 'دور سر بر اساس سن';

  @override
  String get whoGenderBoy => 'پسر';

  @override
  String get whoGenderGirl => 'دختر';

  @override
  String get whoNoData => 'هنوز اندازه‌گیری‌ای ثبت نشده است.\nبرای دیدن نمودار، وزن را از ورودی‌های روز ثبت کنید.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'نوزاد شما';

  @override
  String whoAgeMonths(int n) {
    return '$n ماه';
  }

  @override
  String get whoNoBirthDate => 'برای دیدن نمودارهای بر اساس سن، تاریخ تولد نوزاد را در پروفایل تنظیم کنید.';

  @override
  String get notifTitle => 'یادآوری‌ها';

  @override
  String get notifFeedingReminder => 'یادآوری تغذیه';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'اگر پس از $hours ساعت هیچ تغذیه‌ای ثبت نشد، به من یادآوری کن';
  }

  @override
  String get notifDiaperReminder => 'یادآوری پوشک';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'اگر پس از $hours ساعت هیچ پوشکی ثبت نشد، به من یادآوری کن';
  }

  @override
  String get notifMedicationReminder => 'یادآوری دارو';

  @override
  String get notifEnabled => 'اعلان‌ها فعال است';

  @override
  String get notifDisabled => 'اعلان‌ها غیرفعال است';

  @override
  String get notifPermissionRequired => 'لطفاً اعلان‌ها را در تنظیمات دستگاه خود فعال کنید.';

  @override
  String get exportTitle => 'خروجی و پشتیبان';

  @override
  String get exportJson => 'خروجی پشتیبان';

  @override
  String get exportJsonDesc => 'همهٔ داده‌ها و عکس‌ها در یک فایل ‎.zip';

  @override
  String get exportPdf => 'خروجی به صورت PDF';

  @override
  String get exportPdfDesc => 'خلاصه قابل خواندن برای پزشک اطفال شما';

  @override
  String get importJson => 'بازیابی پشتیبان';

  @override
  String get importJsonDesc => 'از پشتیبان ‎.zip (یا خروجی قدیمی ‎.json)';

  @override
  String get importDialogTitle => 'داده‌ها درون‌ریزی شوند؟';

  @override
  String get importDialogBody => 'ادغام، ورودی‌های فایل را کنار داده‌های فعلی شما اضافه می‌کند. جایگزینی کامل، ابتدا داده‌های فعلی شما را حذف می‌کند.';

  @override
  String get importMerge => 'ادغام';

  @override
  String get importReplaceAll => 'جایگزینی همه';

  @override
  String get importSuccess => 'درون‌ریزی کامل شد';

  @override
  String get importInvalidFile => 'این شبیه فایل خروجی Baby Tracker نیست.';

  @override
  String get exportGoogleDrive => 'پشتیبان‌گیری در Google Drive';

  @override
  String get exportGenerating => 'در حال تولید گزارش...';

  @override
  String get milestoneTitle => 'مراحل رشد';

  @override
  String get milestoneTabAchieved => 'دست یافته';

  @override
  String get milestoneTabUpcoming => 'پیش رو';

  @override
  String get milestoneCustomAdd => 'مرحله سفارشی';

  @override
  String get milestoneDeleteTitle => 'حذف مرحله؟';

  @override
  String get milestoneEdit => 'ویرایش مرحله';

  @override
  String get milestoneAdd => 'افزودن مرحله';

  @override
  String get milestoneName => 'نام مرحله *';

  @override
  String get milestoneDate => 'تاریخ دستیابی';

  @override
  String get milestoneNotes => 'یادداشت‌ها (اختیاری)';

  @override
  String get milestoneNotesHint => 'هر جزئیاتی که ارزش به خاطر سپردن دارد...';

  @override
  String get milestoneNoAchieved => 'هنوز مرحله‌ای ثبت نشده است.';

  @override
  String get milestoneAllDone => 'تمام مراحل از پیش تعیین شده به دست آمده!';

  @override
  String get milestoneFirstSmile => 'اولین لبخند';

  @override
  String get milestoneFirstLaugh => 'اولین خنده';

  @override
  String get milestoneFirstTooth => 'اولین دندان';

  @override
  String get milestoneRolledBackTummy => 'غلت زدن از پشت به شکم';

  @override
  String get milestoneRolledTummyBack => 'غلت زدن از شکم به پشت';

  @override
  String get milestoneSatUnsupported => 'نشستن بدون تکیه‌گاه';

  @override
  String get milestoneStartedCrawling => 'شروع به چهار دست و پا رفتن';

  @override
  String get milestonePulledToStand => 'ایستادن با گرفتن';

  @override
  String get milestoneFirstSteps => 'اولین قدم‌ها';

  @override
  String get milestoneFirstWord => 'اولین کلمه';

  @override
  String get milestoneFirstSolidFood => 'اولین غذای جامد';

  @override
  String get milestoneFirstHaircut => 'اولین کوتاهی مو';

  @override
  String get milestoneSleptThroughNight => 'تمام شب را خوابید';

  @override
  String get milestoneWavedBye => 'دست تکان دادن برای خداحافظی';

  @override
  String get milestoneClappedHands => 'دست زدن';

  @override
  String get milestoneFirstBirthday => 'اولین تولد';

  @override
  String get settingsTitle => 'تنظیمات';

  @override
  String get settingsAppearance => 'ظاهر';

  @override
  String get settingsDarkMode => 'حالت تاریک';

  @override
  String get settingsDarkActive => 'حالت تاریک فعال است';

  @override
  String get settingsLightActive => 'حالت روشن فعال است';

  @override
  String get settingsUnits => 'واحدها';

  @override
  String get settingsWeightUnit => 'واحد وزن';

  @override
  String get settingsTempUnit => 'واحد دما';

  @override
  String get settingsVolumeUnit => 'واحد حجم شیر';

  @override
  String get settingsLanguage => 'زبان';

  @override
  String get settingsNotifications => 'اعلان‌ها و یادآوری‌ها';

  @override
  String get settingsExport => 'خروجی و پشتیبان';

  @override
  String get settingsTips => 'نکات';

  @override
  String get tipSwitchBabies => 'جابجایی بین نوزادان';

  @override
  String get tipSwitchBabiesDesc => 'برای جابجایی یا افزودن پروفایل نوزاد، روی آواتار نوزاد در بالا ضربه بزنید.';

  @override
  String get tipSwipeDelete => 'برای حذف به چپ بکشید';

  @override
  String get tipSwipeDeleteDesc => 'روی کاشی‌های روز و ورودی‌های جداگانه کار می‌کند.';

  @override
  String get tipTapToEdit => 'برای ویرایش هر ورودی، روی آن ضربه بزنید';

  @override
  String get tipMultipleFeeds => 'ثبت چندین تغذیه';

  @override
  String get tipMultipleFeedsDesc => 'در فرم تغذیه، روی «افزودن تغذیه دیگر» ضربه بزنید تا همزمان شیر مادر + شیشه ثبت شود.';

  @override
  String get tipExportData => 'خروجی داده';

  @override
  String get tipExportDataDesc => 'برای پشتیبان‌گیری از همهٔ داده‌ها و عکس‌ها در یک فایل، از نماد اشتراک‌گذاری در خانه استفاده کنید.';

  @override
  String get babiesTitle => 'نوزادان';

  @override
  String get addBaby => 'افزودن نوزاد';

  @override
  String get editProfile => 'ویرایش پروفایل';

  @override
  String get babyNameRequired => 'نام *';

  @override
  String get babyDobOptional => 'تاریخ تولد (اختیاری)';

  @override
  String babyBornOn(String date) {
    return 'متولد $date';
  }

  @override
  String get genderUnknown => 'نامشخص';

  @override
  String get genderBoy => 'پسر';

  @override
  String get genderGirl => 'دختر';

  @override
  String get cannotDeleteOnlyProfile => 'تنها پروفایل نوزاد قابل حذف نیست.';

  @override
  String deleteProfileTitle(String name) {
    return 'حذف $name؟';
  }

  @override
  String get deleteProfileContent => 'تمام داده‌های این نوزاد به طور دائم حذف خواهد شد.';

  @override
  String get graphsTitle => 'نمودارها';

  @override
  String get graphsTabDaily => 'روزانه';

  @override
  String get graphsTabGrowth => 'رشد';

  @override
  String get graphsTabHealth => 'سلامت';

  @override
  String get graphsTabWho => 'نمودارهای WHO';

  @override
  String get graphsTotalFeeds => 'کل تغذیه‌ها';

  @override
  String get graphsAvgPerDay => 'میانگین / روز';

  @override
  String get graphsTotalDiapers => 'پوشک‌ها';

  @override
  String get graphsTotalMilk => 'کل شیر';

  @override
  String get graphsTotalSleep => 'کل خواب';

  @override
  String get graphsAvgSleep => 'میانگین خواب / روز';

  @override
  String get graphsFeedsPerDay => 'تغذیه در هر روز';

  @override
  String get graphsDiapersPerDay => 'پوشک در هر روز';

  @override
  String get graphsMilkPerDay => 'شیر در هر روز (میلی‌لیتر)';

  @override
  String get graphsMilkPerDayMl => 'شیر در روز (میلی‌لیتر)';

  @override
  String get graphsMilkPerDayOz => 'شیر در روز (اونس)';

  @override
  String get graphsSleepPerDay => 'خواب در هر روز (ساعت)';

  @override
  String get graphsWeightOverTime => 'وزن در طول زمان';

  @override
  String get graphsTempOverTime => 'دما در طول زمان';

  @override
  String graphsMaxLabel(String value) {
    return 'حداکثر: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'حداقل: $value';
  }

  @override
  String get graphsNoWeightData => 'هنوز ورودی وزنی وجود ندارد.\nوزن را از ورودی‌های روز ثبت کنید.';

  @override
  String get graphsNoTempData => 'هنوز ورودی دمایی وجود ندارد.\nدما را از یک روز ثبت کنید.';

  @override
  String get timeLabel => 'زمان';

  @override
  String get noColourRecorded => 'رنگی ثبت نشده است';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روزه',
      one: '۱ روزه',
      zero: 'نوزاد',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ماهه',
      one: '۱ ماهه',
      zero: 'کمتر از یک ماه',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years سال و $months ماهه';
  }

  @override
  String medicationLabel(String name) {
    return 'دارو: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'ویزیت';

  @override
  String doctorVisitLabel(String reason) {
    return 'مراجعه به پزشک — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 یادداشت';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'دکتر: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'پزشکی ثبت نشده';

  @override
  String get summaryPoosLabel => 'مدفوع';

  @override
  String get summaryPeesLabel => 'ادرار';

  @override
  String get summaryMilkLabel => 'شیر میلی‌لیتر';

  @override
  String get summaryMilkLabelMl => 'شیر میلی‌لیتر';

  @override
  String get summaryMilkLabelOz => 'شیر اونس';

  @override
  String get summaryBreastLabel => 'شیردهی دقیقه';

  @override
  String get summarySleepLabel => 'خواب';

  @override
  String get settingsOledMode => 'OLED (سیاه مطلق)';

  @override
  String get settingsOledModeDesc => 'استفاده از پس‌زمینه سیاه مطلق برای صرفه‌جویی باتری در صفحه‌های OLED';

  @override
  String get settingsImmersiveMode => 'حالت غوطه‌ور';

  @override
  String get settingsImmersiveModeDesc => 'پنهان کردن نوار وضعیت و ناوبری سیستم';

  @override
  String get navVaccinationsEntry => 'واکسیناسیون';

  @override
  String get whoChartsEntry => 'نمودارهای رشد WHO';

  @override
  String get medicationEditTitle => 'ویرایش دارو';

  @override
  String get medicationLogTitle => 'ثبت دارو';

  @override
  String get medicationYourCourses => 'دوره‌های درمان شما';

  @override
  String get medicationManageCourses => 'مدیریت دوره‌ها';

  @override
  String get medicationNameRequired => 'نام دارو *';

  @override
  String get medicationDosageWarning => 'همیشه دوز مناسب وزن/سن را رعایت کنید. از دفعات توصیه‌شده بیشتر ندهید.';

  @override
  String get medicationNotesOptional => 'یادداشت (اختیاری)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دقیقه پیش',
      one: '۱ دقیقه پیش',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ساعت پیش',
      one: '۱ ساعت پیش',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز پیش',
      one: '۱ روز پیش',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'آخرین بار $ago';
  }

  @override
  String get medicationNeverGiven => 'هنوز داده نشده';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دوز امروز',
      one: '۱ دوز امروز',
      zero: 'امروز دوزی داده نشده',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'دوز بعدی تا $hours ساعت پس از دوز قبلی نباید داده شود';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'سقف روزانهٔ $max برای این دوره پر شده است';
  }

  @override
  String get medicationEditCourse => 'ویرایش دوره';

  @override
  String get medicationNewCourse => 'دورهٔ جدید';

  @override
  String get medicationReasonOptional => 'علت (اختیاری)';

  @override
  String get medicationIntervalHoursOptional => 'تکرار هر (ساعت، اختیاری)';

  @override
  String get medicationMaxPerDayOptional => 'حداکثر دوز در روز (اختیاری)';

  @override
  String get medicationRemindNextDose => 'وقت دوز بعدی را یادآوری کن';

  @override
  String medicationEndCourseTitle(String name) {
    return 'پایان $name؟';
  }

  @override
  String get medicationEndCoursePrompt => 'نتیجه چطور بود؟';

  @override
  String get medicationDeleteCourseTitle => 'این دوره حذف شود؟';

  @override
  String get medicationResultWorked => 'مؤثر بود';

  @override
  String get medicationResultPartlyWorked => 'تا حدی مؤثر بود';

  @override
  String get medicationResultDidntWork => 'مؤثر نبود';

  @override
  String get medicationResultSideEffects => 'عوارض جانبی';

  @override
  String get medicationResultNone => 'ارزیابی نشده';

  @override
  String get medicationsTitle => 'داروها';

  @override
  String medicationActiveTab(int count) {
    return 'فعال ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'گذشته ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'دورهٔ درمان فعالی وجود ندارد.\nبا دکمهٔ + یکی شروع کنید.';

  @override
  String get medicationNoPastCourses => 'هنوز دورهٔ گذشته‌ای وجود ندارد.';

  @override
  String medicationTimesGiven(int count) {
    return '$count× داده شده';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'آخرین: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'بعدی $time';
  }

  @override
  String get medicationEndCourse => 'پایان دوره';

  @override
  String feedLastSideHint(String side) {
    return 'دفعهٔ قبل: $side';
  }

  @override
  String get feedSideLeft => 'چپ';

  @override
  String get feedSideRight => 'راست';

  @override
  String get feedSideBoth => 'هر دو';

  @override
  String get feedSideLeftMinutes => 'چپ (دقیقه)';

  @override
  String get feedSideRightMinutes => 'راست (دقیقه)';

  @override
  String get timeAgoJustNow => 'همین الان';

  @override
  String get timeUntilOverdue => 'عقب افتاده';

  @override
  String timeUntilMinutes(int count) {
    return '$count دقیقهٔ دیگر';
  }

  @override
  String timeUntilHours(int count) {
    return '$count ساعت دیگر';
  }

  @override
  String timeUntilDays(int count) {
    return '$count روز دیگر';
  }

  @override
  String get timerDiscardTitle => 'این زمان‌سنج حذف شود؟';

  @override
  String get timerDiscard => 'حذف';

  @override
  String timerFeedingRunning(String side) {
    return 'شیردهی · $side';
  }

  @override
  String get timerSleepRunning => 'زمان‌سنج خواب فعال است';

  @override
  String get timerSwitchSide => 'تعویض سمت';

  @override
  String get timerStop => 'توقف';

  @override
  String get sinceLastFeed => 'آخرین تغذیه';

  @override
  String get sinceLastDiaper => 'آخرین پوشک';

  @override
  String get sinceAwake => 'بیدار';

  @override
  String get sinceAsleep => 'خواب';

  @override
  String nextDoseDue(String name) {
    return 'وقت $name';
  }

  @override
  String get weighConditionNaked => 'بدون لباس';

  @override
  String get weighConditionDiaper => 'فقط پوشک';

  @override
  String get weighConditionLightClothes => 'لباس سبک';

  @override
  String get weighConditionDressed => 'با لباس';

  @override
  String get weighCondition => 'وزن‌شده با';

  @override
  String get growthMeasurementsOptional => 'اندازه‌های دیگر (اختیاری)';

  @override
  String get growthHeightCm => 'قد (سانتی‌متر)';

  @override
  String get growthHeadCm => 'دور سر (سانتی‌متر)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'دفعهٔ قبل $condition وزن شد — شاید تفاوت فقط به‌خاطر رشد نباشد';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm سانتی‌متر';
  }

  @override
  String growthHeadValue(String cm) {
    return 'سر $cm سانتی‌متر';
  }

  @override
  String get growthHeightOverTime => 'قد در طول زمان';

  @override
  String get growthHeadOverTime => 'دور سر در طول زمان';

  @override
  String get graphsRecentWeighIns => 'وزن‌کشی‌های اخیر';

  @override
  String get solidsAmountFewSpoons => 'چند قاشق';

  @override
  String get solidsAmountHalf => 'نصف وعده';

  @override
  String get solidsAmountFull => 'یک وعدهٔ کامل';

  @override
  String get solidsAmountTaste => 'فقط چشید';

  @override
  String get solidsReactionMild => 'واکنش خفیف';

  @override
  String get solidsReactionAllergic => 'واکنش آلرژیک';

  @override
  String get solidsReactionNone => 'بدون واکنش';

  @override
  String get solidsEditTitle => 'ویرایش غذای کمکی';

  @override
  String get solidsLogTitle => 'ثبت غذای کمکی';

  @override
  String get solidsFoodsLabel => 'غذاها';

  @override
  String get solidsAddFoodHint => 'افزودن غذا';

  @override
  String get solidsAmount => 'مقدار';

  @override
  String get solidsLiked => 'دوست داشت؟';

  @override
  String get solidsReaction => 'واکنش';

  @override
  String get solidsNotesOptional => 'یادداشت (اختیاری)';

  @override
  String get foodsTitle => 'غذاهای امتحان‌شده';

  @override
  String get foodsEmpty => 'هنوز غذای کمکی ثبت نشده است.';

  @override
  String get foodsAllergensNotYet => 'آلرژن‌های رایجی که هنوز معرفی نشده‌اند';

  @override
  String foodsTriedCount(int count) {
    return '$count غذا امتحان شده';
  }

  @override
  String foodsFirstTried(String date) {
    return 'اولین بار: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'غذای کمکی';

  @override
  String get feedAmountOz => 'مقدار (اونس)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return '$interval پس از آخرین تغذیه یادآوری کن';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return '$interval پس از آخرین پوشک یادآوری کن';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'هر $interval';
  }

  @override
  String get notifIntervalTitle => 'فاصلهٔ یادآوری';

  @override
  String get notifIntervalHours => 'ساعت';

  @override
  String get notifIntervalMinutes => 'دقیقه';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'دست‌کم $minutes دقیقه';
  }

  @override
  String get settingsFeeding => 'تغذیه';

  @override
  String get settingsTrackBottles => 'پیگیری شیشه‌ها';

  @override
  String get settingsTrackBottlesDesc => 'انتخاب شیشهٔ استفاده‌شده و مقدار آماده‌شده در برابر نوشیده‌شده';

  @override
  String get bottlesTitle => 'شیشه‌های من';

  @override
  String get bottlesEmpty => 'هنوز شیشه‌ای نیست.\nشیشه‌هایی را که استفاده می‌کنید اضافه کنید تا هنگام ثبت تغذیه یکی را انتخاب کنید.';

  @override
  String get bottleAdd => 'افزودن شیشه';

  @override
  String get bottleEdit => 'ویرایش شیشه';

  @override
  String get bottleLabel => 'برچسب / شماره (مثلاً #3)';

  @override
  String get bottleBrand => 'برند / نوع (اختیاری)';

  @override
  String get bottleCapacity => 'گنجایش (اختیاری)';

  @override
  String get bottleNipple => 'اندازه / جریان سرشیشه (اختیاری)';

  @override
  String get bottleMaterial => 'جنس';

  @override
  String get bottleRetired => 'کنار گذاشته';

  @override
  String get bottleRetire => 'کنار گذاشتن';

  @override
  String get bottleUnretire => 'استفادهٔ دوباره';

  @override
  String bottleDeleteTitle(String name) {
    return '$name حذف شود؟';
  }

  @override
  String get bottleDeleteBody => 'تغذیه‌های قبلی مقدارشان را نگه می‌دارند ولی دیگر این شیشه را نشان نمی‌دهند. برای پنهان کردن آن از فهرست و حفظ سابقه، به‌جای آن «کنار گذاشتن» را بزنید.';

  @override
  String get feedPrepared => 'آماده‌شده';

  @override
  String get feedDrank => 'نوشیده';

  @override
  String feedLeftover(String amount) {
    return '$amount باقی ماند';
  }

  @override
  String get feedDrankMoreThanPrepared => 'بیشتر از مقدار آماده‌شده؟';

  @override
  String get feedWhichBottle => 'کدام شیشه؟';

  @override
  String get feedNoBottlesYet => 'هنوز شیشه‌ای نیست — در تنظیمات ← شیشه‌های من اضافه کنید.';

  @override
  String get photoPrivacyTitle => 'عکس‌های شما روی همین گوشی می‌مانند';

  @override
  String get photoPrivacyBody => 'عکس‌ها فقط داخل همین برنامه و روی همین دستگاه ذخیره می‌شوند. برنامه به اینترنت دسترسی ندارد، پس هیچ چیزی بارگذاری یا هم‌رسانی نمی‌شود مگر اینکه خودتان پشتیبان بگیرید.\n\nممکن است Android نخستین بار که عکس می‌گیرید اجازهٔ دوربین بخواهد.';

  @override
  String get photoPrivacyContinue => 'ادامه';

  @override
  String get photoTakePhoto => 'گرفتن عکس';

  @override
  String get photoChooseFromGallery => 'انتخاب از گالری';

  @override
  String get photoCaption => 'توضیح';

  @override
  String get photoCompare => 'اولین در برابر آخرین';

  @override
  String get photoAddOtherDay => 'افزودن برای روزی دیگر';

  @override
  String get photoEmpty => 'هنوز عکسی نیست.\nهر روز یک عکس بگیرید و بزرگ شدن کودکتان را ببینید.';

  @override
  String get photoToday => 'عکس امروز';

  @override
  String get photoAddToday => 'افزودن عکس امروز';

  @override
  String get photoReplace => 'جایگزینی';

  @override
  String get photoDeleteTitle => 'این عکس حذف شود؟';

  @override
  String get ageBeforeBirth => 'پیش از تولد';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روزه',
      one: '۱ روزه',
      zero: 'روز تولد',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months ماه $days روز';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years سال $months ماه';
  }

  @override
  String get navMemories => 'خاطره‌ها';

  @override
  String get memoriesTabPhotos => 'عکس‌ها';

  @override
  String get milestoneNoAchievedHint => 'برای ثبت یک مرحلهٔ آماده «پیش رو» را بزنید،\nیا برای مرحلهٔ دلخواه از دکمهٔ پایین استفاده کنید.';

  @override
  String get skinTitle => 'مشکلات پوستی';

  @override
  String get skinNew => 'مشکل پوستی جدید';

  @override
  String get skinEdit => 'ویرایش مشکل پوستی';

  @override
  String skinTabActive(int count) {
    return 'فعال ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'بهبودیافته ($count)';
  }

  @override
  String get skinEmptyActive => 'هیچ مشکل پوستی پیگیری نمی‌شود.\nبرای شروع + را بزنید — می‌توانید هر روز عکسی اضافه کنید تا روند تغییر را به پزشک نشان دهید.';

  @override
  String get skinEmptyHealed => 'هنوز چیزی بهبود نیافته است.';

  @override
  String get skinUpdateDue => 'امروز به‌روز کنید';

  @override
  String skinSince(String date) {
    return 'از $date';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز',
      one: '۱ روز',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return 'بهبود در $date';
  }

  @override
  String skinReminderAt(String time) {
    return 'یادآوری روزانه ساعت $time';
  }

  @override
  String get skinSeverityTrend => 'شدت در طول زمان';

  @override
  String get skinNoUpdates => 'هنوز به‌روزرسانی‌ای نیست. برای شروع روند، به‌روزرسانی امروز را اضافه کنید.';

  @override
  String get skinExportPdf => 'خروجی برای پزشک (PDF)';

  @override
  String get skinMarkHealed => 'علامت‌گذاری به‌عنوان بهبودیافته';

  @override
  String get skinReopen => 'علامت‌گذاری دوباره به‌عنوان فعال';

  @override
  String get skinUpdateToday => 'افزودن به‌روزرسانی امروز';

  @override
  String get skinEditToday => 'ویرایش به‌روزرسانی امروز';

  @override
  String skinDeleteTitle(String name) {
    return '$name و همهٔ به‌روزرسانی‌هایش حذف شود؟';
  }

  @override
  String get skinDeleteUpdateTitle => 'این به‌روزرسانی حذف شود؟';

  @override
  String skinTreatmentValue(String treatment) {
    return 'درمان: $treatment';
  }

  @override
  String get skinName => 'مشکل *';

  @override
  String get skinBodyArea => 'کجای بدن؟';

  @override
  String get skinBegan => 'شروع در';

  @override
  String get skinRemindDaily => 'هر روز برای به‌روزرسانی یادآوری کن';

  @override
  String get skinReminderTime => 'ساعت یادآوری';

  @override
  String get skinUpdateTitle => 'به‌روزرسانی پوست';

  @override
  String get skinSeverity => 'وضعیتش چطور است؟';

  @override
  String get skinSeverity0 => '0 · برطرف';

  @override
  String get skinSeverity1 => '1 · خفیف';

  @override
  String get skinSeverity2 => '2 · متوسط';

  @override
  String get skinSeverity3 => '3 · شدید';

  @override
  String get skinSeverity4 => '4 · خیلی شدید';

  @override
  String get skinTreatment => 'درمان (اختیاری)';

  @override
  String get skinTreatmentHint => 'مثلاً مرطوب‌کننده، هیدروکورتیزون ۱٪';

  @override
  String get skinAddPhoto => 'افزودن عکس';

  @override
  String get skinCardNone => 'بثورات، اگزما یا هر مشکل پوستی دیگر را روزبه‌روز با عکس برای پزشک پیگیری کنید';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مورد به به‌روزرسانی امروز نیاز دارند',
      one: '۱ مورد به به‌روزرسانی امروز نیاز دارد',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'در حال آماده‌سازی پشتیبان…';

  @override
  String get backupFailed => 'ساخت پشتیبان ممکن نشد.';

  @override
  String get backupSavedTo => 'پشتیبان ذخیره شد در:';

  @override
  String get backupShareSubject => 'پشتیبان Baby Tracker';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'شامل $count عکس.',
      one: 'شامل ۱ عکس.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'تغذیه';

  @override
  String get widgetStopFeed => 'توقف تغذیه';

  @override
  String get widgetDiaper => 'پوشک';

  @override
  String get widgetSleep => 'خواب';

  @override
  String get widgetWakeUp => 'بیدار شد';

  @override
  String widgetFeedingFor(String duration) {
    return 'در حال شیر خوردن $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'تغذیه $ago';
  }

  @override
  String get widgetNoFeedsYet => 'هنوز تغذیه‌ای نیست';

  @override
  String widgetChangedAgo(String ago) {
    return 'تعویض $ago';
  }

  @override
  String get widgetNoDiapersYet => 'هنوز پوشکی نیست';

  @override
  String widgetAsleepFor(String duration) {
    return 'خواب $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'بیدار شد $ago';
  }

  @override
  String get widgetStopSleepFirst => 'اول زمان‌سنج خواب را متوقف کنید';

  @override
  String get widgetStopFeedFirst => 'اول زمان‌سنج تغذیه را متوقف کنید';

  @override
  String quickAddTitle(String name) {
    return 'افزودن برای $name';
  }

  @override
  String get quickAddOpenApp => 'باز کردن برنامه';

  @override
  String get foodPeanut => 'بادام‌زمینی';

  @override
  String get foodEgg => 'تخم‌مرغ';

  @override
  String get foodDairy => 'لبنیات';

  @override
  String get foodWheat => 'گندم';

  @override
  String get foodSoy => 'سویا';

  @override
  String get foodFish => 'ماهی';

  @override
  String get foodShellfish => 'صدف و میگو';

  @override
  String get foodTreeNuts => 'آجیل درختی';

  @override
  String get foodSesame => 'کنجد';

  @override
  String get foodBanana => 'موز';

  @override
  String get foodAvocado => 'آووکادو';

  @override
  String get foodSweetPotato => 'سیب‌زمینی شیرین';

  @override
  String get foodRiceCereal => 'فرنی برنج';

  @override
  String get foodOatmeal => 'جو دوسر';

  @override
  String get foodCarrot => 'هویج';

  @override
  String get foodApple => 'سیب';

  @override
  String get foodPea => 'نخود فرنگی';

  @override
  String get symptomRash => 'بثورات';

  @override
  String get symptomHives => 'کهیر';

  @override
  String get symptomVomiting => 'استفراغ';

  @override
  String get symptomDiarrhea => 'اسهال';

  @override
  String get symptomSwelling => 'تورم';

  @override
  String get doseUnitDrops => 'قطره';

  @override
  String get doseUnitTablets => 'قرص';

  @override
  String get bottleMaterialPlastic => 'پلاستیک';

  @override
  String get bottleMaterialGlass => 'شیشه';

  @override
  String get bottleMaterialSilicone => 'سیلیکون';

  @override
  String get bottleMaterialSteel => 'فولاد ضدزنگ';

  @override
  String get visitReasonRoutine => 'معاینهٔ دوره‌ای';

  @override
  String get visitReasonSick => 'بیماری';

  @override
  String get visitReasonVaccination => 'واکسیناسیون';

  @override
  String get visitReasonSpecialist => 'متخصص';

  @override
  String get visitReasonFollowUp => 'پیگیری';

  @override
  String get visitReasonOther => 'دیگر';

  @override
  String get pooColourPale => 'کم‌رنگ';

  @override
  String get noteTagHappyDay => 'روز شاد';

  @override
  String get noteTagSleptWell => 'خوب خوابید';

  @override
  String get noteTagFussy => 'بی‌قرار';

  @override
  String get noteTagNotWell => 'حالش خوب نبود';

  @override
  String get noteTagFirstTime => 'اولین بار!';

  @override
  String get noteTagTeething => 'دندان درآوردن';

  @override
  String get noteTagGrowthSpurt => 'جهش رشد';

  @override
  String get noteTagMilestone => 'مرحلهٔ رشد';

  @override
  String get tummyTimeNotesHint => 'مثلاً لذت برد، بی‌قرار بود...';

  @override
  String get skinSuggestEczema => 'اگزما';

  @override
  String get skinSuggestDiaperRash => 'سوختگی پوشک';

  @override
  String get skinSuggestCradleCap => 'شوره‌سر نوزاد';

  @override
  String get skinSuggestBabyAcne => 'آکنهٔ نوزادی';

  @override
  String get skinSuggestHeatRash => 'عرق‌سوز';

  @override
  String get skinSuggestDrySkin => 'پوست خشک';

  @override
  String get bodyFace => 'صورت';

  @override
  String get bodyScalp => 'پوست سر';

  @override
  String get bodyNeck => 'گردن';

  @override
  String get bodyChest => 'سینه';

  @override
  String get bodyBack => 'پشت';

  @override
  String get bodyArms => 'بازوها';

  @override
  String get bodyHands => 'دست‌ها';

  @override
  String get bodyDiaperArea => 'ناحیهٔ پوشک';

  @override
  String get bodyLegs => 'پاها';

  @override
  String get bodyFeet => 'کف پاها';

  @override
  String get medSuggestGripeWater => 'گرایپ واتر';

  @override
  String get medSuggestVitaminD => 'ویتامین D';

  @override
  String get medSuggestIronDrops => 'قطرهٔ آهن';

  @override
  String get medSuggestAntibiotic => 'آنتی‌بیوتیک';

  @override
  String get medSuggestProbiotic => 'پروبیوتیک';

  @override
  String vaccinePageTitle(String name) {
    return '$name — واکسن‌ها';
  }

  @override
  String get vaccineDeleteTitle => 'سابقهٔ واکسن حذف شود؟';

  @override
  String get vaccineSiteHint => 'مثلاً ران چپ';

  @override
  String get vaccineNotesHint => 'مثلاً تب خفیف، بی‌قراری، بدون واکنش...';

  @override
  String get vaccineNoGivenHint => 'از دکمهٔ + استفاده کنید یا در زبانهٔ برنامه «علامت‌گذاری به‌عنوان زده‌شده» را بزنید.';

  @override
  String get vaccineAgeBirth => 'هنگام تولد';

  @override
  String vaccineAgeMonths(String range) {
    return '$range ماهگی';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range ماهگی (سالانه)';
  }

  @override
  String get whoTabHeight => 'قد';

  @override
  String get whoTabHead => 'سر';

  @override
  String get whoChartFor => 'نمودار برای:';

  @override
  String whoAgeRange(String title) {
    return '$title (۰ تا ۲۴ ماه)';
  }

  @override
  String get whoNoDataPoints => 'هنوز داده‌ای نیست. اندازه‌ها را ثبت کنید تا کودکتان را روی نمودار ببینید.';

  @override
  String get whoLatestMeasurement => 'آخرین اندازه‌گیری';

  @override
  String whoApproxPercentile(String value) {
    return 'صدک تقریبی: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return 'بین $low و $high';
  }

  @override
  String whoMonthsOld(String months) {
    return '$months ماهه';
  }

  @override
  String get whoDisclaimer => 'این نمودارها فقط برای اطلاع هستند. همیشه تفسیرشان را از پزشک کودک بخواهید.';

  @override
  String get whoMedian => 'P50 (میانه)';

  @override
  String get notifChannelName => 'یادآوری‌های Baby Tracker';

  @override
  String get notifChannelDesc => 'یادآوری تغذیه، پوشک، دارو و بررسی پوست';

  @override
  String get notifFeedTitle => 'وقت تغذیه است!';

  @override
  String notifFeedBody(String interval) {
    return 'در $interval گذشته تغذیه‌ای ثبت نشده است.';
  }

  @override
  String get notifDiaperTitle => 'پوشک را بررسی کنید!';

  @override
  String notifDiaperBody(String interval) {
    return 'در $interval گذشته تعویض پوشکی ثبت نشده است.';
  }

  @override
  String notifDoseTitle(String name) {
    return 'وقت دوز: $name';
  }

  @override
  String notifDoseBody(String name) {
    return 'وقت دوز بعدی $name است.';
  }

  @override
  String notifSkinTitle(String name) {
    return 'بررسی پوست: $name';
  }

  @override
  String get notifSkinBody => 'به‌روزرسانی امروز را اضافه کنید (و اگر خواستید عکس).';

  @override
  String get timerFeedingNotif => 'زمان‌سنج تغذیه فعال است';

  @override
  String intervalMinutes(String m) {
    return '$m دقیقه';
  }

  @override
  String intervalHours(String h) {
    return '$h ساعت';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h ساعت و $m دقیقه';
  }

  @override
  String get settingsRtlActive => 'چیدمان راست‌به‌چپ فعال است';

  @override
  String get measurementHeightIn => 'قد (اینچ)';

  @override
  String get measurementHeadIn => 'دور سر (اینچ)';

  @override
  String get growthHeightIn => 'قد (اینچ)';

  @override
  String get growthHeadIn => 'دور سر (اینچ)';

  @override
  String growthHeightValueIn(String value) {
    return '$value اینچ';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'سر $value اینچ';
  }

  @override
  String get settingsLengthUnitNote => 'واحد طول از واحد وزن پیروی می‌کند (سانتی‌متر با کیلوگرم، اینچ با پوند)';

  @override
  String get formulaStoreBrand => 'برند فروشگاه';

  @override
  String get pooShade1 => 'سفید گچی';

  @override
  String get pooShade2 => 'خاکستری روشن';

  @override
  String get pooShade3 => 'خاکستری گلی';

  @override
  String get pooShade4 => 'کرم';

  @override
  String get pooShade5 => 'بژ تیره';

  @override
  String get pooShade6 => 'زرد مایل به سبز کم‌رنگ';

  @override
  String get pooShade7 => 'زرد خردلی';

  @override
  String get pooShade8 => 'قهوه‌ای';

  @override
  String get pooShade9 => 'سبز';

  @override
  String get vaccineScheduleNote => 'بر اساس برنامهٔ CDC آمریکا. برنامهٔ کشور شما ممکن است متفاوت باشد — توصیهٔ پزشک را دنبال کنید.';

  @override
  String get settingsAbout => 'دربارهٔ برنامه';

  @override
  String get aboutTitle => 'دربارهٔ برنامه و مجوزها';

  @override
  String aboutVersion(String version) {
    return 'نسخهٔ $version';
  }

  @override
  String get aboutLicenseLine => 'نرم‌افزار آزاد منتشرشده با مجوز عمومی همگانی گنو نسخهٔ ۳٫۰ یا بالاتر. می‌توانید آن را استفاده، بررسی، به اشتراک‌گذاری و تغییر دهید.';

  @override
  String get aboutSourceCode => 'کد منبع';

  @override
  String get aboutDisclaimerTitle => 'توصیهٔ پزشکی نیست';

  @override
  String get aboutDisclaimerBody => 'Simple Baby Tracker دفترچه‌ای برای یادداشت‌های شخصی شماست. این برنامه یک وسیلهٔ پزشکی نیست و هیچ بیماری را تشخیص، درمان یا پایش نمی‌کند. نمودارهای رشد، بازهٔ دما، یادآوری‌های دارو و نکات رنگ مدفوع فقط اطلاعات عمومی هستند و ممکن است ناقص یا نادرست باشند. همیشه از توصیهٔ پزشک یا داروساز پیروی کنید و اگر نگران نوزادتان هستید با آن‌ها یا اورژانس تماس بگیرید.';

  @override
  String get aboutPrivacyTitle => 'داده‌های شما روی همین گوشی می‌ماند';

  @override
  String get aboutPrivacyBody => 'برنامه به اینترنت دسترسی ندارد و حساب کاربری، تبلیغات یا تحلیل آماری ندارد. یادداشت‌ها و عکس‌ها فقط روی همین دستگاه ذخیره می‌شوند. چیزی از دستگاه خارج نمی‌شود مگر اینکه خودتان پشتیبان بگیرید و آن را به اشتراک بگذارید.';

  @override
  String get aboutCreditsTitle => 'قدردانی';

  @override
  String get aboutCreditsBody => 'نمادها: ساخته‌شده با Claude Design.\nقلم‌ها: Inter و Quicksand (مجوز SIL Open Font License 1.1).\nنمودارهای رشد: استانداردهای رشد کودک سازمان جهانی بهداشت (who.int).\nبرنامهٔ واکسن: بر اساس برنامهٔ CDC آمریکا.\nساخته‌شده با Flutter.';

  @override
  String get aboutLicencesButton => 'مجوزهای متن‌باز';
}
