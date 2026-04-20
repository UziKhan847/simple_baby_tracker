// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'ベビートラッカー';

  @override
  String get navHome => 'ホーム';

  @override
  String get navGraphs => 'グラフ';

  @override
  String get navSettings => '設定';

  @override
  String get actionCancel => 'キャンセル';

  @override
  String get actionSave => '保存';

  @override
  String get actionUpdate => '更新';

  @override
  String get actionDelete => '削除';

  @override
  String get actionAdd => '追加';

  @override
  String get actionEdit => '編集';

  @override
  String get actionClose => '閉じる';

  @override
  String get actionExport => 'データをエクスポート';

  @override
  String get actionAddDay => '日付を追加';

  @override
  String get cannotUndo => 'この操作は元に戻せません';

  @override
  String get noData => 'データなし';

  @override
  String get homeTitle => 'トラッカー';

  @override
  String get feedsToday => '今日の授乳';

  @override
  String get diapersToday => '今日のおむつ';

  @override
  String get sleepToday => '今日の睡眠';

  @override
  String todayLabel(String date) {
    return '今日 — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件のイベント',
      one: '1件のイベント',
      zero: 'イベントなし',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'この日を削除しますか？';

  @override
  String deleteDayContent(String date) {
    return '$dateとすべての記録を削除しますか？この操作は元に戻せません';
  }

  @override
  String get noEntriesYet => 'まだ記録がありません';

  @override
  String get addEntry => '記録を追加';

  @override
  String get deleteEntryTitle => 'この記録を削除しますか？';

  @override
  String get entryTypeDiaper => 'おむつ替え';

  @override
  String get entryTypeFeeding => '授乳';

  @override
  String get entryTypeSleep => '睡眠';

  @override
  String get entryTypeTemperature => '体温';

  @override
  String get entryTypeWeight => '体重';

  @override
  String get diaperPeePoo => 'おむつ — おしっこ + うんち';

  @override
  String get diaperPee => 'おむつ — おしっこのみ';

  @override
  String get diaperPoo => 'おむつ — うんちのみ';

  @override
  String get diaperChange => 'おむつ替え';

  @override
  String get editDiaper => 'おむつを編集';

  @override
  String get diaperContents => '内容';

  @override
  String get diaperNone => 'なし';

  @override
  String get diaperPeeLabel => 'おしっこ';

  @override
  String get diaperPooLabel => 'うんち';

  @override
  String get diaperBoth => '両方';

  @override
  String get diaperConsistency => '形状';

  @override
  String get consistencyHard => '硬い / 粒状';

  @override
  String get consistencyHardHint => '便秘';

  @override
  String get consistencyFirm => 'かため';

  @override
  String get consistencyFirmHint => 'やや硬い';

  @override
  String get consistencyNormal => '普通';

  @override
  String get consistencyNormalHint => '健康的';

  @override
  String get consistencySoft => '柔らかい';

  @override
  String get consistencySoftHint => 'やや柔らかい';

  @override
  String get consistencyLoose => '泥状 / 半液体';

  @override
  String get consistencyLooseHint => '要観察';

  @override
  String get consistencyWatery => '水様';

  @override
  String get consistencyWateryHint => '下痢';

  @override
  String get warnConstipation => '便秘の兆候 — 注意深く観察';

  @override
  String get warnDiarrhea => '下痢の兆候 — 注意深く観察';

  @override
  String get pooColourLabel => '色 (タップして選択)';

  @override
  String get pooColourAbnormal => '⚠️ 異常 (青白い)';

  @override
  String get pooColourNormal => '✅ 正常';

  @override
  String pooColourSelected(String label) {
    return '選択: $label';
  }

  @override
  String get diaperSize => 'おむつのサイズ';

  @override
  String get diaperBrand => 'ブランド';

  @override
  String get diaperBrandCustomLabel => 'ブランド名';

  @override
  String get rashPresent => 'おむつかぶれあり';

  @override
  String get rashPresentHint => '発赤、刺激、おむつかぶれ';

  @override
  String get rashCreamUsed => 'クリームを使用';

  @override
  String get rashCreamCustomLabel => 'クリーム / 軟膏の名前';

  @override
  String get rashFollowUpTitle => '⚠️ かぶれの経過観察';

  @override
  String get rashFollowUpQuestion => '前回のおむつでかぶれが記録されました。改善しましたか？';

  @override
  String get rashImproved => 'はい、改善した';

  @override
  String get rashNoChange => '変化なし / 悪化した';

  @override
  String get rashRecorded => 'かぶれを記録しました';

  @override
  String get addFeeding => '授乳を追加';

  @override
  String get editFeeding => '授乳を編集';

  @override
  String feedLabel(int number) {
    return '$number回目の授乳';
  }

  @override
  String get feedModeBottle => '哺乳瓶';

  @override
  String get feedModeSuckle => '直接授乳';

  @override
  String get feedAmountMl => '量 (ml)';

  @override
  String get feedType => '種類';

  @override
  String get feedBreastMilk => '母乳';

  @override
  String get feedFormula => 'ミルク';

  @override
  String get feedFormulaBrand => 'ミルクのブランド';

  @override
  String get feedFormulaBrandCustom => 'ブランド名';

  @override
  String get feedDurationMinutes => '授乳時間 (分)';

  @override
  String get addAnotherFeed => '別の授乳を追加';

  @override
  String get bottleBreastMilk => '哺乳瓶 — 母乳';

  @override
  String get bottleFormula => '哺乳瓶 — ミルク';

  @override
  String get breastfeedingSuckle => '母乳授乳 (直接)';

  @override
  String get logSleep => '睡眠を記録';

  @override
  String get editSleep => '睡眠を編集';

  @override
  String get sleepStart => '寝た時間';

  @override
  String get sleepWakeUp => '起きた時間';

  @override
  String sleepDuration(String duration) {
    return '睡眠時間: $duration';
  }

  @override
  String get sleepInvalidTimes => '無効な時間';

  @override
  String get sleepWrapsNextDay => '(翌日にまたがる)';

  @override
  String get sleepNotes => 'メモ (任意)';

  @override
  String get sleepNotesHint => '例: 落ち着かない、短時間で目覚めた...';

  @override
  String get sleepNoNotes => 'メモなし';

  @override
  String sleepHoursShort(int h, int m) {
    return '$h時間$m分';
  }

  @override
  String get logTemperature => '体温を記録';

  @override
  String get editTemperature => '体温を編集';

  @override
  String get temperatureLabel => '体温';

  @override
  String get tempSeverityLow => '低体温 — 要観察';

  @override
  String get tempSeverityNormal => '正常体温';

  @override
  String get tempSeverityElevated => '微熱 — 注意深く観察';

  @override
  String get tempSeverityFever => '発熱 — 医師に相談';

  @override
  String get tempReference => '体温の目安';

  @override
  String get tempRefLow => '< 36.0 °C / 96.8 °F';

  @override
  String get tempRefNormal => '36.0 – 37.4 °C / 96.8 – 99.3 °F';

  @override
  String get tempRefElevated => '37.5 – 38.4 °C / 99.5 – 101.1 °F';

  @override
  String get tempRefFever => '≥ 38.5 °C / 101.3 °F';

  @override
  String get tempFeverWarning => '⚠️ 3か月未満の乳児の発熱時は必ず小児科医に相談してください';

  @override
  String get tempLow => '低め';

  @override
  String get tempNormal => '正常';

  @override
  String get tempElevated => '高め';

  @override
  String get tempFever => '発熱';

  @override
  String get tempLatest => '最近の体温';

  @override
  String get tempSummary => '体温サマリー';

  @override
  String get tempFeverThreshold => '発熱の閾値';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count日',
      one: '1日',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => '体重を記録';

  @override
  String get editWeight => '体重を編集';

  @override
  String get weightLabel => '体重';

  @override
  String weightGain(String amount) {
    return '+$amount 増加';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount 減少';
  }

  @override
  String weightPrevious(String weight) {
    return '前回: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return '最終記録: $weight ($date)';
  }

  @override
  String get weightLatest => '最近の体重';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount (期間内)';
  }

  @override
  String get settingsTitle => '設定';

  @override
  String get settingsAppearance => '外観';

  @override
  String get settingsDarkMode => 'ダークモード';

  @override
  String get settingsDarkActive => 'ダークテーマ有効';

  @override
  String get settingsLightActive => 'ライトテーマ有効';

  @override
  String get settingsUnits => '単位';

  @override
  String get settingsWeightUnit => '体重の単位';

  @override
  String get settingsTempUnit => '体温の単位';

  @override
  String get settingsLanguage => '言語';

  @override
  String get settingsTips => 'ヒント';

  @override
  String get tipSwitchBabies => '赤ちゃんを切り替える';

  @override
  String get tipSwitchBabiesDesc => '上部の赤ちゃんのアバターをタップして、赤ちゃんを切り替えたり追加したりできます';

  @override
  String get tipSwipeDelete => '左にスワイプして削除';

  @override
  String get tipSwipeDeleteDesc => '日付カードや個別の記録に適用されます';

  @override
  String get tipMultipleFeeds => '複数回の授乳を記録';

  @override
  String get tipMultipleFeedsDesc => '授乳フォームで「別の授乳を追加」をタップすると、直接授乳と哺乳瓶を一度に記録できます';

  @override
  String get tipExportData => 'データをエクスポート';

  @override
  String get tipExportDataDesc => 'ホームの共有アイコンを使用して、すべてのデータをJSONとしてエクスポートします';

  @override
  String get tipTapToEdit => '記録をタップして編集';

  @override
  String get babiesTitle => '赤ちゃん';

  @override
  String get addBaby => '赤ちゃんを追加';

  @override
  String get editProfile => 'プロフィールを編集';

  @override
  String get babyNameRequired => '名前 *';

  @override
  String get babyDobOptional => '生年月日 (任意)';

  @override
  String babyBornOn(String date) {
    return '$date 生まれ';
  }

  @override
  String get genderUnknown => '未回答';

  @override
  String get genderBoy => '男の子';

  @override
  String get genderGirl => '女の子';

  @override
  String get cannotDeleteOnlyProfile => '唯一の赤ちゃんプロフィールは削除できません';

  @override
  String deleteProfileTitle(String name) {
    return '$name を削除しますか？';
  }

  @override
  String get deleteProfileContent => 'この赤ちゃんのすべてのデータが完全に削除されます';

  @override
  String get graphsTitle => 'グラフ';

  @override
  String get graphsTabDaily => '日次';

  @override
  String get graphsTabGrowth => '成長';

  @override
  String get graphsTabHealth => '健康';

  @override
  String get graphsTotalFeeds => '総授乳回数';

  @override
  String get graphsAvgPerDay => '1日平均';

  @override
  String get graphsTotalDiapers => 'おむつ回数';

  @override
  String get graphsTotalMilk => '総ミルク量';

  @override
  String get graphsTotalSleep => '総睡眠時間';

  @override
  String get graphsAvgSleep => '1日平均睡眠';

  @override
  String get graphsFeedsPerDay => '1日あたりの授乳回数';

  @override
  String get graphsDiapersPerDay => '1日あたりのおむつ回数';

  @override
  String get graphsMilkPerDay => '1日あたりのミルク量 (ml)';

  @override
  String get graphsSleepPerDay => '1日あたりの睡眠時間 (時間)';

  @override
  String get graphsWeightOverTime => '体重の推移';

  @override
  String get graphsTempOverTime => '体温の推移';

  @override
  String graphsMaxLabel(String value) {
    return '最大: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return '最小: $value';
  }

  @override
  String get graphsNoWeightData => 'まだ体重の記録がありません\n日付の記録から体重を追加してください';

  @override
  String get graphsNoTempData => 'まだ体温の記録がありません\n日付から体温を記録してください';

  @override
  String get timeLabel => '時刻';

  @override
  String get noColourRecorded => '色の記録なし';

  @override
  String get noDetails => '詳細なし';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count日',
      one: '1日',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countヶ月',
      one: '1ヶ月',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years歳$monthsヶ月';
  }
}
