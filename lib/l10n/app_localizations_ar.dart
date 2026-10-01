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
  String get exportJson => 'تصدير بصيغة JSON';

  @override
  String get exportJsonDesc => 'بيانات خام للنسخ الاحتياطي';

  @override
  String get exportPdf => 'تصدير بصيغة PDF';

  @override
  String get exportPdfDesc => 'ملخص قابل للقراءة لطبيب الأطفال';

  @override
  String get importJson => 'استيراد من JSON';

  @override
  String get importJsonDesc => 'استعادة من ملف نسخة احتياطية';

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
  String get settingsVolumeUnit => 'Milk volume unit';

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
  String get tipExportDataDesc => 'استخدم أيقونة المشاركة في الشاشة الرئيسية لتصدير جميع البيانات بصيغة JSON.';

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
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

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
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

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
