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
  String get cannotUndo => 'لا يمكن التراجع عن هذا';

  @override
  String get noData => 'لا توجد بيانات';

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
  String get rashRecorded => 'تم تسجيل طفح جلدي';

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
  String get tipMultipleFeeds => 'تسجيل رضعات متعددة';

  @override
  String get tipMultipleFeedsDesc => 'في نموذج الرضاعة، اضغط \"إضافة رضاعة أخرى\" لتسجيل رضاعة طبيعية وزجاجة معًا';

  @override
  String get tipExportData => 'تصدير البيانات';

  @override
  String get tipExportDataDesc => 'استخدم أيقونة المشاركة في الصفحة الرئيسية لتصدير جميع البيانات بصيغة JSON';

  @override
  String get tipTapToEdit => 'اضغط على أي إدخال لتعديله';

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
  String get noDetails => 'لا تفاصيل';

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
