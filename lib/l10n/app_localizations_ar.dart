// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'متتبع الطفل';

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navGraphs => 'الرسوم البيانية';

  @override
  String get navMilestones => 'Milestones';

  @override
  String get navSettings => 'الإعدادات';

  @override
  String get actionCancel => 'إلغاء';

  @override
  String get actionSave => 'حفظ';

  @override
  String get actionUpdate => 'تحديث';

  @override
  String get actionDelete => 'حذف';

  @override
  String get actionAdd => 'إضافة';

  @override
  String get actionEdit => 'تعديل';

  @override
  String get actionClose => 'إغلاق';

  @override
  String get actionExport => 'تصدير البيانات';

  @override
  String get actionAddDay => 'إضافة يوم';

  @override
  String get actionLog => 'Log';

  @override
  String get cannotUndo => 'لا يمكن التراجع عن هذا';

  @override
  String get noData => 'لا توجد بيانات';

  @override
  String get noNotes => 'No notes';

  @override
  String get noDetails => 'لا تفاصيل';

  @override
  String get optional => '(optional)';

  @override
  String get homeTitle => 'المتتبع';

  @override
  String get feedsToday => 'الرضعات اليوم';

  @override
  String get diapersToday => 'الحفاضات اليوم';

  @override
  String get sleepToday => 'النوم اليوم';

  @override
  String todayLabel(String date) {
    return 'اليوم — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count حدث',
      many: '$count حدثًا',
      few: '$count أحداث',
      two: 'حدثان',
      one: 'حدث واحد',
      zero: 'لا أحداث',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'حذف اليوم؟';

  @override
  String deleteDayContent(String date) {
    return 'حذف $date وجميع إدخالاته؟ لا يمكن التراجع عن هذا';
  }

  @override
  String get rashRecorded => 'تم تسجيل طفح جلدي';

  @override
  String get noEntriesYet => 'لا توجد إدخالات بعد';

  @override
  String get addEntry => 'إضافة إدخال';

  @override
  String get deleteEntryTitle => 'حذف الإدخال؟';

  @override
  String get entryTypeDiaper => 'تغيير الحفاض';

  @override
  String get entryTypeFeeding => 'الرضاعة';

  @override
  String get entryTypeSleep => 'النوم';

  @override
  String get entryTypeTemperature => 'درجة الحرارة';

  @override
  String get entryTypeWeight => 'الوزن';

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
  String get diaperPeePoo => 'حفاض — بول وبراز';

  @override
  String get diaperPee => 'حفاض — بول';

  @override
  String get diaperPoo => 'حفاض — براز';

  @override
  String get diaperChange => 'تغيير الحفاض';

  @override
  String get editDiaper => 'تعديل الحفاض';

  @override
  String get diaperContents => 'المحتويات';

  @override
  String get diaperNone => 'لا شيء';

  @override
  String get diaperPeeLabel => 'بول';

  @override
  String get diaperPooLabel => 'براز';

  @override
  String get diaperBoth => 'كلاهما';

  @override
  String get diaperConsistency => 'القوام';

  @override
  String get consistencyHard => 'صلب / حبيبات';

  @override
  String get consistencyHardHint => 'إمساك';

  @override
  String get consistencyFirm => 'متماسك';

  @override
  String get consistencyFirmHint => 'متماسك نوعًا ما';

  @override
  String get consistencyNormal => 'طبيعي';

  @override
  String get consistencyNormalHint => 'صحي';

  @override
  String get consistencySoft => 'طري';

  @override
  String get consistencySoftHint => 'طري نوعًا ما';

  @override
  String get consistencyLoose => 'سائل / طري';

  @override
  String get consistencyLooseHint => 'يحتاج مراقبة';

  @override
  String get consistencyWatery => 'مائي';

  @override
  String get consistencyWateryHint => 'إسهال';

  @override
  String get warnConstipation => 'علامات إمساك — راقب عن كثب';

  @override
  String get warnDiarrhea => 'علامات إسهال — راقب عن كثب';

  @override
  String get pooColourLabel => 'اللون (اضغط للاختيار)';

  @override
  String get pooColourAbnormal => '⚠️ غير طبيعي (شاحب)';

  @override
  String get pooColourNormal => '✅ طبيعي';

  @override
  String pooColourSelected(String label) {
    return 'المختار: $label';
  }

  @override
  String get diaperSize => 'مقاس الحفاض';

  @override
  String get diaperBrand => 'العلامة التجارية';

  @override
  String get diaperBrandCustomLabel => 'اسم العلامة التجارية';

  @override
  String get rashPresent => 'يوجد طفح جلدي';

  @override
  String get rashPresentHint => 'احمرار أو تهيج أو طفح الحفاض';

  @override
  String get rashCreamUsed => 'تم استخدام كريم الطفح';

  @override
  String get rashCreamCustomLabel => 'اسم الكريم / المرهم';

  @override
  String get rashFollowUpTitle => '⚠️ متابعة الطفح الجلدي';

  @override
  String get rashFollowUpQuestion => 'آخر حفاض كان به طفح جلدي. هل تحسن؟';

  @override
  String get rashImproved => 'نعم، تحسن';

  @override
  String get rashNoChange => 'لا تغيير / أسوأ';

  @override
  String get addFeeding => 'إضافة رضاعة';

  @override
  String get editFeeding => 'تعديل الرضاعة';

  @override
  String feedLabel(int number) {
    return 'رضعة $number';
  }

  @override
  String get feedModeBottle => 'زجاجة';

  @override
  String get feedModeSuckle => 'رضاعة طبيعية';

  @override
  String get feedAmountMl => 'الكمية (مل)';

  @override
  String get feedType => 'النوع';

  @override
  String get feedBreastMilk => 'حليب أم';

  @override
  String get feedFormula => 'حليب صناعي';

  @override
  String get feedFormulaBrand => 'ماركة الحليب الصناعي';

  @override
  String get feedFormulaBrandCustom => 'اسم ماركة الحليب';

  @override
  String get feedDurationMinutes => 'المدة (دقائق)';

  @override
  String get addAnotherFeed => 'إضافة رضاعة أخرى';

  @override
  String get bottleBreastMilk => 'زجاجة — حليب أم';

  @override
  String get bottleFormula => 'زجاجة — حليب صناعي';

  @override
  String get breastfeedingSuckle => 'رضاعة طبيعية (مص)';

  @override
  String get logSleep => 'تسجيل النوم';

  @override
  String get editSleep => 'تعديل النوم';

  @override
  String get sleepStart => 'بداية النوم';

  @override
  String get sleepWakeUp => 'الاستيقاظ';

  @override
  String sleepDuration(String duration) {
    return 'المدة: $duration';
  }

  @override
  String get sleepInvalidTimes => 'أوقات غير صالحة';

  @override
  String get sleepWrapsNextDay => '(ينتهي في اليوم التالي)';

  @override
  String get sleepNotes => 'ملاحظات (اختياري)';

  @override
  String get sleepNotesHint => 'مثال: مضطرب، استيقظ لفترة وجيزة...';

  @override
  String get sleepNoNotes => 'لا توجد ملاحظات';

  @override
  String sleepHoursShort(int h, int m) {
    return '$hس $mد';
  }

  @override
  String get logTemperature => 'تسجيل درجة الحرارة';

  @override
  String get editTemperature => 'تعديل درجة الحرارة';

  @override
  String get temperatureLabel => 'درجة الحرارة';

  @override
  String get tempSeverityLow => 'درجة حرارة منخفضة — راقب';

  @override
  String get tempSeverityNormal => 'درجة حرارة طبيعية';

  @override
  String get tempSeverityElevated => 'مرتفعة قليلاً — راقب عن كثب';

  @override
  String get tempSeverityFever => 'حمى — استشر طبيبك';

  @override
  String get tempReference => 'مرجع درجة الحرارة';

  @override
  String get tempRefLow => '< 36.0 °م / 96.8 °ف';

  @override
  String get tempRefNormal => '36.0 – 37.4 °م / 96.8 – 99.3 °ف';

  @override
  String get tempRefElevated => '37.5 – 38.4 °م / 99.5 – 101.1 °ف';

  @override
  String get tempRefFever => '≥ 38.5 °م / 101.3 °ف';

  @override
  String get tempFeverWarning => '⚠️ استشر طبيب الأطفال دائمًا عند ارتفاع الحرارة لدى الرضع أقل من 3 أشهر';

  @override
  String get tempLow => 'منخفضة';

  @override
  String get tempNormal => 'طبيعية';

  @override
  String get tempElevated => 'مرتفعة';

  @override
  String get tempFever => 'حمى';

  @override
  String get tempLatest => 'آخر قراءة';

  @override
  String get tempSummary => 'ملخص درجة الحرارة';

  @override
  String get tempFeverThreshold => 'حد الحمى';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count يوم',
      many: '$count يومًا',
      few: '$count أيام',
      two: 'يومان',
      one: 'يوم واحد',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'تسجيل الوزن';

  @override
  String get editWeight => 'تعديل الوزن';

  @override
  String get weightLabel => 'الوزن';

  @override
  String weightGain(String amount) {
    return '+$amount زيادة';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount نقصان';
  }

  @override
  String weightPrevious(String weight) {
    return 'السابق: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'آخر تسجيل: $weight في $date';
  }

  @override
  String get weightLatest => 'آخر وزن';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount خلال الفترة';
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
  String get settingsTitle => 'الإعدادات';

  @override
  String get settingsAppearance => 'المظهر';

  @override
  String get settingsDarkMode => 'الوضع الداكن';

  @override
  String get settingsDarkActive => 'الوضع الداكن مفعل';

  @override
  String get settingsLightActive => 'الوضع الفاتح مفعل';

  @override
  String get settingsUnits => 'الوحدات';

  @override
  String get settingsWeightUnit => 'وحدة الوزن';

  @override
  String get settingsTempUnit => 'وحدة درجة الحرارة';

  @override
  String get settingsLanguage => 'اللغة';

  @override
  String get settingsNotifications => 'Notifications & reminders';

  @override
  String get settingsExport => 'Export & backup';

  @override
  String get settingsTips => 'نصائح';

  @override
  String get tipSwitchBabies => 'التبديل بين الأطفال';

  @override
  String get tipSwitchBabiesDesc => 'اضغط على صورة الطفل في الأعلى للتبديل أو إضافة ملف شخصي';

  @override
  String get tipSwipeDelete => 'اسحب يسارًا للحذف';

  @override
  String get tipSwipeDeleteDesc => 'يعمل على بطاقات الأيام والإدخالات الفردية';

  @override
  String get tipTapToEdit => 'اضغط على أي إدخال لتعديله';

  @override
  String get tipMultipleFeeds => 'تسجيل رضعات متعددة';

  @override
  String get tipMultipleFeedsDesc => 'في نموذج الرضاعة، اضغط \"إضافة رضاعة أخرى\" لتسجيل رضاعة طبيعية وزجاجة معًا';

  @override
  String get tipExportData => 'تصدير البيانات';

  @override
  String get tipExportDataDesc => 'استخدم أيقونة المشاركة في الصفحة الرئيسية لتصدير جميع البيانات بصيغة JSON';

  @override
  String get babiesTitle => 'الأطفال';

  @override
  String get addBaby => 'إضافة طفل';

  @override
  String get editProfile => 'تعديل الملف الشخصي';

  @override
  String get babyNameRequired => 'الاسم *';

  @override
  String get babyDobOptional => 'تاريخ الميلاد (اختياري)';

  @override
  String babyBornOn(String date) {
    return 'وُلد في $date';
  }

  @override
  String get genderUnknown => 'غير محدد';

  @override
  String get genderBoy => 'ولد';

  @override
  String get genderGirl => 'بنت';

  @override
  String get cannotDeleteOnlyProfile => 'لا يمكن حذف الملف الشخصي الوحيد';

  @override
  String deleteProfileTitle(String name) {
    return 'حذف $name؟';
  }

  @override
  String get deleteProfileContent => 'سيتم حذف جميع بيانات هذا الطفل بشكل دائم';

  @override
  String get graphsTitle => 'الرسوم البيانية';

  @override
  String get graphsTabDaily => 'يومي';

  @override
  String get graphsTabGrowth => 'النمو';

  @override
  String get graphsTabHealth => 'الصحة';

  @override
  String get graphsTabWho => 'WHO Charts';

  @override
  String get graphsTotalFeeds => 'إجمالي الرضعات';

  @override
  String get graphsAvgPerDay => 'متوسط/يوم';

  @override
  String get graphsTotalDiapers => 'الحفاضات';

  @override
  String get graphsTotalMilk => 'إجمالي الحليب';

  @override
  String get graphsTotalSleep => 'إجمالي النوم';

  @override
  String get graphsAvgSleep => 'متوسط النوم/يوم';

  @override
  String get graphsFeedsPerDay => 'الرضعات يوميًا';

  @override
  String get graphsDiapersPerDay => 'الحفاضات يوميًا';

  @override
  String get graphsMilkPerDay => 'الحليب يوميًا (مل)';

  @override
  String get graphsSleepPerDay => 'النوم يوميًا (ساعات)';

  @override
  String get graphsWeightOverTime => 'الوزن عبر الزمن';

  @override
  String get graphsTempOverTime => 'درجة الحرارة عبر الزمن';

  @override
  String graphsMaxLabel(String value) {
    return 'الأعلى: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'الأدنى: $value';
  }

  @override
  String get graphsNoWeightData => 'لا توجد إدخالات وزن بعد\nسجل الوزن من إدخالات اليوم';

  @override
  String get graphsNoTempData => 'لا توجد إدخالات حرارة بعد\nسجل درجة الحرارة من اليوم';

  @override
  String get timeLabel => 'الوقت';

  @override
  String get noColourRecorded => 'لم يسجل لون';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count يوم',
      many: '$count يومًا',
      few: '$count أيام',
      two: 'يومان',
      one: 'يوم واحد',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شهر',
      many: '$count شهرًا',
      few: '$count أشهر',
      two: 'شهران',
      one: 'شهر واحد',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years سنة $months شهر';
  }
}
