// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'پیگیر کودک';

  @override
  String get navHome => 'خانه';

  @override
  String get navGraphs => 'نمودارها';

  @override
  String get navMilestones => 'Milestones';

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
  String get actionLog => 'Log';

  @override
  String get cannotUndo => 'این عمل قابل بازگشت نیست';

  @override
  String get noData => 'داده‌ای وجود ندارد';

  @override
  String get noNotes => 'No notes';

  @override
  String get noDetails => 'بدون جزئیات';

  @override
  String get optional => '(optional)';

  @override
  String get homeTitle => 'پیگیر';

  @override
  String get feedsToday => 'شیردهی‌های امروز';

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
      zero: 'بدون رویداد',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'این روز حذف شود؟';

  @override
  String deleteDayContent(String date) {
    return '$date و همهٔ ورودی‌هایش حذف شود؟ این عمل قابل بازگشت نیست';
  }

  @override
  String get rashRecorded => 'راش ثبت شد';

  @override
  String get noEntriesYet => 'هنوز ورودی‌ای وجود ندارد';

  @override
  String get addEntry => 'افزودن ورودی';

  @override
  String get deleteEntryTitle => 'این ورودی حذف شود؟';

  @override
  String get entryTypeDiaper => 'تعویض پوشک';

  @override
  String get entryTypeFeeding => 'شیردهی';

  @override
  String get entryTypeSleep => 'خواب';

  @override
  String get entryTypeTemperature => 'دما';

  @override
  String get entryTypeWeight => 'وزن';

  @override
  String get entryTypeTummyTime => 'Tummy time';

  @override
  String get entryTypeMedication => 'Medication';

  @override
  String get entryTypeDoctorVisit => 'Doctor visit';

  @override
  String get entryTypeNote => 'Daily note / journal';

  @override
  String get entryTypePumping => 'Pumping session';

  @override
  String get entryTypeBath => 'Bath';

  @override
  String get diaperPeePoo => 'پوشک — ادرار + مدفوع';

  @override
  String get diaperPee => 'پوشک — فقط ادرار';

  @override
  String get diaperPoo => 'پوشک — فقط مدفوع';

  @override
  String get diaperChange => 'تعویض پوشک';

  @override
  String get editDiaper => 'ویرایش پوشک';

  @override
  String get diaperContents => 'محتویات';

  @override
  String get diaperNone => 'هیچ';

  @override
  String get diaperPeeLabel => 'ادرار';

  @override
  String get diaperPooLabel => 'مدفوع';

  @override
  String get diaperBoth => 'هر دو';

  @override
  String get diaperConsistency => 'قوام';

  @override
  String get consistencyHard => 'سفت / دانه‌دانه';

  @override
  String get consistencyHardHint => 'یبوست';

  @override
  String get consistencyFirm => 'قالبی';

  @override
  String get consistencyFirmHint => 'کمی سفت';

  @override
  String get consistencyNormal => 'عادی';

  @override
  String get consistencyNormalHint => 'سالم';

  @override
  String get consistencySoft => 'نرم';

  @override
  String get consistencySoftHint => 'کمی نرم';

  @override
  String get consistencyLoose => 'خمیری / نیمه‌مایع';

  @override
  String get consistencyLooseHint => 'نیاز به مراقبت';

  @override
  String get consistencyWatery => 'آبکی';

  @override
  String get consistencyWateryHint => 'اسهال';

  @override
  String get warnConstipation => 'نشانه‌های یبوست — از نزدیک نظارت کنید';

  @override
  String get warnDiarrhea => 'نشانه‌های اسهال — از نزدیک نظارت کنید';

  @override
  String get pooColourLabel => 'رنگ (برای انتخاب ضربه بزنید)';

  @override
  String get pooColourAbnormal => '⚠️ غیرعادی (کم‌رنگ)';

  @override
  String get pooColourNormal => '✅ عادی';

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
  String get rashPresent => 'دانه‌های پوستی (راش) وجود دارد';

  @override
  String get rashPresentHint => 'قرمزی، تحریک یا راش پوشک';

  @override
  String get rashCreamUsed => 'کرم استفاده شده';

  @override
  String get rashCreamCustomLabel => 'نام کرم / پماد';

  @override
  String get rashFollowUpTitle => '⚠️ پیگیری راش';

  @override
  String get rashFollowUpQuestion => 'در آخرین پوشک راش ثبت شده بود. آیا بهبود یافته؟';

  @override
  String get rashImproved => 'بله، بهبود یافته';

  @override
  String get rashNoChange => 'بدون تغییر / بدتر شده';

  @override
  String get addFeeding => 'افزودن شیردهی';

  @override
  String get editFeeding => 'ویرایش شیردهی';

  @override
  String feedLabel(int number) {
    return 'شیردهی $number';
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
  String get feedFormulaBrandCustom => 'نام برند';

  @override
  String get feedDurationMinutes => 'مدت (دقیقه)';

  @override
  String get addAnotherFeed => 'افزودن شیردهی دیگر';

  @override
  String get bottleBreastMilk => 'شیشه — شیر مادر';

  @override
  String get bottleFormula => 'شیشه — شیر خشک';

  @override
  String get breastfeedingSuckle => 'شیردهی مستقیم';

  @override
  String get logSleep => 'ثبت خواب';

  @override
  String get editSleep => 'ویرایش خواب';

  @override
  String get sleepStart => 'شروع خواب';

  @override
  String get sleepWakeUp => 'بیداری';

  @override
  String sleepDuration(String duration) {
    return 'مدت: $duration';
  }

  @override
  String get sleepInvalidTimes => 'زمان نامعتبر';

  @override
  String get sleepWrapsNextDay => '(به روز بعد ختم می‌شود)';

  @override
  String get sleepNotes => 'یادداشت (اختیاری)';

  @override
  String get sleepNotesHint => 'مثال: بی‌قرار،短暂 بیدار شده...';

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
  String get temperatureLabel => 'دمای بدن';

  @override
  String get tempSeverityLow => 'دمای پایین — نظارت کنید';

  @override
  String get tempSeverityNormal => 'دمای طبیعی';

  @override
  String get tempSeverityElevated => 'کمی بالا — از نزدیک نظارت کنید';

  @override
  String get tempSeverityFever => 'تب — با پزشک مشورت کنید';

  @override
  String get tempReference => 'مرجع دما';

  @override
  String get tempRefLow => '< 36.0 °C / 96.8 °F';

  @override
  String get tempRefNormal => '36.0 – 37.4 °C / 96.8 – 99.3 °F';

  @override
  String get tempRefElevated => '37.5 – 38.4 °C / 99.5 – 101.1 °F';

  @override
  String get tempRefFever => '≥ 38.5 °C / 101.3 °F';

  @override
  String get tempFeverWarning => '⚠️ در صورت تب در نوزادان زیر ۳ ماه، همیشه با پزشک متخصص اطفال مشورت کنید';

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
    return 'آخرین ثبت: $weight در $date';
  }

  @override
  String get weightLatest => 'آخرین وزن';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount در این دوره';
  }

  @override
  String get tummyTimeLog => 'Log tummy time';

  @override
  String get tummyTimeEdit => 'Edit tummy time';

  @override
  String get tummyTimeStart => 'Start time';

  @override
  String get tummyTimeEnd => 'End time';

  @override
  String get tummyTimeTip => 'Tummy time strengthens neck and shoulder muscles.';

  @override
  String get medicationLog => 'Log medication';

  @override
  String get medicationEdit => 'Edit medication';

  @override
  String get medicationName => 'Medication name *';

  @override
  String get medicationDose => 'Dose';

  @override
  String get medicationUnit => 'Unit';

  @override
  String get medicationCommon => 'Common medications';

  @override
  String get medicationWarning => 'Always follow dosage instructions for weight/age. Do not exceed recommended frequency.';

  @override
  String get medicationNotes => 'Notes (optional)';

  @override
  String get medicationNotesHint => 'e.g. reason, reaction...';

  @override
  String get doctorVisitLog => 'Doctor visit';

  @override
  String get doctorVisitEdit => 'Edit doctor visit';

  @override
  String get doctorName => 'Doctor / clinic name';

  @override
  String get doctorVisitReason => 'Reason for visit';

  @override
  String get doctorVisitMeasurements => 'Measurements (optional)';

  @override
  String get doctorVisitNotes => 'Notes';

  @override
  String get doctorVisitNotesHint => 'e.g. vaccinations given, doctor recommendations...';

  @override
  String get measurementWeightKg => 'Weight (kg)';

  @override
  String get measurementWeightLbs => 'Weight (lbs)';

  @override
  String get measurementHeightCm => 'Length / height (cm)';

  @override
  String get measurementHeadCm => 'Head circumference (cm)';

  @override
  String get dailyNoteLog => 'Daily note';

  @override
  String get dailyNoteEdit => 'Edit note';

  @override
  String get dailyNoteTitle => 'Title (optional)';

  @override
  String get dailyNoteText => 'Note';

  @override
  String get dailyNoteHint => 'What happened today? First time rolling? Fussy morning?';

  @override
  String get dailyNoteTags => 'Quick tags';

  @override
  String get pumpingLog => 'Log pumping session';

  @override
  String get pumpingEdit => 'Edit pumping session';

  @override
  String get pumpingLeft => 'Left breast (ml)';

  @override
  String get pumpingRight => 'Right breast (ml)';

  @override
  String get pumpingTotal => 'Total pumped';

  @override
  String get pumpingDuration => 'Duration (minutes)';

  @override
  String get pumpingStored => 'Stored / frozen';

  @override
  String get pumpingNotes => 'Notes (optional)';

  @override
  String get pumpingSessionTitle => 'Pumping';

  @override
  String pumpingTotalMl(int ml) {
    return '$ml ml total';
  }

  @override
  String get bathLog => 'Log bath';

  @override
  String get bathEdit => 'Edit bath';

  @override
  String get bathType => 'Bath type';

  @override
  String get bathTypeSponge => 'Sponge bath';

  @override
  String get bathTypeTub => 'Tub bath';

  @override
  String get bathTypeShower => 'Shower';

  @override
  String get bathNotes => 'Notes (optional)';

  @override
  String get bathProducts => 'Products used (optional)';

  @override
  String get vaccineTitle => 'Vaccinations';

  @override
  String get vaccineTabGiven => 'Given';

  @override
  String get vaccineTabSchedule => 'Schedule';

  @override
  String get vaccineLog => 'Log vaccine';

  @override
  String get vaccineEdit => 'Edit vaccine';

  @override
  String get vaccineName => 'Vaccine name';

  @override
  String get vaccineBrand => 'Brand / manufacturer (optional)';

  @override
  String get vaccineDate => 'Date given';

  @override
  String get vaccineDose => 'Dose number (optional)';

  @override
  String get vaccineSite => 'Injection site (optional)';

  @override
  String get vaccineNotes => 'Notes / reactions';

  @override
  String vaccineDue(String age) {
    return 'Due at $age';
  }

  @override
  String get vaccineGiven => 'Given';

  @override
  String get vaccineNoGiven => 'No vaccines logged yet.';

  @override
  String get vaccineMarkGiven => 'Mark as given';

  @override
  String get whoChartTitle => 'WHO Growth Charts';

  @override
  String get whoWeightForAge => 'Weight-for-age';

  @override
  String get whoHeightForAge => 'Length/Height-for-age';

  @override
  String get whoHeadForAge => 'Head circumference-for-age';

  @override
  String get whoGenderBoy => 'Boy';

  @override
  String get whoGenderGirl => 'Girl';

  @override
  String get whoNoData => 'No measurements logged yet.\nLog weight from a day\'s entries to see the chart.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'Your baby';

  @override
  String whoAgeMonths(int n) {
    return '$n mo';
  }

  @override
  String get whoNoBirthDate => 'Set baby\'s date of birth in the profile to see age-based charts.';

  @override
  String get notifTitle => 'Reminders';

  @override
  String get notifFeedingReminder => 'Feeding reminder';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'Remind me after ${hours}h if no feed logged';
  }

  @override
  String get notifDiaperReminder => 'Diaper reminder';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'Remind me after ${hours}h if no diaper logged';
  }

  @override
  String get notifMedicationReminder => 'Medication reminder';

  @override
  String get notifEnabled => 'Notifications enabled';

  @override
  String get notifDisabled => 'Notifications disabled';

  @override
  String get notifPermissionRequired => 'Please enable notifications in your device settings.';

  @override
  String get exportTitle => 'Export & backup';

  @override
  String get exportJson => 'Export as JSON';

  @override
  String get exportPdf => 'Export as PDF';

  @override
  String get exportPdfDesc => 'Human-readable summary for your paediatrician';

  @override
  String get exportGoogleDrive => 'Back up to Google Drive';

  @override
  String get exportGenerating => 'Generating report...';

  @override
  String get milestoneTitle => 'Milestones';

  @override
  String get milestoneTabAchieved => 'Achieved';

  @override
  String get milestoneTabUpcoming => 'Upcoming';

  @override
  String get milestoneCustomAdd => 'Custom milestone';

  @override
  String get milestoneDeleteTitle => 'Delete milestone?';

  @override
  String get milestoneEdit => 'Edit milestone';

  @override
  String get milestoneAdd => 'Add milestone';

  @override
  String get milestoneName => 'Milestone name *';

  @override
  String get milestoneDate => 'Date achieved';

  @override
  String get milestoneNotes => 'Notes (optional)';

  @override
  String get milestoneNotesHint => 'Any details worth remembering...';

  @override
  String get milestoneNoAchieved => 'No milestones logged yet.';

  @override
  String get milestoneAllDone => 'All preset milestones achieved! 🎉';

  @override
  String get milestoneFirstSmile => '😊 First smile';

  @override
  String get milestoneFirstLaugh => '😂 First laugh';

  @override
  String get milestoneFirstTooth => '🦷 First tooth';

  @override
  String get milestoneRolledBackTummy => '🔄 Rolled back → tummy';

  @override
  String get milestoneRolledTummyBack => '🔄 Rolled tummy → back';

  @override
  String get milestoneSatUnsupported => '🧸 Sat unsupported';

  @override
  String get milestoneStartedCrawling => '🐣 Started crawling';

  @override
  String get milestonePulledToStand => '🏋️ Pulled to stand';

  @override
  String get milestoneFirstSteps => '👣 First steps';

  @override
  String get milestoneFirstWord => '💬 First word';

  @override
  String get milestoneFirstSolidFood => '🥣 First solid food';

  @override
  String get milestoneFirstHaircut => '✂️ First haircut';

  @override
  String get milestoneSleptThroughNight => '🌙 Slept through the night';

  @override
  String get milestoneWavedBye => '👋 Waved bye-bye';

  @override
  String get milestoneClappedHands => '👏 Clapped hands';

  @override
  String get milestoneFirstBirthday => '🎂 First birthday';

  @override
  String get settingsTitle => 'تنظیمات';

  @override
  String get settingsAppearance => 'ظاهر';

  @override
  String get settingsDarkMode => 'حالت تیره';

  @override
  String get settingsDarkActive => 'تم تیره فعال است';

  @override
  String get settingsLightActive => 'تم روشن فعال است';

  @override
  String get settingsUnits => 'واحدها';

  @override
  String get settingsWeightUnit => 'واحد وزن';

  @override
  String get settingsTempUnit => 'واحد دما';

  @override
  String get settingsLanguage => 'زبان';

  @override
  String get settingsNotifications => 'Notifications & reminders';

  @override
  String get settingsExport => 'Export & backup';

  @override
  String get settingsTips => 'نکات';

  @override
  String get tipSwitchBabies => 'تغییر کودک';

  @override
  String get tipSwitchBabiesDesc => 'برای تغییر یا افزودن پروفایل، روی آواتار کودک در بالا ضربه بزنید';

  @override
  String get tipSwipeDelete => 'برای حذف به چپ بکشید';

  @override
  String get tipSwipeDeleteDesc => 'روی کارت‌های روز و ورودی‌های جداگانه کار می‌کند';

  @override
  String get tipTapToEdit => 'برای ویرایش هر ورودی، روی آن ضربه بزنید';

  @override
  String get tipMultipleFeeds => 'ثبت چندین شیردهی';

  @override
  String get tipMultipleFeedsDesc => 'در فرم شیردهی، روی «افزودن شیردهی دیگر» ضربه بزنید تا شیر مادر و شیشه را یکجا ثبت کنید';

  @override
  String get tipExportData => 'خروجی داده';

  @override
  String get tipExportDataDesc => 'از آیکون اشتراک‌گذاری در صفحه اصلی برای خروجی همه داده‌ها به صورت JSON استفاده کنید';

  @override
  String get babiesTitle => 'کودکان';

  @override
  String get addBaby => 'افزودن کودک';

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
  String get cannotDeleteOnlyProfile => 'تنها پروفایل کودک قابل حذف نیست';

  @override
  String deleteProfileTitle(String name) {
    return '$name حذف شود؟';
  }

  @override
  String get deleteProfileContent => 'همه داده‌های این کودک به طور دائم حذف خواهند شد';

  @override
  String get graphsTitle => 'نمودارها';

  @override
  String get graphsTabDaily => 'روزانه';

  @override
  String get graphsTabGrowth => 'رشد';

  @override
  String get graphsTabHealth => 'سلامت';

  @override
  String get graphsTabWho => 'WHO Charts';

  @override
  String get graphsTotalFeeds => 'کل شیردهی‌ها';

  @override
  String get graphsAvgPerDay => 'میانگین/روز';

  @override
  String get graphsTotalDiapers => 'تعداد پوشک';

  @override
  String get graphsTotalMilk => 'کل شیر';

  @override
  String get graphsTotalSleep => 'کل خواب';

  @override
  String get graphsAvgSleep => 'میانگین خواب/روز';

  @override
  String get graphsFeedsPerDay => 'شیردهی در روز';

  @override
  String get graphsDiapersPerDay => 'پوشک در روز';

  @override
  String get graphsMilkPerDay => 'شیر در روز (میلی‌لیتر)';

  @override
  String get graphsSleepPerDay => 'خواب در روز (ساعت)';

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
  String get graphsNoWeightData => 'هنوز ورودی وزنی وجود ندارد\nوزن را از ورودی‌های یک روز ثبت کنید';

  @override
  String get graphsNoTempData => 'هنوز ورودی دمایی وجود ندارد\nدما را از یک روز ثبت کنید';

  @override
  String get timeLabel => 'زمان';

  @override
  String get noColourRecorded => 'رنگی ثبت نشده';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روزه',
      one: '۱ روزه',
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
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years سال و $months ماه';
  }
}
