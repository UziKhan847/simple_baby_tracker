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
  String get exportJson => 'خروجی به صورت JSON';

  @override
  String get exportPdf => 'خروجی به صورت PDF';

  @override
  String get exportPdfDesc => 'خلاصه قابل خواندن برای پزشک اطفال شما';

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
  String get milestoneAllDone => 'تمام مراحل از پیش تعیین شده به دست آمده! 🎉';

  @override
  String get milestoneFirstSmile => '😊 اولین لبخند';

  @override
  String get milestoneFirstLaugh => '😂 اولین خنده';

  @override
  String get milestoneFirstTooth => '🦷 اولین دندان';

  @override
  String get milestoneRolledBackTummy => '🔄 غلت زدن از پشت به شکم';

  @override
  String get milestoneRolledTummyBack => '🔄 غلت زدن از شکم به پشت';

  @override
  String get milestoneSatUnsupported => '🧸 نشستن بدون تکیه‌گاه';

  @override
  String get milestoneStartedCrawling => '🐣 شروع به چهار دست و پا رفتن';

  @override
  String get milestonePulledToStand => '🏋️ ایستادن با گرفتن';

  @override
  String get milestoneFirstSteps => '👣 اولین قدم‌ها';

  @override
  String get milestoneFirstWord => '💬 اولین کلمه';

  @override
  String get milestoneFirstSolidFood => '🥣 اولین غذای جامد';

  @override
  String get milestoneFirstHaircut => '✂️ اولین کوتاهی مو';

  @override
  String get milestoneSleptThroughNight => '🌙 تمام شب را خوابید';

  @override
  String get milestoneWavedBye => '👋 دست تکان دادن برای خداحافظی';

  @override
  String get milestoneClappedHands => '👏 دست زدن';

  @override
  String get milestoneFirstBirthday => '🎂 اولین تولد';

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
  String get tipExportDataDesc => 'از آیکون اشتراک‌گذاری در صفحه اصلی برای خروجی همه داده‌ها به صورت JSON استفاده کنید.';

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
}
