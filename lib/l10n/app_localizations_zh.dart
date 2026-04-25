// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '宝宝追踪器';

  @override
  String get navHome => '首页';

  @override
  String get navGraphs => '图表';

  @override
  String get navMilestones => 'Milestones';

  @override
  String get navSettings => '设置';

  @override
  String get actionCancel => '取消';

  @override
  String get actionSave => '保存';

  @override
  String get actionUpdate => '更新';

  @override
  String get actionDelete => '删除';

  @override
  String get actionAdd => '添加';

  @override
  String get actionEdit => '编辑';

  @override
  String get actionClose => '关闭';

  @override
  String get actionExport => '导出数据';

  @override
  String get actionAddDay => '添加日期';

  @override
  String get actionLog => 'Log';

  @override
  String get cannotUndo => '此操作无法撤销';

  @override
  String get noData => '无数据';

  @override
  String get noNotes => 'No notes';

  @override
  String get noDetails => '无详情';

  @override
  String get optional => '(optional)';

  @override
  String get homeTitle => '追踪';

  @override
  String get feedsToday => '今日喂养';

  @override
  String get diapersToday => '今日尿布';

  @override
  String get sleepToday => '今日睡眠';

  @override
  String todayLabel(String date) {
    return '今天 — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count个事件',
      one: '1个事件',
      zero: '无事件',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => '删除这一天？';

  @override
  String deleteDayContent(String date) {
    return '删除$date及其所有记录？此操作无法撤销';
  }

  @override
  String get rashRecorded => '已记录尿布疹';

  @override
  String get noEntriesYet => '暂无记录';

  @override
  String get addEntry => '添加记录';

  @override
  String get deleteEntryTitle => '删除此记录？';

  @override
  String get entryTypeDiaper => '换尿布';

  @override
  String get entryTypeFeeding => '喂养';

  @override
  String get entryTypeSleep => '睡眠';

  @override
  String get entryTypeTemperature => '体温';

  @override
  String get entryTypeWeight => '体重';

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
  String get diaperPeePoo => '尿布 — 小便 + 大便';

  @override
  String get diaperPee => '尿布 — 仅小便';

  @override
  String get diaperPoo => '尿布 — 仅大便';

  @override
  String get diaperChange => '换尿布';

  @override
  String get editDiaper => '编辑尿布';

  @override
  String get diaperContents => '内容物';

  @override
  String get diaperNone => '无';

  @override
  String get diaperPeeLabel => '小便';

  @override
  String get diaperPooLabel => '大便';

  @override
  String get diaperBoth => '两者都有';

  @override
  String get diaperConsistency => '质地';

  @override
  String get consistencyHard => '硬 / 颗粒状';

  @override
  String get consistencyHardHint => '便秘';

  @override
  String get consistencyFirm => '成形';

  @override
  String get consistencyFirmHint => '略硬';

  @override
  String get consistencyNormal => '正常';

  @override
  String get consistencyNormalHint => '健康';

  @override
  String get consistencySoft => '软';

  @override
  String get consistencySoftHint => '略软';

  @override
  String get consistencyLoose => '糊状 / 半液体';

  @override
  String get consistencyLooseHint => '需关注';

  @override
  String get consistencyWatery => '水样';

  @override
  String get consistencyWateryHint => '腹泻';

  @override
  String get warnConstipation => '便秘迹象 — 密切观察';

  @override
  String get warnDiarrhea => '腹泻迹象 — 密切观察';

  @override
  String get pooColourLabel => '颜色（点击选择）';

  @override
  String get pooColourAbnormal => '⚠️ 异常（苍白）';

  @override
  String get pooColourNormal => '✅ 正常';

  @override
  String pooColourSelected(String label) {
    return '已选：$label';
  }

  @override
  String get diaperSize => '尿布尺寸';

  @override
  String get diaperBrand => '品牌';

  @override
  String get diaperBrandCustomLabel => '品牌名称';

  @override
  String get rashPresent => '有尿布疹';

  @override
  String get rashPresentHint => '发红、刺激或尿布疹';

  @override
  String get rashCreamUsed => '已使用护臀霜';

  @override
  String get rashCreamCustomLabel => '护臀霜 / 药膏名称';

  @override
  String get rashFollowUpTitle => '⚠️ 尿布疹随访';

  @override
  String get rashFollowUpQuestion => '上次尿布记录有尿布疹。有改善吗？';

  @override
  String get rashImproved => '是，有改善';

  @override
  String get rashNoChange => '无变化 / 更糟';

  @override
  String get addFeeding => '添加喂养';

  @override
  String get editFeeding => '编辑喂养';

  @override
  String feedLabel(int number) {
    return '第$number次喂养';
  }

  @override
  String get feedModeBottle => '奶瓶';

  @override
  String get feedModeSuckle => '亲喂';

  @override
  String get feedAmountMl => '奶量（毫升）';

  @override
  String get feedType => '类型';

  @override
  String get feedBreastMilk => '母乳';

  @override
  String get feedFormula => '配方奶';

  @override
  String get feedFormulaBrand => '配方奶品牌';

  @override
  String get feedFormulaBrandCustom => '品牌名称';

  @override
  String get feedDurationMinutes => '时长（分钟）';

  @override
  String get addAnotherFeed => '再添加一次喂养';

  @override
  String get bottleBreastMilk => '奶瓶 — 母乳';

  @override
  String get bottleFormula => '奶瓶 — 配方奶';

  @override
  String get breastfeedingSuckle => '母乳亲喂';

  @override
  String get logSleep => '记录睡眠';

  @override
  String get editSleep => '编辑睡眠';

  @override
  String get sleepStart => '入睡时间';

  @override
  String get sleepWakeUp => '醒来时间';

  @override
  String sleepDuration(String duration) {
    return '时长：$duration';
  }

  @override
  String get sleepInvalidTimes => '时间无效';

  @override
  String get sleepWrapsNextDay => '（结束于次日）';

  @override
  String get sleepNotes => '备注（可选）';

  @override
  String get sleepNotesHint => '例如：烦躁、短暂醒来……';

  @override
  String get sleepNoNotes => '无备注';

  @override
  String sleepHoursShort(int h, int m) {
    return '$h小时$m分钟';
  }

  @override
  String get logTemperature => '记录体温';

  @override
  String get editTemperature => '编辑体温';

  @override
  String get temperatureLabel => '体温';

  @override
  String get tempSeverityLow => '体温偏低 — 关注';

  @override
  String get tempSeverityNormal => '体温正常';

  @override
  String get tempSeverityElevated => '轻微发热 — 密切观察';

  @override
  String get tempSeverityFever => '发烧 — 咨询医生';

  @override
  String get tempReference => '体温参考';

  @override
  String get tempRefLow => '< 36.0 °C / 96.8 °F';

  @override
  String get tempRefNormal => '36.0 – 37.4 °C / 96.8 – 99.3 °F';

  @override
  String get tempRefElevated => '37.5 – 38.4 °C / 99.5 – 101.1 °F';

  @override
  String get tempRefFever => '≥ 38.5 °C / 101.3 °F';

  @override
  String get tempFeverWarning => '⚠️ 3个月以下婴儿发烧请务必咨询儿科医生';

  @override
  String get tempLow => '偏低';

  @override
  String get tempNormal => '正常';

  @override
  String get tempElevated => '偏高';

  @override
  String get tempFever => '发烧';

  @override
  String get tempLatest => '最近体温';

  @override
  String get tempSummary => '体温摘要';

  @override
  String get tempFeverThreshold => '发烧阈值';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count天',
      one: '1天',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => '记录体重';

  @override
  String get editWeight => '编辑体重';

  @override
  String get weightLabel => '体重';

  @override
  String weightGain(String amount) {
    return '+$amount 增加';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount 减少';
  }

  @override
  String weightPrevious(String weight) {
    return '上一次：$weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return '上次记录：$weight（$date）';
  }

  @override
  String get weightLatest => '最近体重';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount 在此期间';
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
  String get settingsTitle => '设置';

  @override
  String get settingsAppearance => '外观';

  @override
  String get settingsDarkMode => '深色模式';

  @override
  String get settingsDarkActive => '深色主题已启用';

  @override
  String get settingsLightActive => '浅色主题已启用';

  @override
  String get settingsUnits => '单位';

  @override
  String get settingsWeightUnit => '体重单位';

  @override
  String get settingsTempUnit => '体温单位';

  @override
  String get settingsLanguage => '语言';

  @override
  String get settingsNotifications => 'Notifications & reminders';

  @override
  String get settingsExport => 'Export & backup';

  @override
  String get settingsTips => '提示';

  @override
  String get tipSwitchBabies => '切换宝宝';

  @override
  String get tipSwitchBabiesDesc => '点击顶部的宝宝头像来切换或添加宝宝档案';

  @override
  String get tipSwipeDelete => '向左滑动删除';

  @override
  String get tipSwipeDeleteDesc => '适用于日期卡片和单个记录';

  @override
  String get tipTapToEdit => '点击任意记录即可编辑';

  @override
  String get tipMultipleFeeds => '记录多次喂养';

  @override
  String get tipMultipleFeedsDesc => '在喂养表单中，点击“再添加一次喂养”可同时记录亲喂和奶瓶';

  @override
  String get tipExportData => '导出数据';

  @override
  String get tipExportDataDesc => '使用首页的分享图标将所有数据导出为JSON';

  @override
  String get babiesTitle => '宝宝';

  @override
  String get addBaby => '添加宝宝';

  @override
  String get editProfile => '编辑档案';

  @override
  String get babyNameRequired => '姓名 *';

  @override
  String get babyDobOptional => '出生日期（可选）';

  @override
  String babyBornOn(String date) {
    return '出生于 $date';
  }

  @override
  String get genderUnknown => '未知';

  @override
  String get genderBoy => '男孩';

  @override
  String get genderGirl => '女孩';

  @override
  String get cannotDeleteOnlyProfile => '无法删除唯一的宝宝档案';

  @override
  String deleteProfileTitle(String name) {
    return '删除 $name？';
  }

  @override
  String get deleteProfileContent => '此宝宝的所有数据将被永久删除';

  @override
  String get graphsTitle => '图表';

  @override
  String get graphsTabDaily => '每日';

  @override
  String get graphsTabGrowth => '成长';

  @override
  String get graphsTabHealth => '健康';

  @override
  String get graphsTabWho => 'WHO Charts';

  @override
  String get graphsTotalFeeds => '喂养总数';

  @override
  String get graphsAvgPerDay => '日均';

  @override
  String get graphsTotalDiapers => '尿布总数';

  @override
  String get graphsTotalMilk => '总奶量';

  @override
  String get graphsTotalSleep => '总睡眠时长';

  @override
  String get graphsAvgSleep => '日均睡眠';

  @override
  String get graphsFeedsPerDay => '每日喂养次数';

  @override
  String get graphsDiapersPerDay => '每日尿布次数';

  @override
  String get graphsMilkPerDay => '每日奶量（毫升）';

  @override
  String get graphsSleepPerDay => '每日睡眠（小时）';

  @override
  String get graphsWeightOverTime => '体重变化趋势';

  @override
  String get graphsTempOverTime => '体温变化趋势';

  @override
  String graphsMaxLabel(String value) {
    return '最高：$value';
  }

  @override
  String graphsMinLabel(String value) {
    return '最低：$value';
  }

  @override
  String get graphsNoWeightData => '暂无体重记录\n可从某天的记录中添加体重';

  @override
  String get graphsNoTempData => '暂无体温记录\n可从某天添加体温';

  @override
  String get timeLabel => '时间';

  @override
  String get noColourRecorded => '未记录颜色';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count天',
      one: '1天',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count个月',
      one: '1个月',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years岁$months个月';
  }
}
