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
  String get exportJson => '导出为 JSON';

  @override
  String get exportPdf => '导出为 PDF';

  @override
  String get exportPdfDesc => '适合给儿科医生看的可读摘要';

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
  String get milestoneAllDone => '所有预设里程碑都已达成！🎉';

  @override
  String get milestoneFirstSmile => '😊 第一次微笑';

  @override
  String get milestoneFirstLaugh => '😂 第一次笑出声';

  @override
  String get milestoneFirstTooth => '🦷 第一颗牙';

  @override
  String get milestoneRolledBackTummy => '🔄 从仰卧翻到俯卧';

  @override
  String get milestoneRolledTummyBack => '🔄 从俯卧翻到仰卧';

  @override
  String get milestoneSatUnsupported => '🧸 无辅助坐起';

  @override
  String get milestoneStartedCrawling => '🐣 开始爬行';

  @override
  String get milestonePulledToStand => '🏋️ 扶站';

  @override
  String get milestoneFirstSteps => '👣 迈出第一步';

  @override
  String get milestoneFirstWord => '💬 说出第一个词';

  @override
  String get milestoneFirstSolidFood => '🥣 第一次吃固体食物';

  @override
  String get milestoneFirstHaircut => '✂️ 第一次理发';

  @override
  String get milestoneSleptThroughNight => '🌙 睡整夜觉';

  @override
  String get milestoneWavedBye => '👋 挥手再见';

  @override
  String get milestoneClappedHands => '👏 拍手';

  @override
  String get milestoneFirstBirthday => '🎂 第一个生日';

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
  String get tipExportDataDesc => '使用首页的分享图标将所有数据导出为 JSON 格式。';

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
}
