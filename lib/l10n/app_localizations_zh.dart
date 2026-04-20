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
  String get cannotUndo => '此操作无法撤销';

  @override
  String get noData => '无数据';

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
  String get rashRecorded => '已记录尿布疹';

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
  String get tipMultipleFeeds => '记录多次喂养';

  @override
  String get tipMultipleFeedsDesc => '在喂养表单中，点击“再添加一次喂养”可同时记录亲喂和奶瓶';

  @override
  String get tipExportData => '导出数据';

  @override
  String get tipExportDataDesc => '使用首页的分享图标将所有数据导出为JSON';

  @override
  String get tipTapToEdit => '点击任意记录即可编辑';

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
  String get noDetails => '无详情';

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
