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
  String get navMilestones => '成長の節目';

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
  String get actionAddDay => '日を追加';

  @override
  String get actionLog => '記録';

  @override
  String get cannotUndo => 'この操作は元に戻せません。';

  @override
  String get noData => 'データなし';

  @override
  String get noNotes => 'メモなし';

  @override
  String get noDetails => '詳細なし';

  @override
  String get optional => '（任意）';

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
      other: '$count件',
      one: '1件',
      zero: 'イベントなし',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'この日を削除しますか？';

  @override
  String deleteDayContent(String date) {
    return '$date とそのすべての記録を削除しますか？この操作は元に戻せません。';
  }

  @override
  String get rashRecorded => 'おむつかぶれを記録しました';

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
  String get entryTypeTummyTime => 'うつぶせ遊び';

  @override
  String get entryTypeMedication => '薬';

  @override
  String get entryTypeDoctorVisit => '受診';

  @override
  String get entryTypeNote => '日々のメモ / 日記';

  @override
  String get entryTypePumping => '搾乳セッション';

  @override
  String get entryTypeBath => '沐浴・入浴';

  @override
  String get diaperPeePoo => 'おむつ — おしっこ + うんち';

  @override
  String get diaperPee => 'おむつ — おしっこ';

  @override
  String get diaperPoo => 'おむつ — うんち';

  @override
  String get diaperChange => 'おむつ替え';

  @override
  String get editDiaper => 'おむつ記録を編集';

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
  String get diaperConsistency => '便の状態';

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
  String get consistencyLoose => '泥状・液状';

  @override
  String get consistencyLooseHint => '経過観察';

  @override
  String get consistencyWatery => '水様';

  @override
  String get consistencyWateryHint => '下痢';

  @override
  String get warnConstipation => '便秘の兆候 — 注意深く観察してください';

  @override
  String get warnDiarrhea => '下痢の兆候 — 注意深く観察してください';

  @override
  String get pooColourLabel => '色（タップして選択）';

  @override
  String get pooColourAbnormal => '⚠️ 異常（薄い色）';

  @override
  String get pooColourNormal => '✅ 正常';

  @override
  String pooColourSelected(String label) {
    return '選択：$label';
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
  String get rashPresentHint => '赤み、刺激、おむつかぶれ';

  @override
  String get rashCreamUsed => 'おむつかぶれ用クリームを使用';

  @override
  String get rashCreamCustomLabel => 'クリーム / 軟膏の名前';

  @override
  String get rashFollowUpTitle => '⚠️ おむつかぶれの経過観察';

  @override
  String get rashFollowUpQuestion => '前回のおむつでかぶれを記録しました。改善しましたか？';

  @override
  String get rashImproved => 'はい、改善した';

  @override
  String get rashNoChange => '変化なし / 悪化した';

  @override
  String get addFeeding => '授乳を追加';

  @override
  String get editFeeding => '授乳を編集';

  @override
  String feedLabel(int number) {
    return '授乳 $number';
  }

  @override
  String get feedModeBottle => '哺乳瓶';

  @override
  String get feedModeSuckle => '直接授乳';

  @override
  String get feedAmountMl => '量（ml）';

  @override
  String get feedType => '種類';

  @override
  String get feedBreastMilk => '母乳';

  @override
  String get feedFormula => 'ミルク';

  @override
  String get feedFormulaBrand => 'ミルクのブランド';

  @override
  String get feedFormulaBrandCustom => 'ミルクのブランド名';

  @override
  String get feedDurationMinutes => '時間（分）';

  @override
  String get addAnotherFeed => '別の授乳を追加';

  @override
  String get bottleBreastMilk => '哺乳瓶 — 母乳';

  @override
  String get bottleFormula => '哺乳瓶 — ミルク';

  @override
  String get breastfeedingSuckle => '直接授乳（母乳）';

  @override
  String get logSleep => '睡眠を記録';

  @override
  String get editSleep => '睡眠を編集';

  @override
  String get sleepStart => '睡眠開始';

  @override
  String get sleepWakeUp => '起床';

  @override
  String sleepDuration(String duration) {
    return '時間：$duration';
  }

  @override
  String get sleepInvalidTimes => '無効な時間';

  @override
  String get sleepWrapsNextDay => '（終了が翌日にまたぐ）';

  @override
  String get sleepNotes => 'メモ（任意）';

  @override
  String get sleepNotesHint => '例：落ち着かない、短く目を覚ます…';

  @override
  String get sleepNoNotes => 'メモなし';

  @override
  String sleepHoursShort(int h, int m) {
    return '$h時間 $m分';
  }

  @override
  String get logTemperature => '体温を記録';

  @override
  String get editTemperature => '体温を編集';

  @override
  String get temperatureLabel => '体温';

  @override
  String get tempSeverityLow => '低体温 — 経過観察';

  @override
  String get tempSeverityNormal => '平熱';

  @override
  String get tempSeverityElevated => '微熱 — 注意深く観察';

  @override
  String get tempSeverityFever => '発熱 — 医師に相談してください';

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
  String get tempFeverWarning => '⚠️ 生後3ヶ月未満の乳児の発熱については、必ず小児科医に相談してください。';

  @override
  String get tempLow => '低め';

  @override
  String get tempNormal => '平熱';

  @override
  String get tempElevated => '高め';

  @override
  String get tempFever => '発熱';

  @override
  String get tempLatest => '最新の体温';

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
      zero: '0日',
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
    return '前回：$weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return '最終記録：$weight（$date）';
  }

  @override
  String get weightLatest => '最新の体重';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount（期間中の変化）';
  }

  @override
  String get tummyTimeLog => 'うつぶせ遊びを記録';

  @override
  String get tummyTimeEdit => 'うつぶせ遊びを編集';

  @override
  String get tummyTimeStart => '開始時刻';

  @override
  String get tummyTimeEnd => '終了時刻';

  @override
  String get tummyTimeTip => 'うつぶせ遊びは首や肩の筋肉を強化します。';

  @override
  String get medicationLog => '薬を記録';

  @override
  String get medicationEdit => '薬を編集';

  @override
  String get medicationName => '薬の名前 *';

  @override
  String get medicationDose => '用量';

  @override
  String get medicationUnit => '単位';

  @override
  String get medicationCommon => 'よく使う薬';

  @override
  String get medicationWarning => '体重/年齢に応じた用量指示に従ってください。推奨頻度を超えないようにしてください。';

  @override
  String get medicationNotes => 'メモ（任意）';

  @override
  String get medicationNotesHint => '例：理由、反応…';

  @override
  String get doctorVisitLog => '受診記録';

  @override
  String get doctorVisitEdit => '受診記録を編集';

  @override
  String get doctorName => '医師 / クリニック名';

  @override
  String get doctorVisitReason => '受診理由';

  @override
  String get doctorVisitMeasurements => '測定値（任意）';

  @override
  String get doctorVisitNotes => 'メモ';

  @override
  String get doctorVisitNotesHint => '例：接種したワクチン、医師の推奨事項…';

  @override
  String get measurementWeightKg => '体重（kg）';

  @override
  String get measurementWeightLbs => '体重（lbs）';

  @override
  String get measurementHeightCm => '身長（cm）';

  @override
  String get measurementHeadCm => '頭囲（cm）';

  @override
  String get dailyNoteLog => '日々のメモ';

  @override
  String get dailyNoteEdit => 'メモを編集';

  @override
  String get dailyNoteTitle => 'タイトル（任意）';

  @override
  String get dailyNoteText => 'メモ';

  @override
  String get dailyNoteHint => '今日はどんな出来事がありましたか？初めての寝返り？ぐずった朝？';

  @override
  String get dailyNoteTags => 'クイックタグ';

  @override
  String get pumpingLog => '搾乳を記録';

  @override
  String get pumpingEdit => '搾乳を編集';

  @override
  String get pumpingLeft => '左胸（ml）';

  @override
  String get pumpingRight => '右胸（ml）';

  @override
  String get pumpingTotal => '搾乳量合計';

  @override
  String get pumpingDuration => '時間（分）';

  @override
  String get pumpingStored => '保存 / 冷凍';

  @override
  String get pumpingNotes => 'メモ（任意）';

  @override
  String get pumpingSessionTitle => '搾乳';

  @override
  String pumpingTotalMl(int ml) {
    return '合計 $ml ml';
  }

  @override
  String get bathLog => '入浴を記録';

  @override
  String get bathEdit => '入浴を編集';

  @override
  String get bathType => '入浴の種類';

  @override
  String get bathTypeSponge => 'スポンジ浴';

  @override
  String get bathTypeTub => '浴槽浴';

  @override
  String get bathTypeShower => 'シャワー';

  @override
  String get bathNotes => 'メモ（任意）';

  @override
  String get bathProducts => '使用した製品（任意）';

  @override
  String get vaccineTitle => '予防接種';

  @override
  String get vaccineTabGiven => '接種済み';

  @override
  String get vaccineTabSchedule => 'スケジュール';

  @override
  String get vaccineLog => 'ワクチンを記録';

  @override
  String get vaccineEdit => 'ワクチンを編集';

  @override
  String get vaccineName => 'ワクチン名';

  @override
  String get vaccineBrand => 'ブランド / 製造元（任意）';

  @override
  String get vaccineDate => '接種日';

  @override
  String get vaccineDose => '接種回数（任意）';

  @override
  String get vaccineSite => '接種部位（任意）';

  @override
  String get vaccineNotes => 'メモ / 反応';

  @override
  String vaccineDue(String age) {
    return '$age に予定';
  }

  @override
  String get vaccineGiven => '接種済み';

  @override
  String get vaccineNoGiven => 'まだワクチン記録はありません。';

  @override
  String get vaccineMarkGiven => '接種済みにする';

  @override
  String get whoChartTitle => 'WHO成長曲線';

  @override
  String get whoWeightForAge => '年齢別体重';

  @override
  String get whoHeightForAge => '年齢別身長';

  @override
  String get whoHeadForAge => '年齢別頭囲';

  @override
  String get whoGenderBoy => '男の子';

  @override
  String get whoGenderGirl => '女の子';

  @override
  String get whoNoData => 'まだ測定データがありません。\nいずれかの日の記録から体重を入力するとグラフが表示されます。';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'あなたの赤ちゃん';

  @override
  String whoAgeMonths(int n) {
    return '$nか月';
  }

  @override
  String get whoNoBirthDate => '年齢別のグラフを表示するには、プロフィールで赤ちゃんの生年月日を設定してください。';

  @override
  String get notifTitle => 'リマインダー';

  @override
  String get notifFeedingReminder => '授乳リマインダー';

  @override
  String notifFeedingReminderDesc(int hours) {
    return '$hours時間以内に授乳記録がない場合に通知する';
  }

  @override
  String get notifDiaperReminder => 'おむつリマインダー';

  @override
  String notifDiaperReminderDesc(int hours) {
    return '$hours時間以内におむつ記録がない場合に通知する';
  }

  @override
  String get notifMedicationReminder => '服薬リマインダー';

  @override
  String get notifEnabled => '通知が有効です';

  @override
  String get notifDisabled => '通知が無効です';

  @override
  String get notifPermissionRequired => '端末の設定で通知を有効にしてください。';

  @override
  String get exportTitle => 'エクスポートとバックアップ';

  @override
  String get exportJson => 'JSONとしてエクスポート';

  @override
  String get exportPdf => 'PDFとしてエクスポート';

  @override
  String get exportPdfDesc => '小児科医向けの読みやすいサマリー';

  @override
  String get exportGoogleDrive => 'Google Driveにバックアップ';

  @override
  String get exportGenerating => 'レポートを生成中...';

  @override
  String get milestoneTitle => '成長の節目';

  @override
  String get milestoneTabAchieved => '達成済み';

  @override
  String get milestoneTabUpcoming => 'これから';

  @override
  String get milestoneCustomAdd => 'カスタム項目';

  @override
  String get milestoneDeleteTitle => 'この項目を削除しますか？';

  @override
  String get milestoneEdit => '項目を編集';

  @override
  String get milestoneAdd => '項目を追加';

  @override
  String get milestoneName => '項目名 *';

  @override
  String get milestoneDate => '達成日';

  @override
  String get milestoneNotes => 'メモ（任意）';

  @override
  String get milestoneNotesHint => '覚えておきたい詳細…';

  @override
  String get milestoneNoAchieved => 'まだ記録がありません。';

  @override
  String get milestoneAllDone => 'すべての初期項目を達成しました！🎉';

  @override
  String get milestoneFirstSmile => '😊 初めての笑顔';

  @override
  String get milestoneFirstLaugh => '😂 初めての大笑い';

  @override
  String get milestoneFirstTooth => '🦷 初めての歯';

  @override
  String get milestoneRolledBackTummy => '🔄 仰向けからうつ伏せに寝返り';

  @override
  String get milestoneRolledTummyBack => '🔄 うつ伏せから仰向けに寝返り';

  @override
  String get milestoneSatUnsupported => '🧸 支えなしでおすわり';

  @override
  String get milestoneStartedCrawling => '🐣 はいはいを始めた';

  @override
  String get milestonePulledToStand => '🏋️ つかまり立ち';

  @override
  String get milestoneFirstSteps => '👣 初めての一歩';

  @override
  String get milestoneFirstWord => '💬 初めての言葉';

  @override
  String get milestoneFirstSolidFood => '🥣 初めての離乳食';

  @override
  String get milestoneFirstHaircut => '✂️ 初めての散髪';

  @override
  String get milestoneSleptThroughNight => '🌙 夜通し眠った';

  @override
  String get milestoneWavedBye => '👋 バイバイした';

  @override
  String get milestoneClappedHands => '👏 拍手した';

  @override
  String get milestoneFirstBirthday => '🎂 初めての誕生日';

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
  String get settingsTempUnit => '温度の単位';

  @override
  String get settingsLanguage => '言語';

  @override
  String get settingsNotifications => '通知とリマインダー';

  @override
  String get settingsExport => 'エクスポートとバックアップ';

  @override
  String get settingsTips => 'ヒント';

  @override
  String get tipSwitchBabies => '赤ちゃんを切り替える';

  @override
  String get tipSwitchBabiesDesc => '上部の赤ちゃんアバターをタップすると、切り替えやプロフィール追加ができます。';

  @override
  String get tipSwipeDelete => '左にスワイプして削除';

  @override
  String get tipSwipeDeleteDesc => '日付タイルと個別の記録に使用できます。';

  @override
  String get tipTapToEdit => '任意の記録をタップして編集';

  @override
  String get tipMultipleFeeds => '複数回の授乳を記録';

  @override
  String get tipMultipleFeedsDesc => '授乳フォームで「別の授乳を追加」をタップすると、直接授乳と哺乳瓶を一度に記録できます。';

  @override
  String get tipExportData => 'データをエクスポート';

  @override
  String get tipExportDataDesc => 'ホーム画面の共有アイコンを使って、すべてのデータをJSONでエクスポートできます。';

  @override
  String get babiesTitle => '赤ちゃん';

  @override
  String get addBaby => '赤ちゃんを追加';

  @override
  String get editProfile => 'プロフィールを編集';

  @override
  String get babyNameRequired => '名前 *';

  @override
  String get babyDobOptional => '生年月日（任意）';

  @override
  String babyBornOn(String date) {
    return '$date 生まれ';
  }

  @override
  String get genderUnknown => '不明';

  @override
  String get genderBoy => '男の子';

  @override
  String get genderGirl => '女の子';

  @override
  String get cannotDeleteOnlyProfile => '唯一の赤ちゃんプロフィールは削除できません。';

  @override
  String deleteProfileTitle(String name) {
    return '$name を削除しますか？';
  }

  @override
  String get deleteProfileContent => 'この赤ちゃんのすべてのデータが完全に削除されます。';

  @override
  String get graphsTitle => 'グラフ';

  @override
  String get graphsTabDaily => '日次';

  @override
  String get graphsTabGrowth => '成長';

  @override
  String get graphsTabHealth => '健康';

  @override
  String get graphsTabWho => 'WHO曲線';

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
  String get graphsMilkPerDay => '1日あたりのミルク量（ml）';

  @override
  String get graphsSleepPerDay => '1日あたりの睡眠時間（時間）';

  @override
  String get graphsWeightOverTime => '体重の推移';

  @override
  String get graphsTempOverTime => '体温の推移';

  @override
  String graphsMaxLabel(String value) {
    return '最大：$value';
  }

  @override
  String graphsMinLabel(String value) {
    return '最小：$value';
  }

  @override
  String get graphsNoWeightData => 'まだ体重の記録がありません。\nいずれかの日の記録から体重を入力してください。';

  @override
  String get graphsNoTempData => 'まだ体温の記録がありません。\nいずれかの日の記録から体温を入力してください。';

  @override
  String get timeLabel => '時刻';

  @override
  String get noColourRecorded => '色の記録なし';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count日',
      one: '1日',
      zero: '新生児',
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
      zero: '1ヶ月未満',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years歳$monthsヶ月';
  }
}
