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
  String get navMilestones => 'مراحل التطور';

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
  String get actionLog => 'تسجيل';

  @override
  String get cannotUndo => 'لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get noData => 'لا توجد بيانات';

  @override
  String get noNotes => 'لا توجد ملاحظات';

  @override
  String get noDetails => 'لا توجد تفاصيل';

  @override
  String get optional => '(اختياري)';

  @override
  String get homeTitle => 'المتعقب';

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
      other: '$count أحداث',
      one: 'حدث واحد',
      zero: 'لا أحداث',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'حذف اليوم؟';

  @override
  String deleteDayContent(String date) {
    return 'هل تريد حذف $date وكل ما فيه من إدخالات؟ لا يمكن التراجع.';
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
  String get entryTypeDiaper => 'تغيير حفاض';

  @override
  String get entryTypeFeeding => 'رضاعة';

  @override
  String get entryTypeSleep => 'نوم';

  @override
  String get entryTypeTemperature => 'درجة الحرارة';

  @override
  String get entryTypeWeight => 'الوزن';

  @override
  String get entryTypeTummyTime => 'وقت البطن';

  @override
  String get entryTypeMedication => 'دواء';

  @override
  String get entryTypeDoctorVisit => 'زيارة طبيب';

  @override
  String get entryTypeNote => 'ملاحظة يومية / مذكرة';

  @override
  String get entryTypePumping => 'جلسة شفط حليب';

  @override
  String get entryTypeBath => 'حمام';

  @override
  String get diaperPeePoo => 'حفاض — بول + براز';

  @override
  String get diaperPee => 'حفاض — بول';

  @override
  String get diaperPoo => 'حفاض — براز';

  @override
  String get diaperChange => 'تغيير حفاض';

  @override
  String get editDiaper => 'تعديل الحفاض';

  @override
  String get diaperContents => 'المحتوى';

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
  String get consistencyHard => 'صلب / كريات';

  @override
  String get consistencyHardHint => 'إمساك';

  @override
  String get consistencyFirm => 'متماسك';

  @override
  String get consistencyFirmHint => 'متماسك قليلاً';

  @override
  String get consistencyNormal => 'طبيعي';

  @override
  String get consistencyNormalHint => 'صحي';

  @override
  String get consistencySoft => 'لين';

  @override
  String get consistencySoftHint => 'لين قليلاً';

  @override
  String get consistencyLoose => 'سائل / طري';

  @override
  String get consistencyLooseHint => 'مراقبة';

  @override
  String get consistencyWatery => 'مائي';

  @override
  String get consistencyWateryHint => 'إسهال';

  @override
  String get warnConstipation => 'علامات إمساك — راقب عن كثب';

  @override
  String get warnDiarrhea => 'علامات إسهال — راقب عن كثب';

  @override
  String get pooColourLabel => 'اللون (انقر للاختيار)';

  @override
  String get pooColourAbnormal => '⚠️ غير طبيعي (باهت)';

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
  String get rashPresentHint => 'احمرار، تهيج أو طفح الحفاض';

  @override
  String get rashCreamUsed => 'تم استخدام كريم الطفح';

  @override
  String get rashCreamCustomLabel => 'اسم الكريم / المرهم';

  @override
  String get rashFollowUpTitle => '⚠️ متابعة الطفح';

  @override
  String get rashFollowUpQuestion => 'آخر حفاض سُجل فيه طفح. هل تحسّن؟';

  @override
  String get rashImproved => 'نعم، تحسّن';

  @override
  String get rashNoChange => 'لا تغير / ازداد سوءً';

  @override
  String get addFeeding => 'إضافة رضعة';

  @override
  String get editFeeding => 'تعديل الرضعة';

  @override
  String feedLabel(int number) {
    return 'الرضعة $number';
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
  String get feedFormulaBrandCustom => 'اسم ماركة الحليب الصناعي';

  @override
  String get feedDurationMinutes => 'المدة (دقائق)';

  @override
  String get addAnotherFeed => 'إضافة رضعة أخرى';

  @override
  String get bottleBreastMilk => 'زجاجة — حليب أم';

  @override
  String get bottleFormula => 'زجاجة — حليب صناعي';

  @override
  String get breastfeedingSuckle => 'رضاعة طبيعية (من الثدي)';

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
  String get sleepInvalidTimes => 'توقيت غير صالح';

  @override
  String get sleepWrapsNextDay => '(ينتهي في اليوم التالي)';

  @override
  String get sleepNotes => 'ملاحظات (اختياري)';

  @override
  String get sleepNotesHint => 'مثال: مضطرب، استيقظ لفترة قصيرة...';

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
  String get tempSeverityElevated => 'مرتفعة قليلاً — راقب جيداً';

  @override
  String get tempSeverityFever => 'حمّى — استشر طبيبك';

  @override
  String get tempReference => 'مرجع درجات الحرارة';

  @override
  String get tempRefLow => '< 36.0 °C / 96.8 °F';

  @override
  String get tempRefNormal => '36.0 – 37.4 °C / 96.8 – 99.3 °F';

  @override
  String get tempRefElevated => '37.5 – 38.4 °C / 99.5 – 101.1 °F';

  @override
  String get tempRefFever => '≥ 38.5 °C / 101.3 °F';

  @override
  String get tempFeverWarning => '⚠️ استشر طبيب الأطفال دائماً في حالة الحمّى للأطفال دون 3 أشهر.';

  @override
  String get tempLow => 'منخفضة';

  @override
  String get tempNormal => 'طبيعية';

  @override
  String get tempElevated => 'مرتفعة';

  @override
  String get tempFever => 'حمّى';

  @override
  String get tempLatest => 'آخر درجة حرارة';

  @override
  String get tempSummary => 'ملخص درجة الحرارة';

  @override
  String get tempFeverThreshold => 'حد الحمّى';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أيام',
      one: 'يوم واحد',
      zero: 'لا أيام',
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
  String get tummyTimeLog => 'تسجيل وقت البطن';

  @override
  String get tummyTimeEdit => 'تعديل وقت البطن';

  @override
  String get tummyTimeStart => 'وقت البداية';

  @override
  String get tummyTimeEnd => 'وقت النهاية';

  @override
  String get tummyTimeTip => 'وقت البطن يقوي عضلات الرقبة والكتفين.';

  @override
  String get medicationLog => 'تسجيل دواء';

  @override
  String get medicationEdit => 'تعديل الدواء';

  @override
  String get medicationName => 'اسم الدواء *';

  @override
  String get medicationDose => 'الجرعة';

  @override
  String get medicationUnit => 'الوحدة';

  @override
  String get medicationCommon => 'الأدوية الشائعة';

  @override
  String get medicationWarning => 'اتبع دائماً إرشادات الجرعة حسب الوزن/العمر. لا تتجاوز التكرار الموصى به.';

  @override
  String get medicationNotes => 'ملاحظات (اختياري)';

  @override
  String get medicationNotesHint => 'مثال: السبب، رد فعل...';

  @override
  String get doctorVisitLog => 'زيارة طبيب';

  @override
  String get doctorVisitEdit => 'تعديل زيارة الطبيب';

  @override
  String get doctorName => 'اسم الطبيب / العيادة';

  @override
  String get doctorVisitReason => 'سبب الزيارة';

  @override
  String get doctorVisitMeasurements => 'القياسات (اختياري)';

  @override
  String get doctorVisitNotes => 'ملاحظات';

  @override
  String get doctorVisitNotesHint => 'مثال: التطعيمات التي أُعطيت، توصيات الطبيب...';

  @override
  String get measurementWeightKg => 'الوزن (كجم)';

  @override
  String get measurementWeightLbs => 'الوزن (رطل)';

  @override
  String get measurementHeightCm => 'الطول / القامة (سم)';

  @override
  String get measurementHeadCm => 'محيط الرأس (سم)';

  @override
  String get dailyNoteLog => 'ملاحظة يومية';

  @override
  String get dailyNoteEdit => 'تعديل الملاحظة';

  @override
  String get dailyNoteTitle => 'العنوان (اختياري)';

  @override
  String get dailyNoteText => 'الملاحظة';

  @override
  String get dailyNoteHint => 'ماذا حدث اليوم؟ أول مرة ينقلب؟ صباح عصبي؟';

  @override
  String get dailyNoteTags => 'وسوم سريعة';

  @override
  String get pumpingLog => 'تسجيل جلسة شفط';

  @override
  String get pumpingEdit => 'تعديل جلسة الشفط';

  @override
  String get pumpingLeft => 'الثدي الأيسر (مل)';

  @override
  String get pumpingRight => 'الثدي الأيمن (مل)';

  @override
  String get pumpingTotal => 'الإجمالي المستخرج';

  @override
  String get pumpingDuration => 'المدة (دقائق)';

  @override
  String get pumpingStored => 'تم التخزين / التجميد';

  @override
  String get pumpingNotes => 'ملاحظات (اختياري)';

  @override
  String get pumpingSessionTitle => 'شفط';

  @override
  String pumpingTotalMl(int ml) {
    return '$ml مل إجمالي';
  }

  @override
  String get bathLog => 'تسجيل حمام';

  @override
  String get bathEdit => 'تعديل الحمام';

  @override
  String get bathType => 'نوع الحمام';

  @override
  String get bathTypeSponge => 'حمام إسفنجي';

  @override
  String get bathTypeTub => 'حمام في حوض';

  @override
  String get bathTypeShower => 'دش';

  @override
  String get bathNotes => 'ملاحظات (اختياري)';

  @override
  String get bathProducts => 'المنتجات المستخدمة (اختياري)';

  @override
  String get vaccineTitle => 'التطعيمات';

  @override
  String get vaccineTabGiven => 'تم إعطاؤه';

  @override
  String get vaccineTabSchedule => 'الجدول الزمني';

  @override
  String get vaccineLog => 'تسجيل تطعيم';

  @override
  String get vaccineEdit => 'تعديل التطعيم';

  @override
  String get vaccineName => 'اسم اللقاح';

  @override
  String get vaccineBrand => 'العلامة التجارية / الشركة المصنعة (اختياري)';

  @override
  String get vaccineDate => 'تاريخ الإعطاء';

  @override
  String get vaccineDose => 'رقم الجرعة (اختياري)';

  @override
  String get vaccineSite => 'موقع الحقن (اختياري)';

  @override
  String get vaccineNotes => 'ملاحظات / تفاعلات';

  @override
  String vaccineDue(String age) {
    return 'مستحق عند عمر $age';
  }

  @override
  String get vaccineGiven => 'تم إعطاؤه';

  @override
  String get vaccineNoGiven => 'لم يتم تسجيل أي تطعيم بعد.';

  @override
  String get vaccineMarkGiven => 'تحديد كمعطى';

  @override
  String get whoChartTitle => 'مخططات النمو لمنظمة الصحة العالمية';

  @override
  String get whoWeightForAge => 'الوزن حسب العمر';

  @override
  String get whoHeightForAge => 'الطول/القامة حسب العمر';

  @override
  String get whoHeadForAge => 'محيط الرأس حسب العمر';

  @override
  String get whoGenderBoy => 'ولد';

  @override
  String get whoGenderGirl => 'بنت';

  @override
  String get whoNoData => 'لم يتم تسجيل أي قياسات بعد.\nسجّل الوزن من إدخالات اليوم لرؤية المخطط.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'طفلك';

  @override
  String whoAgeMonths(int n) {
    return '$n شهر';
  }

  @override
  String get whoNoBirthDate => 'حدد تاريخ ميلاد الطفل في الملف الشخصي لرؤية المخططات حسب العمر.';

  @override
  String get notifTitle => 'التذكيرات';

  @override
  String get notifFeedingReminder => 'تذكير بالرضاعة';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'ذكّرني بعد $hours ساعة إذا لم يتم تسجيل رضعة';
  }

  @override
  String get notifDiaperReminder => 'تذكير بالحفاض';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'ذكّرني بعد $hours ساعة إذا لم يتم تسجيل حفاض';
  }

  @override
  String get notifMedicationReminder => 'تذكير بدواء';

  @override
  String get notifEnabled => 'الإشعارات مفعلة';

  @override
  String get notifDisabled => 'الإشعارات معطلة';

  @override
  String get notifPermissionRequired => 'يرجى تفعيل الإشعارات في إعدادات جهازك.';

  @override
  String get exportTitle => 'تصدير ونسخ احتياطي';

  @override
  String get exportJson => 'تصدير نسخة احتياطية';

  @override
  String get exportJsonDesc => 'كل البيانات والصور في ملف ‎.zip واحد';

  @override
  String get exportPdf => 'تصدير بصيغة PDF';

  @override
  String get exportPdfDesc => 'ملخص قابل للقراءة لطبيب الأطفال';

  @override
  String get importJson => 'استعادة نسخة احتياطية';

  @override
  String get importJsonDesc => 'من نسخة ‎.zip (أو تصدير ‎.json قديم)';

  @override
  String get importDialogTitle => 'استيراد البيانات؟';

  @override
  String get importDialogBody => 'الدمج يضيف إدخالات الملف إلى بياناتك الحالية. الاستبدال الكامل يحذف بياناتك الحالية أولاً.';

  @override
  String get importMerge => 'دمج';

  @override
  String get importReplaceAll => 'استبدال الكل';

  @override
  String get importSuccess => 'اكتمل الاستيراد';

  @override
  String get importInvalidFile => 'هذا لا يبدو كملف تصدير من Baby Tracker.';

  @override
  String get exportGoogleDrive => 'نسخ احتياطي إلى Google Drive';

  @override
  String get exportGenerating => 'جاري إنشاء التقرير...';

  @override
  String get milestoneTitle => 'مراحل التطور';

  @override
  String get milestoneTabAchieved => 'تم تحقيقه';

  @override
  String get milestoneTabUpcoming => 'القادمة';

  @override
  String get milestoneCustomAdd => 'مرحلة مخصصة';

  @override
  String get milestoneDeleteTitle => 'حذف المرحلة؟';

  @override
  String get milestoneEdit => 'تعديل المرحلة';

  @override
  String get milestoneAdd => 'إضافة مرحلة';

  @override
  String get milestoneName => 'اسم المرحلة *';

  @override
  String get milestoneDate => 'تاريخ التحقيق';

  @override
  String get milestoneNotes => 'ملاحظات (اختياري)';

  @override
  String get milestoneNotesHint => 'أي تفاصيل تستحق التذكر...';

  @override
  String get milestoneNoAchieved => 'لم يتم تسجيل أي مرحلة بعد.';

  @override
  String get milestoneAllDone => 'تم تحقيق جميع المراحل المحددة مسبقاً!';

  @override
  String get milestoneFirstSmile => 'أول ابتسامة';

  @override
  String get milestoneFirstLaugh => 'أول ضحكة';

  @override
  String get milestoneFirstTooth => 'أول سن';

  @override
  String get milestoneRolledBackTummy => 'انقلب من الظهر إلى البطن';

  @override
  String get milestoneRolledTummyBack => 'انقلب من البطن إلى الظهر';

  @override
  String get milestoneSatUnsupported => 'جلس بدون دعم';

  @override
  String get milestoneStartedCrawling => 'بدأ الزحف';

  @override
  String get milestonePulledToStand => 'نهض واقفاً مستنداً';

  @override
  String get milestoneFirstSteps => 'أول خطوات';

  @override
  String get milestoneFirstWord => 'أول كلمة';

  @override
  String get milestoneFirstSolidFood => 'أول طعام صلب';

  @override
  String get milestoneFirstHaircut => 'أول قصة شعر';

  @override
  String get milestoneSleptThroughNight => 'نام طوال الليل';

  @override
  String get milestoneWavedBye => 'لوّح للوداع';

  @override
  String get milestoneClappedHands => 'صفّق بيديه';

  @override
  String get milestoneFirstBirthday => 'أول عيد ميلاد';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get settingsAppearance => 'المظهر';

  @override
  String get settingsDarkMode => 'الوضع المظلم';

  @override
  String get settingsDarkActive => 'الوضع المظلم مفعل';

  @override
  String get settingsLightActive => 'الوضع الفاتح مفعل';

  @override
  String get settingsUnits => 'الوحدات';

  @override
  String get settingsWeightUnit => 'وحدة الوزن';

  @override
  String get settingsTempUnit => 'وحدة درجة الحرارة';

  @override
  String get settingsVolumeUnit => 'وحدة كمية الحليب';

  @override
  String get settingsLanguage => 'اللغة';

  @override
  String get settingsNotifications => 'الإشعارات والتذكيرات';

  @override
  String get settingsExport => 'تصدير ونسخ احتياطي';

  @override
  String get settingsTips => 'نصائح';

  @override
  String get tipSwitchBabies => 'التبديل بين الأطفال';

  @override
  String get tipSwitchBabiesDesc => 'اضغط على رمز الطفل في الأعلى للتبديل أو إضافة ملف تعريف طفل.';

  @override
  String get tipSwipeDelete => 'اسحب لليسار للحذف';

  @override
  String get tipSwipeDeleteDesc => 'يعمل على بلاطات اليوم والإدخالات الفردية.';

  @override
  String get tipTapToEdit => 'اضغط على أي إدخال لتعديله';

  @override
  String get tipMultipleFeeds => 'تسجيل رضعات متعددة';

  @override
  String get tipMultipleFeedsDesc => 'في نموذج الرضاعة، اضغط \"إضافة رضعة أخرى\" لتسجيل رضاعة طبيعية + زجاجة معاً.';

  @override
  String get tipExportData => 'تصدير البيانات';

  @override
  String get tipExportDataDesc => 'استخدم أيقونة المشاركة في الرئيسية لحفظ كل البيانات والصور في ملف واحد.';

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
    return 'ولد في $date';
  }

  @override
  String get genderUnknown => 'غير معروف';

  @override
  String get genderBoy => 'ولد';

  @override
  String get genderGirl => 'بنت';

  @override
  String get cannotDeleteOnlyProfile => 'لا يمكن حذف ملف الطفل الوحيد.';

  @override
  String deleteProfileTitle(String name) {
    return 'حذف $name؟';
  }

  @override
  String get deleteProfileContent => 'سيتم حذف جميع بيانات هذا الطفل نهائياً.';

  @override
  String get graphsTitle => 'الرسوم البيانية';

  @override
  String get graphsTabDaily => 'يومي';

  @override
  String get graphsTabGrowth => 'النمو';

  @override
  String get graphsTabHealth => 'الصحة';

  @override
  String get graphsTabWho => 'مخططات منظمة الصحة العالمية';

  @override
  String get graphsTotalFeeds => 'إجمالي الرضعات';

  @override
  String get graphsAvgPerDay => 'المعدل/اليوم';

  @override
  String get graphsTotalDiapers => 'الحفاضات';

  @override
  String get graphsTotalMilk => 'إجمالي الحليب';

  @override
  String get graphsTotalSleep => 'إجمالي النوم';

  @override
  String get graphsAvgSleep => 'متوسط النوم/اليوم';

  @override
  String get graphsFeedsPerDay => 'الرضعات لكل يوم';

  @override
  String get graphsDiapersPerDay => 'الحفاضات لكل يوم';

  @override
  String get graphsMilkPerDay => 'الحليب لكل يوم (مل)';

  @override
  String get graphsMilkPerDayMl => 'الحليب يوميًا (مل)';

  @override
  String get graphsMilkPerDayOz => 'الحليب يوميًا (أونصة)';

  @override
  String get graphsSleepPerDay => 'النوم لكل يوم (ساعات)';

  @override
  String get graphsWeightOverTime => 'الوزن عبر الزمن';

  @override
  String get graphsTempOverTime => 'درجة الحرارة عبر الزمن';

  @override
  String graphsMaxLabel(String value) {
    return 'الحد الأقصى: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'الحد الأدنى: $value';
  }

  @override
  String get graphsNoWeightData => 'لا توجد إدخالات وزن بعد.\nسجّل الوزن من إدخالات اليوم.';

  @override
  String get graphsNoTempData => 'لا توجد إدخالات درجة حرارة بعد.\nسجّل درجة الحرارة من اليوم.';

  @override
  String get timeLabel => 'الوقت';

  @override
  String get noColourRecorded => 'لم يتم تسجيل لون';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أيام',
      one: 'يوم واحد',
      zero: 'حديث الولادة',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أشهر',
      one: 'شهر واحد',
      zero: 'أقل من شهر',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years سنة و $months شهراً';
  }

  @override
  String medicationLabel(String name) {
    return 'دواء: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'زيارة';

  @override
  String doctorVisitLabel(String reason) {
    return 'زيارة طبيب — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 ملاحظة';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'د: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'لم يُسجَّل طبيب';

  @override
  String get summaryPoosLabel => 'البراز';

  @override
  String get summaryPeesLabel => 'البول';

  @override
  String get summaryMilkLabel => 'الحليب مل';

  @override
  String get summaryMilkLabelMl => 'حليب مل';

  @override
  String get summaryMilkLabelOz => 'حليب أونصة';

  @override
  String get summaryBreastLabel => 'رضاعة د';

  @override
  String get summarySleepLabel => 'نوم';

  @override
  String get settingsOledMode => 'OLED (أسود نقي)';

  @override
  String get settingsOledModeDesc => 'استخدام خلفية سوداء نقية لتوفير البطارية على شاشات OLED';

  @override
  String get settingsImmersiveMode => 'الوضع الغامر';

  @override
  String get settingsImmersiveModeDesc => 'إخفاء شريطي الحالة والتنقل في النظام';

  @override
  String get navVaccinationsEntry => 'التطعيمات';

  @override
  String get whoChartsEntry => 'مخططات نمو منظمة الصحة العالمية';

  @override
  String get medicationEditTitle => 'تعديل الدواء';

  @override
  String get medicationLogTitle => 'تسجيل دواء';

  @override
  String get medicationYourCourses => 'علاجاتك';

  @override
  String get medicationManageCourses => 'إدارة العلاجات';

  @override
  String get medicationNameRequired => 'اسم الدواء *';

  @override
  String get medicationDosageWarning => 'اتبع دائمًا الجرعة المناسبة للوزن/العمر. لا تتجاوز عدد المرات الموصى به.';

  @override
  String get medicationNotesOptional => 'ملاحظات (اختياري)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'منذ $count دقيقة',
      many: 'منذ $count دقيقة',
      few: 'منذ $count دقائق',
      two: 'منذ دقيقتين',
      one: 'منذ دقيقة',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'منذ $count ساعة',
      many: 'منذ $count ساعة',
      few: 'منذ $count ساعات',
      two: 'منذ ساعتين',
      one: 'منذ ساعة',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'منذ $count يوم',
      many: 'منذ $count يومًا',
      few: 'منذ $count أيام',
      two: 'منذ يومين',
      one: 'منذ يوم',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'آخر جرعة $ago';
  }

  @override
  String get medicationNeverGiven => 'لم يُعطَ بعد';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count جرعة اليوم',
      many: '$count جرعة اليوم',
      few: '$count جرعات اليوم',
      two: 'جرعتان اليوم',
      one: 'جرعة واحدة اليوم',
      zero: 'لا جرعات اليوم',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'الجرعة التالية بعد $hours ساعة من الأخيرة';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'تم بلوغ الحد اليومي ($max) لهذا العلاج';
  }

  @override
  String get medicationEditCourse => 'تعديل العلاج';

  @override
  String get medicationNewCourse => 'علاج جديد';

  @override
  String get medicationReasonOptional => 'السبب (اختياري)';

  @override
  String get medicationIntervalHoursOptional => 'التكرار كل (ساعات، اختياري)';

  @override
  String get medicationMaxPerDayOptional => 'أقصى عدد جرعات/يوم (اختياري)';

  @override
  String get medicationRemindNextDose => 'ذكّرني عند موعد الجرعة التالية';

  @override
  String medicationEndCourseTitle(String name) {
    return 'إنهاء $name؟';
  }

  @override
  String get medicationEndCoursePrompt => 'كيف كانت النتيجة؟';

  @override
  String get medicationDeleteCourseTitle => 'حذف هذا العلاج؟';

  @override
  String get medicationResultWorked => 'نجح';

  @override
  String get medicationResultPartlyWorked => 'نجح جزئيًا';

  @override
  String get medicationResultDidntWork => 'لم ينجح';

  @override
  String get medicationResultSideEffects => 'آثار جانبية';

  @override
  String get medicationResultNone => 'بدون تقييم';

  @override
  String get medicationsTitle => 'الأدوية';

  @override
  String medicationActiveTab(int count) {
    return 'الحالية ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'السابقة ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'لا توجد علاجات حالية.\nابدأ علاجًا بزر +.';

  @override
  String get medicationNoPastCourses => 'لا توجد علاجات سابقة بعد.';

  @override
  String medicationTimesGiven(int count) {
    return 'أُعطي $count×';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'الأخيرة: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'التالية $time';
  }

  @override
  String get medicationEndCourse => 'إنهاء العلاج';

  @override
  String feedLastSideHint(String side) {
    return 'المرة الماضية: $side';
  }

  @override
  String get feedSideLeft => 'الأيسر';

  @override
  String get feedSideRight => 'الأيمن';

  @override
  String get feedSideBoth => 'كلاهما';

  @override
  String get feedSideLeftMinutes => 'الأيسر (دقيقة)';

  @override
  String get feedSideRightMinutes => 'الأيمن (دقيقة)';

  @override
  String get timeAgoJustNow => 'الآن';

  @override
  String get timeUntilOverdue => 'متأخر';

  @override
  String timeUntilMinutes(int count) {
    return 'بعد $count د';
  }

  @override
  String timeUntilHours(int count) {
    return 'بعد $count س';
  }

  @override
  String timeUntilDays(int count) {
    return 'بعد $count ي';
  }

  @override
  String get timerDiscardTitle => 'تجاهل هذا المؤقت؟';

  @override
  String get timerDiscard => 'تجاهل';

  @override
  String timerFeedingRunning(String side) {
    return 'رضاعة · $side';
  }

  @override
  String get timerSleepRunning => 'مؤقت النوم يعمل';

  @override
  String get timerSwitchSide => 'تبديل الجهة';

  @override
  String get timerStop => 'إيقاف';

  @override
  String get sinceLastFeed => 'آخر رضعة';

  @override
  String get sinceLastDiaper => 'آخر حفاض';

  @override
  String get sinceAwake => 'مستيقظ';

  @override
  String get sinceAsleep => 'نائم';

  @override
  String nextDoseDue(String name) {
    return 'موعد $name';
  }

  @override
  String get weighConditionNaked => 'بدون ملابس';

  @override
  String get weighConditionDiaper => 'بالحفاض فقط';

  @override
  String get weighConditionLightClothes => 'ملابس خفيفة';

  @override
  String get weighConditionDressed => 'بالملابس';

  @override
  String get weighCondition => 'وُزن وهو';

  @override
  String get growthMeasurementsOptional => 'قياسات أخرى (اختياري)';

  @override
  String get growthHeightCm => 'الطول (سم)';

  @override
  String get growthHeadCm => 'محيط الرأس (سم)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'وُزن في المرة الماضية $condition — قد لا يكون الفرق نموًا فقط';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm سم';
  }

  @override
  String growthHeadValue(String cm) {
    return 'الرأس $cm سم';
  }

  @override
  String get growthHeightOverTime => 'الطول مع الوقت';

  @override
  String get growthHeadOverTime => 'محيط الرأس مع الوقت';

  @override
  String get graphsRecentWeighIns => 'آخر الأوزان';

  @override
  String get solidsAmountFewSpoons => 'بضع ملاعق';

  @override
  String get solidsAmountHalf => 'نصف حصة';

  @override
  String get solidsAmountFull => 'حصة كاملة';

  @override
  String get solidsAmountTaste => 'تذوق فقط';

  @override
  String get solidsReactionMild => 'تفاعل خفيف';

  @override
  String get solidsReactionAllergic => 'تفاعل تحسسي';

  @override
  String get solidsReactionNone => 'لا تفاعل';

  @override
  String get solidsEditTitle => 'تعديل الطعام الصلب';

  @override
  String get solidsLogTitle => 'تسجيل طعام صلب';

  @override
  String get solidsFoodsLabel => 'الأطعمة';

  @override
  String get solidsAddFoodHint => 'أضف طعامًا';

  @override
  String get solidsAmount => 'الكمية';

  @override
  String get solidsLiked => 'هل أعجبه؟';

  @override
  String get solidsReaction => 'التفاعل';

  @override
  String get solidsNotesOptional => 'ملاحظات (اختياري)';

  @override
  String get foodsTitle => 'الأطعمة المجرّبة';

  @override
  String get foodsEmpty => 'لم يُسجل أي طعام صلب بعد.';

  @override
  String get foodsAllergensNotYet => 'مسببات حساسية شائعة لم تُقدَّم بعد';

  @override
  String foodsTriedCount(int count) {
    return 'الأطعمة المجرّبة: $count';
  }

  @override
  String foodsFirstTried(String date) {
    return 'أول مرة: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'طعام صلب';

  @override
  String get feedAmountOz => 'الكمية (أونصة)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'ذكّرني بعد $interval من آخر رضعة';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'ذكّرني بعد $interval من آخر حفاض';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'كل $interval';
  }

  @override
  String get notifIntervalTitle => 'فترة التذكير';

  @override
  String get notifIntervalHours => 'ساعات';

  @override
  String get notifIntervalMinutes => 'دقائق';

  @override
  String notifIntervalTooShort(int minutes) {
    return '$minutes دقيقة على الأقل';
  }

  @override
  String get settingsFeeding => 'الرضاعة';

  @override
  String get settingsTrackBottles => 'تتبع الزجاجات';

  @override
  String get settingsTrackBottlesDesc => 'اختيار الزجاجة المستخدمة، والكمية المحضّرة مقابل المشروبة';

  @override
  String get bottlesTitle => 'زجاجاتي';

  @override
  String get bottlesEmpty => 'لا توجد زجاجات بعد.\nأضف الزجاجات التي تستخدمها لتختار منها عند تسجيل رضعة.';

  @override
  String get bottleAdd => 'إضافة زجاجة';

  @override
  String get bottleEdit => 'تعديل الزجاجة';

  @override
  String get bottleLabel => 'التسمية / الرقم (مثل #3)';

  @override
  String get bottleBrand => 'الماركة / النوع (اختياري)';

  @override
  String get bottleCapacity => 'السعة (اختياري)';

  @override
  String get bottleNipple => 'مقاس / تدفق الحلمة (اختياري)';

  @override
  String get bottleMaterial => 'المادة';

  @override
  String get bottleRetired => 'متوقفة';

  @override
  String get bottleRetire => 'إيقاف الاستخدام';

  @override
  String get bottleUnretire => 'استخدام مجددًا';

  @override
  String bottleDeleteTitle(String name) {
    return 'حذف $name؟';
  }

  @override
  String get bottleDeleteBody => 'تحتفظ الرضعات السابقة بكمياتها لكنها لن تعرض هذه الزجاجة بعد الآن. لإخفائها من القائمة مع الاحتفاظ بالسجل، استخدم «إيقاف الاستخدام» بدلًا من ذلك.';

  @override
  String get feedPrepared => 'المحضّر';

  @override
  String get feedDrank => 'المشروب';

  @override
  String feedLeftover(String amount) {
    return 'تبقى $amount';
  }

  @override
  String get feedDrankMoreThanPrepared => 'أكثر مما حُضّر؟';

  @override
  String get feedWhichBottle => 'أي زجاجة؟';

  @override
  String get feedNoBottlesYet => 'لا توجد زجاجات بعد — أضفها من الإعدادات ← زجاجاتي.';

  @override
  String get photoPrivacyTitle => 'صورك تبقى على هذا الهاتف';

  @override
  String get photoPrivacyBody => 'تُحفظ الصور داخل هذا التطبيق على هذا الجهاز فقط. لا يملك التطبيق اتصالًا بالإنترنت، لذا لا يُرفع أو يُشارك أي شيء إلا إذا صدّرت نسخة احتياطية بنفسك.\n\nقد يطلب Android إذن الكاميرا أول مرة تلتقط فيها صورة.';

  @override
  String get photoPrivacyContinue => 'متابعة';

  @override
  String get photoTakePhoto => 'التقاط صورة';

  @override
  String get photoChooseFromGallery => 'اختيار من المعرض';

  @override
  String get photoCaption => 'تعليق';

  @override
  String get photoCompare => 'الأولى مقابل الأحدث';

  @override
  String get photoAddOtherDay => 'إضافة ليوم آخر';

  @override
  String get photoEmpty => 'لا صور بعد.\nالتقط صورة كل يوم وشاهد طفلك يكبر.';

  @override
  String get photoToday => 'صورة اليوم';

  @override
  String get photoAddToday => 'أضف صورة اليوم';

  @override
  String get photoReplace => 'استبدال';

  @override
  String get photoDeleteTitle => 'حذف هذه الصورة؟';

  @override
  String get ageBeforeBirth => 'قبل الولادة';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'عمره $count يوم',
      many: 'عمره $count يومًا',
      few: 'عمره $count أيام',
      two: 'عمره يومان',
      one: 'عمره يوم',
      zero: 'يوم الولادة',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months شهر $days يوم';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years سنة $months شهر';
  }

  @override
  String get navMemories => 'الذكريات';

  @override
  String get memoriesTabPhotos => 'الصور';

  @override
  String get milestoneNoAchievedHint => 'اضغط «القادمة» لتسجيل مرحلة جاهزة،\nأو استخدم الزر أدناه لمرحلة مخصصة.';

  @override
  String get skinTitle => 'مشكلات الجلد';

  @override
  String get skinNew => 'مشكلة جلدية جديدة';

  @override
  String get skinEdit => 'تعديل المشكلة الجلدية';

  @override
  String skinTabActive(int count) {
    return 'الحالية ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'تعافت ($count)';
  }

  @override
  String get skinEmptyActive => 'لا توجد مشكلات جلدية قيد المتابعة.\nاضغط + للبدء — يمكنك إضافة صورة كل يوم لتُري الطبيب كيف تتغير.';

  @override
  String get skinEmptyHealed => 'لم يتعافَ شيء بعد.';

  @override
  String get skinUpdateDue => 'حدّث اليوم';

  @override
  String skinSince(String date) {
    return 'منذ $date';
  }

  @override
  String skinDays(int count) {
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
  String skinHealedOn(String date) {
    return 'تعافى في $date';
  }

  @override
  String skinReminderAt(String time) {
    return 'تذكير يومي الساعة $time';
  }

  @override
  String get skinSeverityTrend => 'الشدة مع الوقت';

  @override
  String get skinNoUpdates => 'لا تحديثات بعد. أضف تحديث اليوم لبدء السجل.';

  @override
  String get skinExportPdf => 'تصدير للطبيب (PDF)';

  @override
  String get skinMarkHealed => 'وضع علامة تعافى';

  @override
  String get skinReopen => 'إعادة التعيين كحالية';

  @override
  String get skinUpdateToday => 'إضافة تحديث اليوم';

  @override
  String get skinEditToday => 'تعديل تحديث اليوم';

  @override
  String skinDeleteTitle(String name) {
    return 'حذف $name وكل تحديثاتها؟';
  }

  @override
  String get skinDeleteUpdateTitle => 'حذف هذا التحديث؟';

  @override
  String skinTreatmentValue(String treatment) {
    return 'العلاج: $treatment';
  }

  @override
  String get skinName => 'المشكلة *';

  @override
  String get skinBodyArea => 'أين في الجسم؟';

  @override
  String get skinBegan => 'بدأت في';

  @override
  String get skinRemindDaily => 'ذكّرني بالتحديث يوميًا';

  @override
  String get skinReminderTime => 'وقت التذكير';

  @override
  String get skinUpdateTitle => 'تحديث الجلد';

  @override
  String get skinSeverity => 'كيف تبدو؟';

  @override
  String get skinSeverity0 => '0 · صافية';

  @override
  String get skinSeverity1 => '1 · خفيفة';

  @override
  String get skinSeverity2 => '2 · متوسطة';

  @override
  String get skinSeverity3 => '3 · شديدة';

  @override
  String get skinSeverity4 => '4 · شديدة جدًا';

  @override
  String get skinTreatment => 'العلاج (اختياري)';

  @override
  String get skinTreatmentHint => 'مثل مرطب، هيدروكورتيزون 1%';

  @override
  String get skinAddPhoto => 'إضافة صورة';

  @override
  String get skinCardNone => 'تابع الطفح أو الإكزيما أو أي مشكلة جلدية يومًا بيوم، مع صور للطبيب';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تحتاج تحديث اليوم',
      many: '$count تحتاج تحديث اليوم',
      few: '$count تحتاج تحديث اليوم',
      two: 'اثنتان تحتاجان تحديث اليوم',
      one: 'واحدة تحتاج تحديث اليوم',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'جارٍ تجهيز النسخة الاحتياطية…';

  @override
  String get backupFailed => 'تعذّر إنشاء النسخة الاحتياطية.';

  @override
  String get backupSavedTo => 'حُفظت النسخة في:';

  @override
  String get backupShareSubject => 'نسخة Baby Tracker الاحتياطية';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تتضمن $count صورة.',
      many: 'تتضمن $count صورة.',
      few: 'تتضمن $count صور.',
      two: 'تتضمن صورتين.',
      one: 'تتضمن صورة واحدة.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'رضاعة';

  @override
  String get widgetStopFeed => 'إيقاف الرضاعة';

  @override
  String get widgetDiaper => 'حفاض';

  @override
  String get widgetSleep => 'نوم';

  @override
  String get widgetWakeUp => 'استيقظ';

  @override
  String widgetFeedingFor(String duration) {
    return 'يرضع منذ $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'رضع $ago';
  }

  @override
  String get widgetNoFeedsYet => 'لا رضعات بعد';

  @override
  String widgetChangedAgo(String ago) {
    return 'غُيّر $ago';
  }

  @override
  String get widgetNoDiapersYet => 'لا حفاضات بعد';

  @override
  String widgetAsleepFor(String duration) {
    return 'نائم منذ $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'استيقظ $ago';
  }

  @override
  String get widgetStopSleepFirst => 'أوقف مؤقت النوم أولًا';

  @override
  String get widgetStopFeedFirst => 'أوقف مؤقت الرضاعة أولًا';

  @override
  String quickAddTitle(String name) {
    return 'إضافة لـ $name';
  }

  @override
  String get quickAddOpenApp => 'فتح التطبيق';

  @override
  String get foodPeanut => 'فول سوداني';

  @override
  String get foodEgg => 'بيض';

  @override
  String get foodDairy => 'ألبان';

  @override
  String get foodWheat => 'قمح';

  @override
  String get foodSoy => 'صويا';

  @override
  String get foodFish => 'سمك';

  @override
  String get foodShellfish => 'مأكولات بحرية صدفية';

  @override
  String get foodTreeNuts => 'مكسرات';

  @override
  String get foodSesame => 'سمسم';

  @override
  String get foodBanana => 'موز';

  @override
  String get foodAvocado => 'أفوكادو';

  @override
  String get foodSweetPotato => 'بطاطا حلوة';

  @override
  String get foodRiceCereal => 'سيريلاك الأرز';

  @override
  String get foodOatmeal => 'شوفان';

  @override
  String get foodCarrot => 'جزر';

  @override
  String get foodApple => 'تفاح';

  @override
  String get foodPea => 'بازلاء';

  @override
  String get symptomRash => 'طفح';

  @override
  String get symptomHives => 'شرى (أرتيكاريا)';

  @override
  String get symptomVomiting => 'قيء';

  @override
  String get symptomDiarrhea => 'إسهال';

  @override
  String get symptomSwelling => 'تورم';

  @override
  String get doseUnitDrops => 'قطرات';

  @override
  String get doseUnitTablets => 'أقراص';

  @override
  String get bottleMaterialPlastic => 'بلاستيك';

  @override
  String get bottleMaterialGlass => 'زجاج';

  @override
  String get bottleMaterialSilicone => 'سيليكون';

  @override
  String get bottleMaterialSteel => 'فولاذ مقاوم للصدأ';

  @override
  String get visitReasonRoutine => 'فحص دوري';

  @override
  String get visitReasonSick => 'مرض';

  @override
  String get visitReasonVaccination => 'تطعيم';

  @override
  String get visitReasonSpecialist => 'طبيب مختص';

  @override
  String get visitReasonFollowUp => 'متابعة';

  @override
  String get visitReasonOther => 'أخرى';

  @override
  String get pooColourPale => 'باهت';

  @override
  String get noteTagHappyDay => 'يوم سعيد';

  @override
  String get noteTagSleptWell => 'نام جيدًا';

  @override
  String get noteTagFussy => 'متضايق';

  @override
  String get noteTagNotWell => 'ليس على ما يرام';

  @override
  String get noteTagFirstTime => 'أول مرة!';

  @override
  String get noteTagTeething => 'التسنين';

  @override
  String get noteTagGrowthSpurt => 'طفرة نمو';

  @override
  String get noteTagMilestone => 'مرحلة تطور';

  @override
  String get tummyTimeNotesHint => 'مثل استمتع، كان متضايقًا...';

  @override
  String get skinSuggestEczema => 'إكزيما';

  @override
  String get skinSuggestDiaperRash => 'طفح الحفاض';

  @override
  String get skinSuggestCradleCap => 'قشرة رأس الرضيع';

  @override
  String get skinSuggestBabyAcne => 'حبوب الرضع';

  @override
  String get skinSuggestHeatRash => 'طفح الحرارة';

  @override
  String get skinSuggestDrySkin => 'جلد جاف';

  @override
  String get bodyFace => 'الوجه';

  @override
  String get bodyScalp => 'فروة الرأس';

  @override
  String get bodyNeck => 'الرقبة';

  @override
  String get bodyChest => 'الصدر';

  @override
  String get bodyBack => 'الظهر';

  @override
  String get bodyArms => 'الذراعان';

  @override
  String get bodyHands => 'اليدان';

  @override
  String get bodyDiaperArea => 'منطقة الحفاض';

  @override
  String get bodyLegs => 'الساقان';

  @override
  String get bodyFeet => 'القدمان';

  @override
  String get medSuggestGripeWater => 'ماء غريب (Gripe water)';

  @override
  String get medSuggestVitaminD => 'فيتامين د';

  @override
  String get medSuggestIronDrops => 'قطرات الحديد';

  @override
  String get medSuggestAntibiotic => 'مضاد حيوي';

  @override
  String get medSuggestProbiotic => 'بروبيوتيك';

  @override
  String vaccinePageTitle(String name) {
    return '$name — التطعيمات';
  }

  @override
  String get vaccineDeleteTitle => 'حذف سجل التطعيم؟';

  @override
  String get vaccineSiteHint => 'مثل الفخذ الأيسر';

  @override
  String get vaccineNotesHint => 'مثل حمى خفيفة، تضايق، لا تفاعل...';

  @override
  String get vaccineNoGivenHint => 'استخدم زر + أو اضغط «تحديد كمُعطى» في تبويب الجدول.';

  @override
  String get vaccineAgeBirth => 'عند الولادة';

  @override
  String vaccineAgeMonths(String range) {
    return '$range شهر';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range شهر (سنويًا)';
  }

  @override
  String get whoTabHeight => 'الطول';

  @override
  String get whoTabHead => 'الرأس';

  @override
  String get whoChartFor => 'المخطط لـ:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 شهرًا)';
  }

  @override
  String get whoNoDataPoints => 'لا بيانات بعد. سجّل القياسات لترى طفلك على المخطط.';

  @override
  String get whoLatestMeasurement => 'آخر قياس';

  @override
  String whoApproxPercentile(String value) {
    return 'المئين التقريبي: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return 'بين $low و$high';
  }

  @override
  String whoMonthsOld(String months) {
    return 'عمره $months شهر';
  }

  @override
  String get whoDisclaimer => 'هذه المخططات للمعلومات فقط. اطلب دائمًا من طبيب الأطفال تفسيرها.';

  @override
  String get whoMedian => 'P50 (الوسيط)';

  @override
  String get notifChannelName => 'تذكيرات Baby Tracker';

  @override
  String get notifChannelDesc => 'تذكيرات الرضاعة والحفاض والأدوية وفحص الجلد';

  @override
  String get notifFeedTitle => 'حان وقت الرضاعة!';

  @override
  String notifFeedBody(String interval) {
    return 'لم تُسجل أي رضعة خلال آخر $interval.';
  }

  @override
  String get notifDiaperTitle => 'تحقق من الحفاض!';

  @override
  String notifDiaperBody(String interval) {
    return 'لم يُسجل تغيير حفاض خلال آخر $interval.';
  }

  @override
  String notifDoseTitle(String name) {
    return 'موعد الجرعة: $name';
  }

  @override
  String notifDoseBody(String name) {
    return 'حان وقت الجرعة التالية من $name.';
  }

  @override
  String notifSkinTitle(String name) {
    return 'فحص الجلد: $name';
  }

  @override
  String get notifSkinBody => 'أضف تحديث اليوم (وصورة إن أردت).';

  @override
  String get timerFeedingNotif => 'مؤقت الرضاعة يعمل';

  @override
  String intervalMinutes(String m) {
    return '$m د';
  }

  @override
  String intervalHours(String h) {
    return '$h س';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h س $m د';
  }

  @override
  String get settingsRtlActive => 'تخطيط من اليمين لليسار مفعّل';

  @override
  String get measurementHeightIn => 'الطول (بوصة)';

  @override
  String get measurementHeadIn => 'محيط الرأس (بوصة)';

  @override
  String get growthHeightIn => 'الطول (بوصة)';

  @override
  String get growthHeadIn => 'محيط الرأس (بوصة)';

  @override
  String growthHeightValueIn(String value) {
    return '$value بوصة';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'الرأس $value بوصة';
  }

  @override
  String get settingsLengthUnitNote => 'الطول يتبع وحدة الوزن (سم مع كغ، بوصة مع رطل)';

  @override
  String get formulaStoreBrand => 'ماركة المتجر';
}
