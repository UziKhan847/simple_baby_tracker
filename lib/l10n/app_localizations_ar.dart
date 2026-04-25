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
  String get exportPdf => 'تصدير بصيغة PDF';

  @override
  String get exportPdfDesc => 'ملخص قابل للقراءة لطبيب الأطفال';

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
  String get milestoneAllDone => 'تم تحقيق جميع المراحل المحددة مسبقاً! 🎉';

  @override
  String get milestoneFirstSmile => '😊 أول ابتسامة';

  @override
  String get milestoneFirstLaugh => '😂 أول ضحكة';

  @override
  String get milestoneFirstTooth => '🦷 أول سن';

  @override
  String get milestoneRolledBackTummy => '🔄 انقلب من الظهر إلى البطن';

  @override
  String get milestoneRolledTummyBack => '🔄 انقلب من البطن إلى الظهر';

  @override
  String get milestoneSatUnsupported => '🧸 جلس بدون دعم';

  @override
  String get milestoneStartedCrawling => '🐣 بدأ الزحف';

  @override
  String get milestonePulledToStand => '🏋️ نهض واقفاً مستنداً';

  @override
  String get milestoneFirstSteps => '👣 أول خطوات';

  @override
  String get milestoneFirstWord => '💬 أول كلمة';

  @override
  String get milestoneFirstSolidFood => '🥣 أول طعام صلب';

  @override
  String get milestoneFirstHaircut => '✂️ أول قصة شعر';

  @override
  String get milestoneSleptThroughNight => '🌙 نام طوال الليل';

  @override
  String get milestoneWavedBye => '👋 لوّح للوداع';

  @override
  String get milestoneClappedHands => '👏 صفّق بيديه';

  @override
  String get milestoneFirstBirthday => '🎂 أول عيد ميلاد';

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
}
