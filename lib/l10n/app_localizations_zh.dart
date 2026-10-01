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
  String get navMilestones => '成长里程碑';

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
  String get actionAddDay => '添加一天';

  @override
  String get actionLog => '记录';

  @override
  String get cannotUndo => '此操作无法撤销。';

  @override
  String get noData => '无数据';

  @override
  String get noNotes => '无备注';

  @override
  String get noDetails => '无详情';

  @override
  String get optional => '（可选）';

  @override
  String get homeTitle => '追踪器';

  @override
  String get feedsToday => '今日喂奶';

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
    return '删除 $date 及其所有记录？此操作无法撤销。';
  }

  @override
  String get rashRecorded => '已记录尿布疹';

  @override
  String get noEntriesYet => '暂无记录';

  @override
  String get addEntry => '添加记录';

  @override
  String get deleteEntryTitle => '删除记录？';

  @override
  String get entryTypeDiaper => '换尿布';

  @override
  String get entryTypeFeeding => '喂奶';

  @override
  String get entryTypeSleep => '睡眠';

  @override
  String get entryTypeTemperature => '体温';

  @override
  String get entryTypeWeight => '体重';

  @override
  String get entryTypeTummyTime => '俯卧时间';

  @override
  String get entryTypeMedication => '用药';

  @override
  String get entryTypeDoctorVisit => '看医生';

  @override
  String get entryTypeNote => '每日笔记/日记';

  @override
  String get entryTypePumping => '吸奶记录';

  @override
  String get entryTypeBath => '洗澡';

  @override
  String get diaperPeePoo => '尿布 — 尿 + 便';

  @override
  String get diaperPee => '尿布 — 尿';

  @override
  String get diaperPoo => '尿布 — 便';

  @override
  String get diaperChange => '换尿布';

  @override
  String get editDiaper => '编辑尿布记录';

  @override
  String get diaperContents => '内容物';

  @override
  String get diaperNone => '无';

  @override
  String get diaperPeeLabel => '尿';

  @override
  String get diaperPooLabel => '便';

  @override
  String get diaperBoth => '两者都有';

  @override
  String get diaperConsistency => '便便性状';

  @override
  String get consistencyHard => '硬/颗粒状';

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
  String get consistencyLoose => '稀/糊状';

  @override
  String get consistencyLooseHint => '需留意';

  @override
  String get consistencyWatery => '水样';

  @override
  String get consistencyWateryHint => '腹泻';

  @override
  String get warnConstipation => '有便秘迹象 — 请密切观察';

  @override
  String get warnDiarrhea => '有腹泻迹象 — 请密切观察';

  @override
  String get pooColourLabel => '颜色（点击选择）';

  @override
  String get pooColourAbnormal => '⚠️ 异常（苍白）';

  @override
  String get pooColourNormal => '✅ 正常';

  @override
  String pooColourSelected(String label) {
    return '已选择：$label';
  }

  @override
  String get diaperSize => '尿布尺码';

  @override
  String get diaperBrand => '品牌';

  @override
  String get diaperBrandCustomLabel => '品牌名称';

  @override
  String get rashPresent => '有尿布疹';

  @override
  String get rashPresentHint => '发红、过敏或尿布疹';

  @override
  String get rashCreamUsed => '已使用护臀膏';

  @override
  String get rashCreamCustomLabel => '护臀膏/药膏名称';

  @override
  String get rashFollowUpTitle => '⚠️ 尿布疹跟进';

  @override
  String get rashFollowUpQuestion => '上次换尿布时记录了尿布疹，现在好转了吗？';

  @override
  String get rashImproved => '是的，好转了';

  @override
  String get rashNoChange => '无变化/加重';

  @override
  String get addFeeding => '添加喂奶记录';

  @override
  String get editFeeding => '编辑喂奶记录';

  @override
  String feedLabel(int number) {
    return '喂奶 $number';
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
  String get feedFormulaBrandCustom => '配方奶品牌名称';

  @override
  String get feedDurationMinutes => '时长（分钟）';

  @override
  String get addAnotherFeed => '再添加一次喂奶';

  @override
  String get bottleBreastMilk => '奶瓶 — 母乳';

  @override
  String get bottleFormula => '奶瓶 — 配方奶';

  @override
  String get breastfeedingSuckle => '亲喂母乳';

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
  String get sleepWrapsNextDay => '（结束时间跨到次日）';

  @override
  String get sleepNotes => '备注（可选）';

  @override
  String get sleepNotesHint => '例如：不宁、短暂醒来…';

  @override
  String get sleepNoNotes => '无备注';

  @override
  String sleepHoursShort(int h, int m) {
    return '$h小时 $m分钟';
  }

  @override
  String get logTemperature => '记录体温';

  @override
  String get editTemperature => '编辑体温';

  @override
  String get temperatureLabel => '体温';

  @override
  String get tempSeverityLow => '体温偏低 — 注意观察';

  @override
  String get tempSeverityNormal => '体温正常';

  @override
  String get tempSeverityElevated => '略高 — 密切观察';

  @override
  String get tempSeverityFever => '发烧 — 请咨询医生';

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
  String get tempFeverWarning => '⚠️ 未满3个月的婴儿发烧，请务必咨询儿科医生。';

  @override
  String get tempLow => '偏低';

  @override
  String get tempNormal => '正常';

  @override
  String get tempElevated => '偏高';

  @override
  String get tempFever => '发烧';

  @override
  String get tempLatest => '最近一次体温';

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
      zero: '无记录',
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
    return '上次：$weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return '最近一次记录：$weight，日期 $date';
  }

  @override
  String get weightLatest => '最近体重';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount 期间变化';
  }

  @override
  String get tummyTimeLog => '记录俯卧时间';

  @override
  String get tummyTimeEdit => '编辑俯卧时间';

  @override
  String get tummyTimeStart => '开始时间';

  @override
  String get tummyTimeEnd => '结束时间';

  @override
  String get tummyTimeTip => '俯卧时间能增强宝宝颈部和肩部肌肉。';

  @override
  String get medicationLog => '记录用药';

  @override
  String get medicationEdit => '编辑用药';

  @override
  String get medicationName => '药品名称 *';

  @override
  String get medicationDose => '剂量';

  @override
  String get medicationUnit => '单位';

  @override
  String get medicationCommon => '常用药品';

  @override
  String get medicationWarning => '务必按照体重/年龄的用药说明服用。不要超过建议频次。';

  @override
  String get medicationNotes => '备注（可选）';

  @override
  String get medicationNotesHint => '例如：原因、反应…';

  @override
  String get doctorVisitLog => '看医生';

  @override
  String get doctorVisitEdit => '编辑就诊记录';

  @override
  String get doctorName => '医生/诊所名称';

  @override
  String get doctorVisitReason => '就诊原因';

  @override
  String get doctorVisitMeasurements => '测量数据（可选）';

  @override
  String get doctorVisitNotes => '备注';

  @override
  String get doctorVisitNotesHint => '例如：接种的疫苗、医生建议…';

  @override
  String get measurementWeightKg => '体重（公斤）';

  @override
  String get measurementWeightLbs => '体重（磅）';

  @override
  String get measurementHeightCm => '身高/身长（厘米）';

  @override
  String get measurementHeadCm => '头围（厘米）';

  @override
  String get dailyNoteLog => '每日笔记';

  @override
  String get dailyNoteEdit => '编辑笔记';

  @override
  String get dailyNoteTitle => '标题（可选）';

  @override
  String get dailyNoteText => '笔记';

  @override
  String get dailyNoteHint => '今天发生了什么？第一次翻身？早上闹情绪？';

  @override
  String get dailyNoteTags => '快捷标签';

  @override
  String get pumpingLog => '记录吸奶';

  @override
  String get pumpingEdit => '编辑吸奶记录';

  @override
  String get pumpingLeft => '左侧乳房（毫升）';

  @override
  String get pumpingRight => '右侧乳房（毫升）';

  @override
  String get pumpingTotal => '总吸奶量';

  @override
  String get pumpingDuration => '时长（分钟）';

  @override
  String get pumpingStored => '储存/冷冻';

  @override
  String get pumpingNotes => '备注（可选）';

  @override
  String get pumpingSessionTitle => '吸奶';

  @override
  String pumpingTotalMl(int ml) {
    return '总计 $ml 毫升';
  }

  @override
  String get bathLog => '记录洗澡';

  @override
  String get bathEdit => '编辑洗澡记录';

  @override
  String get bathType => '洗澡类型';

  @override
  String get bathTypeSponge => '海绵擦浴';

  @override
  String get bathTypeTub => '盆浴';

  @override
  String get bathTypeShower => '淋浴';

  @override
  String get bathNotes => '备注（可选）';

  @override
  String get bathProducts => '使用产品（可选）';

  @override
  String get vaccineTitle => '疫苗接种';

  @override
  String get vaccineTabGiven => '已完成';

  @override
  String get vaccineTabSchedule => '接种计划';

  @override
  String get vaccineLog => '记录疫苗';

  @override
  String get vaccineEdit => '编辑疫苗记录';

  @override
  String get vaccineName => '疫苗名称';

  @override
  String get vaccineBrand => '品牌/厂商（可选）';

  @override
  String get vaccineDate => '接种日期';

  @override
  String get vaccineDose => '剂次数（可选）';

  @override
  String get vaccineSite => '接种部位（可选）';

  @override
  String get vaccineNotes => '备注/反应';

  @override
  String vaccineDue(String age) {
    return '$age 时接种';
  }

  @override
  String get vaccineGiven => '已接种';

  @override
  String get vaccineNoGiven => '尚未记录任何疫苗。';

  @override
  String get vaccineMarkGiven => '标记为已接种';

  @override
  String get whoChartTitle => 'WHO 生长曲线图';

  @override
  String get whoWeightForAge => '年龄别体重';

  @override
  String get whoHeightForAge => '年龄别身长/身高';

  @override
  String get whoHeadForAge => '年龄别头围';

  @override
  String get whoGenderBoy => '男孩';

  @override
  String get whoGenderGirl => '女孩';

  @override
  String get whoNoData => '尚未记录任何测量数据。\n从某天的记录中记录体重即可查看曲线图。';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => '您的宝宝';

  @override
  String whoAgeMonths(int n) {
    return '$n个月';
  }

  @override
  String get whoNoBirthDate => '请在个人资料中设置宝宝的出生日期，以查看基于年龄的图表。';

  @override
  String get notifTitle => '提醒';

  @override
  String get notifFeedingReminder => '喂奶提醒';

  @override
  String notifFeedingReminderDesc(int hours) {
    return '如果 $hours 小时内没有喂奶记录，提醒我';
  }

  @override
  String get notifDiaperReminder => '尿布提醒';

  @override
  String notifDiaperReminderDesc(int hours) {
    return '如果 $hours 小时内没有尿布记录，提醒我';
  }

  @override
  String get notifMedicationReminder => '用药提醒';

  @override
  String get notifEnabled => '通知已启用';

  @override
  String get notifDisabled => '通知已禁用';

  @override
  String get notifPermissionRequired => '请在设备设置中开启通知。';

  @override
  String get exportTitle => '导出与备份';

  @override
  String get exportJson => '导出备份';

  @override
  String get exportJsonDesc => '所有数据和照片打包为一个 .zip 文件';

  @override
  String get exportPdf => '导出为 PDF';

  @override
  String get exportPdfDesc => '适合给儿科医生看的可读摘要';

  @override
  String get importJson => '恢复备份';

  @override
  String get importJsonDesc => '从 .zip 备份(或旧版 .json 导出)恢复';

  @override
  String get importDialogTitle => '导入数据？';

  @override
  String get importDialogBody => '合并会将文件中的条目添加到您现有的数据中。全部替换会先删除您现有的数据。';

  @override
  String get importMerge => '合并';

  @override
  String get importReplaceAll => '全部替换';

  @override
  String get importSuccess => '导入完成';

  @override
  String get importInvalidFile => '这似乎不是 Baby Tracker 导出文件。';

  @override
  String get exportGoogleDrive => '备份到 Google Drive';

  @override
  String get exportGenerating => '正在生成报告...';

  @override
  String get milestoneTitle => '成长里程碑';

  @override
  String get milestoneTabAchieved => '已达成';

  @override
  String get milestoneTabUpcoming => '即将到来';

  @override
  String get milestoneCustomAdd => '自定义里程碑';

  @override
  String get milestoneDeleteTitle => '删除里程碑？';

  @override
  String get milestoneEdit => '编辑里程碑';

  @override
  String get milestoneAdd => '添加里程碑';

  @override
  String get milestoneName => '里程碑名称 *';

  @override
  String get milestoneDate => '达成日期';

  @override
  String get milestoneNotes => '备注（可选）';

  @override
  String get milestoneNotesHint => '值得记住的细节...';

  @override
  String get milestoneNoAchieved => '尚未记录任何里程碑。';

  @override
  String get milestoneAllDone => '所有预设里程碑都已达成！';

  @override
  String get milestoneFirstSmile => '第一次微笑';

  @override
  String get milestoneFirstLaugh => '第一次笑出声';

  @override
  String get milestoneFirstTooth => '第一颗牙';

  @override
  String get milestoneRolledBackTummy => '从仰卧翻到俯卧';

  @override
  String get milestoneRolledTummyBack => '从俯卧翻到仰卧';

  @override
  String get milestoneSatUnsupported => '无辅助坐起';

  @override
  String get milestoneStartedCrawling => '开始爬行';

  @override
  String get milestonePulledToStand => '扶站';

  @override
  String get milestoneFirstSteps => '迈出第一步';

  @override
  String get milestoneFirstWord => '说出第一个词';

  @override
  String get milestoneFirstSolidFood => '第一次吃固体食物';

  @override
  String get milestoneFirstHaircut => '第一次理发';

  @override
  String get milestoneSleptThroughNight => '睡整夜觉';

  @override
  String get milestoneWavedBye => '挥手再见';

  @override
  String get milestoneClappedHands => '拍手';

  @override
  String get milestoneFirstBirthday => '第一个生日';

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
  String get settingsTempUnit => '温度单位';

  @override
  String get settingsVolumeUnit => '奶量单位';

  @override
  String get settingsLanguage => '语言';

  @override
  String get settingsNotifications => '通知与提醒';

  @override
  String get settingsExport => '导出与备份';

  @override
  String get settingsTips => '使用技巧';

  @override
  String get tipSwitchBabies => '切换宝宝';

  @override
  String get tipSwitchBabiesDesc => '点击顶部的宝宝头像即可切换或添加宝宝资料。';

  @override
  String get tipSwipeDelete => '左滑删除';

  @override
  String get tipSwipeDeleteDesc => '适用于日期卡片和单条记录。';

  @override
  String get tipTapToEdit => '点击任意记录即可编辑';

  @override
  String get tipMultipleFeeds => '记录多次喂奶';

  @override
  String get tipMultipleFeedsDesc => '在喂奶表单中，点击“再添加一次喂奶”可一次性记录亲喂和奶瓶喂。';

  @override
  String get tipExportData => '导出数据';

  @override
  String get tipExportDataDesc => '使用首页的分享图标,将所有数据和照片备份到一个文件中。';

  @override
  String get babiesTitle => '宝宝';

  @override
  String get addBaby => '添加宝宝';

  @override
  String get editProfile => '编辑资料';

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
  String get cannotDeleteOnlyProfile => '无法删除唯一的宝宝资料。';

  @override
  String deleteProfileTitle(String name) {
    return '删除 $name？';
  }

  @override
  String get deleteProfileContent => '该宝宝的所有数据将被永久删除。';

  @override
  String get graphsTitle => '图表';

  @override
  String get graphsTabDaily => '每日';

  @override
  String get graphsTabGrowth => '生长';

  @override
  String get graphsTabHealth => '健康';

  @override
  String get graphsTabWho => 'WHO 曲线';

  @override
  String get graphsTotalFeeds => '总喂奶次数';

  @override
  String get graphsAvgPerDay => '日均';

  @override
  String get graphsTotalDiapers => '尿布次数';

  @override
  String get graphsTotalMilk => '奶量总计';

  @override
  String get graphsTotalSleep => '睡眠总计';

  @override
  String get graphsAvgSleep => '日均睡眠';

  @override
  String get graphsFeedsPerDay => '每日喂奶次数';

  @override
  String get graphsDiapersPerDay => '每日尿布次数';

  @override
  String get graphsMilkPerDay => '每日奶量（毫升）';

  @override
  String get graphsMilkPerDayMl => '每日奶量(ml)';

  @override
  String get graphsMilkPerDayOz => '每日奶量(oz)';

  @override
  String get graphsSleepPerDay => '每日睡眠（小时）';

  @override
  String get graphsWeightOverTime => '体重变化趋势';

  @override
  String get graphsTempOverTime => '体温变化趋势';

  @override
  String graphsMaxLabel(String value) {
    return '最大：$value';
  }

  @override
  String graphsMinLabel(String value) {
    return '最小：$value';
  }

  @override
  String get graphsNoWeightData => '暂无体重记录。\n从每天的记录中记录体重。';

  @override
  String get graphsNoTempData => '暂无体温记录。\n从每天的记录中记录体温。';

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
      zero: '新生儿',
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
      zero: '不满1个月',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years岁$months个月';
  }

  @override
  String medicationLabel(String name) {
    return '用药：$name';
  }

  @override
  String get doctorVisitDefaultReason => '就诊';

  @override
  String doctorVisitLabel(String reason) {
    return '看医生 — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 笔记';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return '医生：$doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => '未记录医生';

  @override
  String get summaryPoosLabel => '便';

  @override
  String get summaryPeesLabel => '尿';

  @override
  String get summaryMilkLabel => '奶 ml';

  @override
  String get summaryMilkLabelMl => '奶量 ml';

  @override
  String get summaryMilkLabelOz => '奶量 oz';

  @override
  String get summaryBreastLabel => '亲喂分钟';

  @override
  String get summarySleepLabel => '睡眠';

  @override
  String get settingsOledMode => 'OLED（纯黑）';

  @override
  String get settingsOledModeDesc => '使用纯黑背景以节省 OLED 屏幕电量';

  @override
  String get settingsImmersiveMode => '沉浸模式';

  @override
  String get settingsImmersiveModeDesc => '隐藏系统状态栏和导航栏';

  @override
  String get navVaccinationsEntry => '疫苗接种';

  @override
  String get whoChartsEntry => 'WHO 生长曲线图';

  @override
  String get medicationEditTitle => '编辑用药';

  @override
  String get medicationLogTitle => '记录用药';

  @override
  String get medicationYourCourses => '你的疗程';

  @override
  String get medicationManageCourses => '管理疗程';

  @override
  String get medicationNameRequired => '药品名称 *';

  @override
  String get medicationDosageWarning => '请始终按体重/年龄用药,不要超过建议的次数。';

  @override
  String get medicationNotesOptional => '备注(可选)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 分钟前',
      one: '1 分钟前',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 小时前',
      one: '1 小时前',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 天前',
      one: '1 天前',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return '上次用药 $ago';
  }

  @override
  String get medicationNeverGiven => '尚未用药';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '今天 $count 次',
      one: '今天 1 次',
      zero: '今天未用药',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return '下一次用药需在上一次之后 $hours 小时';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return '已达到该疗程每天 $max 次的上限';
  }

  @override
  String get medicationEditCourse => '编辑疗程';

  @override
  String get medicationNewCourse => '新疗程';

  @override
  String get medicationReasonOptional => '原因(可选)';

  @override
  String get medicationIntervalHoursOptional => '间隔(小时,可选)';

  @override
  String get medicationMaxPerDayOptional => '每天最多次数(可选)';

  @override
  String get medicationRemindNextDose => '到下一次用药时间时提醒我';

  @override
  String medicationEndCourseTitle(String name) {
    return '结束 $name?';
  }

  @override
  String get medicationEndCoursePrompt => '效果如何?';

  @override
  String get medicationDeleteCourseTitle => '删除此疗程?';

  @override
  String get medicationResultWorked => '有效';

  @override
  String get medicationResultPartlyWorked => '部分有效';

  @override
  String get medicationResultDidntWork => '无效';

  @override
  String get medicationResultSideEffects => '有副作用';

  @override
  String get medicationResultNone => '未评价';

  @override
  String get medicationsTitle => '用药';

  @override
  String medicationActiveTab(int count) {
    return '进行中($count)';
  }

  @override
  String medicationPastTab(int count) {
    return '已结束($count)';
  }

  @override
  String get medicationNoActiveCourses => '没有进行中的疗程。\n点 + 开始一个。';

  @override
  String get medicationNoPastCourses => '还没有已结束的疗程。';

  @override
  String medicationTimesGiven(int count) {
    return '已用 $count 次';
  }

  @override
  String medicationLastGivenShort(String date) {
    return '上次:$date';
  }

  @override
  String medicationNextDueShort(String time) {
    return '下次 $time';
  }

  @override
  String get medicationEndCourse => '结束疗程';

  @override
  String feedLastSideHint(String side) {
    return '上次:$side';
  }

  @override
  String get feedSideLeft => '左侧';

  @override
  String get feedSideRight => '右侧';

  @override
  String get feedSideBoth => '两侧';

  @override
  String get feedSideLeftMinutes => '左侧(分钟)';

  @override
  String get feedSideRightMinutes => '右侧(分钟)';

  @override
  String get timeAgoJustNow => '刚刚';

  @override
  String get timeUntilOverdue => '已超时';

  @override
  String timeUntilMinutes(int count) {
    return '$count 分钟后';
  }

  @override
  String timeUntilHours(int count) {
    return '$count 小时后';
  }

  @override
  String timeUntilDays(int count) {
    return '$count 天后';
  }

  @override
  String get timerDiscardTitle => '放弃此计时?';

  @override
  String get timerDiscard => '放弃';

  @override
  String timerFeedingRunning(String side) {
    return '喂奶中 · $side';
  }

  @override
  String get timerSleepRunning => '睡眠计时中';

  @override
  String get timerSwitchSide => '换边';

  @override
  String get timerStop => '停止';

  @override
  String get sinceLastFeed => '上次喂奶';

  @override
  String get sinceLastDiaper => '上次换尿布';

  @override
  String get sinceAwake => '醒着';

  @override
  String get sinceAsleep => '睡着';

  @override
  String nextDoseDue(String name) {
    return '该用 $name 了';
  }

  @override
  String get weighConditionNaked => '光着身子';

  @override
  String get weighConditionDiaper => '只穿尿布';

  @override
  String get weighConditionLightClothes => '穿薄衣服';

  @override
  String get weighConditionDressed => '穿着衣服';

  @override
  String get weighCondition => '称重时穿着';

  @override
  String get growthMeasurementsOptional => '其他测量(可选)';

  @override
  String get growthHeightCm => '身高(cm)';

  @override
  String get growthHeadCm => '头围(cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return '上次称重时为「$condition」——差异可能不只是因为生长';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm cm';
  }

  @override
  String growthHeadValue(String cm) {
    return '头围 $cm cm';
  }

  @override
  String get growthHeightOverTime => '身高变化';

  @override
  String get growthHeadOverTime => '头围变化';

  @override
  String get graphsRecentWeighIns => '最近称重';

  @override
  String get solidsAmountFewSpoons => '几勺';

  @override
  String get solidsAmountHalf => '半份';

  @override
  String get solidsAmountFull => '一整份';

  @override
  String get solidsAmountTaste => '只尝了尝';

  @override
  String get solidsReactionMild => '轻微反应';

  @override
  String get solidsReactionAllergic => '过敏反应';

  @override
  String get solidsReactionNone => '无反应';

  @override
  String get solidsEditTitle => '编辑辅食';

  @override
  String get solidsLogTitle => '记录辅食';

  @override
  String get solidsFoodsLabel => '食物';

  @override
  String get solidsAddFoodHint => '添加食物';

  @override
  String get solidsAmount => '份量';

  @override
  String get solidsLiked => '喜欢吗?';

  @override
  String get solidsReaction => '反应';

  @override
  String get solidsNotesOptional => '备注(可选)';

  @override
  String get foodsTitle => '已尝试的食物';

  @override
  String get foodsEmpty => '还没有记录辅食。';

  @override
  String get foodsAllergensNotYet => '尚未尝试的常见过敏原';

  @override
  String foodsTriedCount(int count) {
    return '已尝试 $count 种食物';
  }

  @override
  String foodsFirstTried(String date) {
    return '首次:$date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count 次';
  }

  @override
  String get entryTypeSolids => '辅食';

  @override
  String get feedAmountOz => '奶量(oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return '上次喂奶 $interval 后提醒我';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return '上次换尿布 $interval 后提醒我';
  }

  @override
  String notifIntervalEvery(String interval) {
    return '每 $interval';
  }

  @override
  String get notifIntervalTitle => '提醒间隔';

  @override
  String get notifIntervalHours => '小时';

  @override
  String get notifIntervalMinutes => '分钟';

  @override
  String notifIntervalTooShort(int minutes) {
    return '至少 $minutes 分钟';
  }

  @override
  String get settingsFeeding => '喂养';

  @override
  String get settingsTrackBottles => '记录奶瓶';

  @override
  String get settingsTrackBottlesDesc => '选择使用的奶瓶,以及冲调量和喝下的量';

  @override
  String get bottlesTitle => '我的奶瓶';

  @override
  String get bottlesEmpty => '还没有奶瓶。\n添加你使用的奶瓶,记录喂奶时即可选择。';

  @override
  String get bottleAdd => '添加奶瓶';

  @override
  String get bottleEdit => '编辑奶瓶';

  @override
  String get bottleLabel => '标签 / 编号(如 #3)';

  @override
  String get bottleBrand => '品牌 / 类型(可选)';

  @override
  String get bottleCapacity => '容量(可选)';

  @override
  String get bottleNipple => '奶嘴尺寸 / 流量(可选)';

  @override
  String get bottleMaterial => '材质';

  @override
  String get bottleRetired => '已停用';

  @override
  String get bottleRetire => '停用';

  @override
  String get bottleUnretire => '重新使用';

  @override
  String bottleDeleteTitle(String name) {
    return '删除 $name?';
  }

  @override
  String get bottleDeleteBody => '以前的喂奶记录会保留奶量,但不再显示此奶瓶。如果想从列表中隐藏但保留记录,请改用「停用」。';

  @override
  String get feedPrepared => '冲调量';

  @override
  String get feedDrank => '喝下';

  @override
  String feedLeftover(String amount) {
    return '剩余 $amount';
  }

  @override
  String get feedDrankMoreThanPrepared => '比冲调的还多?';

  @override
  String get feedWhichBottle => '哪个奶瓶?';

  @override
  String get feedNoBottlesYet => '还没有奶瓶 — 请在 设置 → 我的奶瓶 中添加。';

  @override
  String get photoPrivacyTitle => '你的照片只保存在这部手机上';

  @override
  String get photoPrivacyBody => '照片只保存在本设备上的这个应用中。应用没有联网权限,除非你自己导出备份,否则不会上传或分享任何内容。\n\n第一次拍照时,Android 可能会请求相机权限。';

  @override
  String get photoPrivacyContinue => '继续';

  @override
  String get photoTakePhoto => '拍照';

  @override
  String get photoChooseFromGallery => '从相册选择';

  @override
  String get photoCaption => '说明';

  @override
  String get photoCompare => '第一张与最新';

  @override
  String get photoAddOtherDay => '为其他日期添加';

  @override
  String get photoEmpty => '还没有照片。\n每天拍一张,看着宝宝长大。';

  @override
  String get photoToday => '今日照片';

  @override
  String get photoAddToday => '添加今日照片';

  @override
  String get photoReplace => '替换';

  @override
  String get photoDeleteTitle => '删除这张照片?';

  @override
  String get ageBeforeBirth => '出生前';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '出生 $count 天',
      one: '出生 1 天',
      zero: '出生当天',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months 个月 $days 天';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years 岁 $months 个月';
  }

  @override
  String get navMemories => '回忆';

  @override
  String get memoriesTabPhotos => '照片';

  @override
  String get milestoneNoAchievedHint => '点击「即将到来」记录预设的里程碑,\n或使用下方按钮添加自定义里程碑。';

  @override
  String get skinTitle => '皮肤问题';

  @override
  String get skinNew => '新的皮肤问题';

  @override
  String get skinEdit => '编辑皮肤问题';

  @override
  String skinTabActive(int count) {
    return '进行中($count)';
  }

  @override
  String skinTabHealed(int count) {
    return '已痊愈($count)';
  }

  @override
  String get skinEmptyActive => '没有正在跟踪的皮肤问题。\n点 + 开始——每天可以添加一张照片,让医生看到变化。';

  @override
  String get skinEmptyHealed => '还没有痊愈的。';

  @override
  String get skinUpdateDue => '今天需更新';

  @override
  String skinSince(String date) {
    return '自 $date 起';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 天',
      one: '1 天',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return '$date 痊愈';
  }

  @override
  String skinReminderAt(String time) {
    return '每天 $time 提醒';
  }

  @override
  String get skinSeverityTrend => '严重程度变化';

  @override
  String get skinNoUpdates => '还没有记录。添加今天的记录以开始时间线。';

  @override
  String get skinExportPdf => '导出给医生(PDF)';

  @override
  String get skinMarkHealed => '标记为已痊愈';

  @override
  String get skinReopen => '重新标记为进行中';

  @override
  String get skinUpdateToday => '添加今天的记录';

  @override
  String get skinEditToday => '编辑今天的记录';

  @override
  String skinDeleteTitle(String name) {
    return '删除 $name 及其所有记录?';
  }

  @override
  String get skinDeleteUpdateTitle => '删除这条记录?';

  @override
  String skinTreatmentValue(String treatment) {
    return '治疗:$treatment';
  }

  @override
  String get skinName => '问题 *';

  @override
  String get skinBodyArea => '在身体哪个部位?';

  @override
  String get skinBegan => '开始于';

  @override
  String get skinRemindDaily => '每天提醒我更新';

  @override
  String get skinReminderTime => '提醒时间';

  @override
  String get skinUpdateTitle => '皮肤记录';

  @override
  String get skinSeverity => '看起来怎么样?';

  @override
  String get skinSeverity0 => '0 · 已消退';

  @override
  String get skinSeverity1 => '1 · 轻微';

  @override
  String get skinSeverity2 => '2 · 中度';

  @override
  String get skinSeverity3 => '3 · 严重';

  @override
  String get skinSeverity4 => '4 · 非常严重';

  @override
  String get skinTreatment => '治疗(可选)';

  @override
  String get skinTreatmentHint => '如 保湿霜、1% 氢化可的松';

  @override
  String get skinAddPhoto => '添加照片';

  @override
  String get skinCardNone => '逐日跟踪皮疹、湿疹等皮肤问题,并附照片给医生看';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 项需要今天更新',
      one: '1 项需要今天更新',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => '正在准备备份…';

  @override
  String get backupFailed => '无法创建备份。';

  @override
  String get backupSavedTo => '备份已保存到:';

  @override
  String get backupShareSubject => 'Baby Tracker 备份';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '包含 $count 张照片。',
      one: '包含 1 张照片。',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => '喂奶';

  @override
  String get widgetStopFeed => '结束喂奶';

  @override
  String get widgetDiaper => '尿布';

  @override
  String get widgetSleep => '睡眠';

  @override
  String get widgetWakeUp => '醒了';

  @override
  String widgetFeedingFor(String duration) {
    return '已喂 $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return '喂奶 $ago';
  }

  @override
  String get widgetNoFeedsYet => '暂无喂奶记录';

  @override
  String widgetChangedAgo(String ago) {
    return '换尿布 $ago';
  }

  @override
  String get widgetNoDiapersYet => '暂无尿布记录';

  @override
  String widgetAsleepFor(String duration) {
    return '已睡 $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return '醒来 $ago';
  }

  @override
  String get widgetStopSleepFirst => '请先停止睡眠计时';

  @override
  String get widgetStopFeedFirst => '请先停止喂奶计时';

  @override
  String quickAddTitle(String name) {
    return '为 $name 添加';
  }

  @override
  String get quickAddOpenApp => '打开应用';

  @override
  String get foodPeanut => '花生';

  @override
  String get foodEgg => '鸡蛋';

  @override
  String get foodDairy => '乳制品';

  @override
  String get foodWheat => '小麦';

  @override
  String get foodSoy => '大豆';

  @override
  String get foodFish => '鱼';

  @override
  String get foodShellfish => '贝类和虾蟹';

  @override
  String get foodTreeNuts => '坚果';

  @override
  String get foodSesame => '芝麻';

  @override
  String get foodBanana => '香蕉';

  @override
  String get foodAvocado => '牛油果';

  @override
  String get foodSweetPotato => '红薯';

  @override
  String get foodRiceCereal => '米粉';

  @override
  String get foodOatmeal => '燕麦粥';

  @override
  String get foodCarrot => '胡萝卜';

  @override
  String get foodApple => '苹果';

  @override
  String get foodPea => '豌豆';

  @override
  String get symptomRash => '皮疹';

  @override
  String get symptomHives => '荨麻疹';

  @override
  String get symptomVomiting => '呕吐';

  @override
  String get symptomDiarrhea => '腹泻';

  @override
  String get symptomSwelling => '肿胀';

  @override
  String get doseUnitDrops => '滴';

  @override
  String get doseUnitTablets => '片';

  @override
  String get bottleMaterialPlastic => '塑料';

  @override
  String get bottleMaterialGlass => '玻璃';

  @override
  String get bottleMaterialSilicone => '硅胶';

  @override
  String get bottleMaterialSteel => '不锈钢';

  @override
  String get visitReasonRoutine => '常规体检';

  @override
  String get visitReasonSick => '看病';

  @override
  String get visitReasonVaccination => '接种疫苗';

  @override
  String get visitReasonSpecialist => '专科';

  @override
  String get visitReasonFollowUp => '复诊';

  @override
  String get visitReasonOther => '其他';

  @override
  String get pooColourPale => '浅色';

  @override
  String get noteTagHappyDay => '开心的一天';

  @override
  String get noteTagSleptWell => '睡得好';

  @override
  String get noteTagFussy => '闹脾气';

  @override
  String get noteTagNotWell => '不太舒服';

  @override
  String get noteTagFirstTime => '第一次!';

  @override
  String get noteTagTeething => '长牙';

  @override
  String get noteTagGrowthSpurt => '猛长期';

  @override
  String get noteTagMilestone => '里程碑';

  @override
  String get tummyTimeNotesHint => '如 很开心、有点闹……';

  @override
  String get skinSuggestEczema => '湿疹';

  @override
  String get skinSuggestDiaperRash => '尿布疹';

  @override
  String get skinSuggestCradleCap => '乳痂';

  @override
  String get skinSuggestBabyAcne => '新生儿痤疮';

  @override
  String get skinSuggestHeatRash => '痱子';

  @override
  String get skinSuggestDrySkin => '皮肤干燥';

  @override
  String get bodyFace => '脸';

  @override
  String get bodyScalp => '头皮';

  @override
  String get bodyNeck => '脖子';

  @override
  String get bodyChest => '胸部';

  @override
  String get bodyBack => '背部';

  @override
  String get bodyArms => '手臂';

  @override
  String get bodyHands => '手';

  @override
  String get bodyDiaperArea => '尿布区';

  @override
  String get bodyLegs => '腿';

  @override
  String get bodyFeet => '脚';

  @override
  String get medSuggestGripeWater => '驱风水(Gripe water)';

  @override
  String get medSuggestVitaminD => '维生素 D';

  @override
  String get medSuggestIronDrops => '铁剂滴剂';

  @override
  String get medSuggestAntibiotic => '抗生素';

  @override
  String get medSuggestProbiotic => '益生菌';

  @override
  String vaccinePageTitle(String name) {
    return '$name — 疫苗接种';
  }

  @override
  String get vaccineDeleteTitle => '删除这条疫苗记录?';

  @override
  String get vaccineSiteHint => '如 左大腿';

  @override
  String get vaccineNotesHint => '如 低烧、烦躁、无反应……';

  @override
  String get vaccineNoGivenHint => '使用 + 按钮,或在「接种计划」标签页点击「标记为已接种」。';

  @override
  String get vaccineAgeBirth => '出生时';

  @override
  String vaccineAgeMonths(String range) {
    return '$range 月龄';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range 月龄(每年)';
  }

  @override
  String get whoTabHeight => '身高';

  @override
  String get whoTabHead => '头围';

  @override
  String get whoChartFor => '曲线:';

  @override
  String whoAgeRange(String title) {
    return '$title(0–24 个月)';
  }

  @override
  String get whoNoDataPoints => '暂无数据。记录测量值即可在曲线上看到宝宝。';

  @override
  String get whoLatestMeasurement => '最近一次测量';

  @override
  String whoApproxPercentile(String value) {
    return '大约百分位:$value';
  }

  @override
  String whoBetween(String low, String high) {
    return '介于 $low 和 $high 之间';
  }

  @override
  String whoMonthsOld(String months) {
    return '$months 个月大';
  }

  @override
  String get whoDisclaimer => '这些曲线仅供参考,请务必由儿科医生解读。';

  @override
  String get whoMedian => 'P50(中位数)';

  @override
  String get notifChannelName => 'Baby Tracker 提醒';

  @override
  String get notifChannelDesc => '喂奶、尿布、用药和皮肤检查提醒';

  @override
  String get notifFeedTitle => '该喂奶了!';

  @override
  String notifFeedBody(String interval) {
    return '过去 $interval 没有喂奶记录。';
  }

  @override
  String get notifDiaperTitle => '检查尿布!';

  @override
  String notifDiaperBody(String interval) {
    return '过去 $interval 没有换尿布记录。';
  }

  @override
  String notifDoseTitle(String name) {
    return '该用药了:$name';
  }

  @override
  String notifDoseBody(String name) {
    return '到了 $name 下一次用药的时间。';
  }

  @override
  String notifSkinTitle(String name) {
    return '皮肤检查:$name';
  }

  @override
  String get notifSkinBody => '添加今天的记录(愿意的话也拍张照片)。';

  @override
  String get timerFeedingNotif => '喂奶计时中';

  @override
  String intervalMinutes(String m) {
    return '$m 分钟';
  }

  @override
  String intervalHours(String h) {
    return '$h 小时';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h 小时 $m 分钟';
  }

  @override
  String get settingsRtlActive => '已启用从右到左布局';

  @override
  String get measurementHeightIn => '身长 / 身高(英寸)';

  @override
  String get measurementHeadIn => '头围(英寸)';

  @override
  String get growthHeightIn => '身高(英寸)';

  @override
  String get growthHeadIn => '头围(英寸)';

  @override
  String growthHeightValueIn(String value) {
    return '$value 英寸';
  }

  @override
  String growthHeadValueIn(String value) {
    return '头围 $value 英寸';
  }

  @override
  String get settingsLengthUnitNote => '长度单位跟随体重单位(kg 用 cm,lbs 用英寸)';

  @override
  String get formulaStoreBrand => '超市自有品牌';
}
