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
  String get exportJson => 'バックアップを書き出す';

  @override
  String get exportJsonDesc => 'すべてのデータと写真を1つの .zip ファイルに';

  @override
  String get exportPdf => 'PDFとしてエクスポート';

  @override
  String get exportPdfDesc => '小児科医向けの読みやすいサマリー';

  @override
  String get importJson => 'バックアップから復元';

  @override
  String get importJsonDesc => '.zip バックアップ(または以前の .json 書き出し)から';

  @override
  String get importDialogTitle => 'データをインポートしますか?';

  @override
  String get importDialogBody => '「統合」はファイルの項目を既存のデータに追加します。「すべて置き換え」は先に既存のデータを削除します。';

  @override
  String get importMerge => '統合';

  @override
  String get importReplaceAll => 'すべて置き換え';

  @override
  String get importSuccess => 'インポートが完了しました';

  @override
  String get importInvalidFile => 'これはBaby Trackerのエクスポートファイルではないようです。';

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
  String get milestoneAllDone => 'すべての初期項目を達成しました！';

  @override
  String get milestoneFirstSmile => '初めての笑顔';

  @override
  String get milestoneFirstLaugh => '初めての大笑い';

  @override
  String get milestoneFirstTooth => '初めての歯';

  @override
  String get milestoneRolledBackTummy => '仰向けからうつ伏せに寝返り';

  @override
  String get milestoneRolledTummyBack => 'うつ伏せから仰向けに寝返り';

  @override
  String get milestoneSatUnsupported => '支えなしでおすわり';

  @override
  String get milestoneStartedCrawling => 'はいはいを始めた';

  @override
  String get milestonePulledToStand => 'つかまり立ち';

  @override
  String get milestoneFirstSteps => '初めての一歩';

  @override
  String get milestoneFirstWord => '初めての言葉';

  @override
  String get milestoneFirstSolidFood => '初めての離乳食';

  @override
  String get milestoneFirstHaircut => '初めての散髪';

  @override
  String get milestoneSleptThroughNight => '夜通し眠った';

  @override
  String get milestoneWavedBye => 'バイバイした';

  @override
  String get milestoneClappedHands => '拍手した';

  @override
  String get milestoneFirstBirthday => '初めての誕生日';

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
  String get settingsVolumeUnit => 'ミルクの量の単位';

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
  String get tipExportDataDesc => 'ホームの共有アイコンから、すべてのデータと写真を1つのファイルにバックアップできます。';

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
  String get graphsMilkPerDayMl => '1日のミルク量(ml)';

  @override
  String get graphsMilkPerDayOz => '1日のミルク量(oz)';

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

  @override
  String medicationLabel(String name) {
    return '薬: $name';
  }

  @override
  String get doctorVisitDefaultReason => '受診';

  @override
  String doctorVisitLabel(String reason) {
    return '受診 — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 メモ';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return '医師: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => '医師の記録なし';

  @override
  String get summaryPoosLabel => 'うんち';

  @override
  String get summaryPeesLabel => 'おしっこ';

  @override
  String get summaryMilkLabel => 'ミルクml';

  @override
  String get summaryMilkLabelMl => 'ミルク ml';

  @override
  String get summaryMilkLabelOz => 'ミルク oz';

  @override
  String get summaryBreastLabel => '授乳分';

  @override
  String get summarySleepLabel => '睡眠';

  @override
  String get settingsOledMode => 'OLED（純黒）';

  @override
  String get settingsOledModeDesc => 'OLED画面のバッテリーを節約するため純黒の背景を使用します';

  @override
  String get settingsImmersiveMode => 'イマーシブモード';

  @override
  String get settingsImmersiveModeDesc => 'システムのステータスバーとナビゲーションバーを非表示にします';

  @override
  String get navVaccinationsEntry => '予防接種';

  @override
  String get whoChartsEntry => 'WHO成長曲線';

  @override
  String get medicationEditTitle => '薬を編集';

  @override
  String get medicationLogTitle => '薬を記録';

  @override
  String get medicationYourCourses => '服薬中のコース';

  @override
  String get medicationManageCourses => 'コースを管理';

  @override
  String get medicationNameRequired => '薬の名前 *';

  @override
  String get medicationDosageWarning => '必ず体重・月齢に合った用量を守ってください。推奨回数を超えないでください。';

  @override
  String get medicationNotesOptional => 'メモ(任意)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count分前',
      one: '1分前',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count時間前',
      one: '1時間前',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count日前',
      one: '1日前',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return '前回 $ago';
  }

  @override
  String get medicationNeverGiven => 'まだ飲ませていません';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '今日$count回',
      one: '今日1回',
      zero: '今日はまだ0回',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return '次の服用は前回から$hours時間あけてください';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'このコースの1日$max回の上限に達しています';
  }

  @override
  String get medicationEditCourse => 'コースを編集';

  @override
  String get medicationNewCourse => '新しいコース';

  @override
  String get medicationReasonOptional => '理由(任意)';

  @override
  String get medicationIntervalHoursOptional => '服用間隔(時間・任意)';

  @override
  String get medicationMaxPerDayOptional => '1日の最大回数(任意)';

  @override
  String get medicationRemindNextDose => '次の服用時間に通知する';

  @override
  String medicationEndCourseTitle(String name) {
    return '$nameを終了しますか?';
  }

  @override
  String get medicationEndCoursePrompt => '効果はどうでしたか?';

  @override
  String get medicationDeleteCourseTitle => 'このコースを削除しますか?';

  @override
  String get medicationResultWorked => '効いた';

  @override
  String get medicationResultPartlyWorked => '少し効いた';

  @override
  String get medicationResultDidntWork => '効かなかった';

  @override
  String get medicationResultSideEffects => '副作用あり';

  @override
  String get medicationResultNone => '未評価';

  @override
  String get medicationsTitle => '薬';

  @override
  String medicationActiveTab(int count) {
    return '服薬中($count)';
  }

  @override
  String medicationPastTab(int count) {
    return '終了($count)';
  }

  @override
  String get medicationNoActiveCourses => '服薬中のコースはありません。\n+ ボタンで追加できます。';

  @override
  String get medicationNoPastCourses => '終了したコースはまだありません。';

  @override
  String medicationTimesGiven(int count) {
    return '$count回服用';
  }

  @override
  String medicationLastGivenShort(String date) {
    return '前回: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return '次回 $time';
  }

  @override
  String get medicationEndCourse => 'コースを終了';

  @override
  String feedLastSideHint(String side) {
    return '前回: $side';
  }

  @override
  String get feedSideLeft => '左';

  @override
  String get feedSideRight => '右';

  @override
  String get feedSideBoth => '両方';

  @override
  String get feedSideLeftMinutes => '左(分)';

  @override
  String get feedSideRightMinutes => '右(分)';

  @override
  String get timeAgoJustNow => 'たった今';

  @override
  String get timeUntilOverdue => '時間超過';

  @override
  String timeUntilMinutes(int count) {
    return 'あと$count分';
  }

  @override
  String timeUntilHours(int count) {
    return 'あと$count時間';
  }

  @override
  String timeUntilDays(int count) {
    return 'あと$count日';
  }

  @override
  String get timerDiscardTitle => 'このタイマーを破棄しますか?';

  @override
  String get timerDiscard => '破棄';

  @override
  String timerFeedingRunning(String side) {
    return '授乳中 · $side';
  }

  @override
  String get timerSleepRunning => '睡眠タイマー作動中';

  @override
  String get timerSwitchSide => '左右を切り替え';

  @override
  String get timerStop => '停止';

  @override
  String get sinceLastFeed => '前回の授乳';

  @override
  String get sinceLastDiaper => '前回のおむつ';

  @override
  String get sinceAwake => '起きている';

  @override
  String get sinceAsleep => '寝ている';

  @override
  String nextDoseDue(String name) {
    return '$nameの時間';
  }

  @override
  String get weighConditionNaked => '裸';

  @override
  String get weighConditionDiaper => 'おむつのみ';

  @override
  String get weighConditionLightClothes => '薄着';

  @override
  String get weighConditionDressed => '服を着たまま';

  @override
  String get weighCondition => '計測時の服装';

  @override
  String get growthMeasurementsOptional => 'その他の計測(任意)';

  @override
  String get growthHeightCm => '身長(cm)';

  @override
  String get growthHeadCm => '頭囲(cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return '前回は「$condition」で計測 — 差は成長だけによるものではないかもしれません';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm cm';
  }

  @override
  String growthHeadValue(String cm) {
    return '頭囲 $cm cm';
  }

  @override
  String get growthHeightOverTime => '身長の推移';

  @override
  String get growthHeadOverTime => '頭囲の推移';

  @override
  String get graphsRecentWeighIns => '最近の体重測定';

  @override
  String get solidsAmountFewSpoons => '数さじ';

  @override
  String get solidsAmountHalf => '半分';

  @override
  String get solidsAmountFull => '全部';

  @override
  String get solidsAmountTaste => '味見程度';

  @override
  String get solidsReactionMild => '軽い反応';

  @override
  String get solidsReactionAllergic => 'アレルギー反応';

  @override
  String get solidsReactionNone => '反応なし';

  @override
  String get solidsEditTitle => '離乳食を編集';

  @override
  String get solidsLogTitle => '離乳食を記録';

  @override
  String get solidsFoodsLabel => '食材';

  @override
  String get solidsAddFoodHint => '食材を追加';

  @override
  String get solidsAmount => '量';

  @override
  String get solidsLiked => '気に入った?';

  @override
  String get solidsReaction => '反応';

  @override
  String get solidsNotesOptional => 'メモ(任意)';

  @override
  String get foodsTitle => '食べた食材';

  @override
  String get foodsEmpty => '離乳食の記録はまだありません。';

  @override
  String get foodsAllergensNotYet => 'まだ試していない主なアレルゲン';

  @override
  String foodsTriedCount(int count) {
    return '$count種類を試しました';
  }

  @override
  String foodsFirstTried(String date) {
    return '初回: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count回';
  }

  @override
  String get entryTypeSolids => '離乳食';

  @override
  String get feedAmountOz => '量(oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return '前回の授乳から$interval後に通知';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return '前回のおむつ替えから$interval後に通知';
  }

  @override
  String notifIntervalEvery(String interval) {
    return '$intervalごと';
  }

  @override
  String get notifIntervalTitle => '通知の間隔';

  @override
  String get notifIntervalHours => '時間';

  @override
  String get notifIntervalMinutes => '分';

  @override
  String notifIntervalTooShort(int minutes) {
    return '$minutes分以上';
  }

  @override
  String get settingsFeeding => '授乳';

  @override
  String get settingsTrackBottles => '哺乳瓶を記録';

  @override
  String get settingsTrackBottlesDesc => '使った哺乳瓶と、作った量・飲んだ量を記録します';

  @override
  String get bottlesTitle => 'マイ哺乳瓶';

  @override
  String get bottlesEmpty => '哺乳瓶はまだありません。\n使っている哺乳瓶を登録すると、授乳の記録時に選べます。';

  @override
  String get bottleAdd => '哺乳瓶を追加';

  @override
  String get bottleEdit => '哺乳瓶を編集';

  @override
  String get bottleLabel => 'ラベル/番号(例: #3)';

  @override
  String get bottleBrand => 'メーカー/種類(任意)';

  @override
  String get bottleCapacity => '容量(任意)';

  @override
  String get bottleNipple => '乳首のサイズ/流量(任意)';

  @override
  String get bottleMaterial => '素材';

  @override
  String get bottleRetired => '使用終了';

  @override
  String get bottleRetire => '使用を終了';

  @override
  String get bottleUnretire => '再び使う';

  @override
  String bottleDeleteTitle(String name) {
    return '$nameを削除しますか?';
  }

  @override
  String get bottleDeleteBody => '過去の授乳記録の量はそのまま残りますが、この哺乳瓶は表示されなくなります。履歴を残したまま一覧から隠すには「使用を終了」を使ってください。';

  @override
  String get feedPrepared => '作った量';

  @override
  String get feedDrank => '飲んだ量';

  @override
  String feedLeftover(String amount) {
    return '$amount残り';
  }

  @override
  String get feedDrankMoreThanPrepared => '作った量より多い?';

  @override
  String get feedWhichBottle => 'どの哺乳瓶?';

  @override
  String get feedNoBottlesYet => '哺乳瓶がまだありません — 設定 → マイ哺乳瓶 から追加してください。';

  @override
  String get photoPrivacyTitle => '写真はこのスマホの中だけに保存されます';

  @override
  String get photoPrivacyBody => '写真はこの端末のこのアプリ内にのみ保存されます。アプリはインターネットに接続しないため、自分でバックアップを書き出さない限り、アップロードや共有は一切されません。\n\n初めて写真を撮るとき、Android がカメラへのアクセス許可を求めることがあります。';

  @override
  String get photoPrivacyContinue => '続ける';

  @override
  String get photoTakePhoto => '写真を撮る';

  @override
  String get photoChooseFromGallery => 'ギャラリーから選ぶ';

  @override
  String get photoCaption => 'キャプション';

  @override
  String get photoCompare => '最初と最新';

  @override
  String get photoAddOtherDay => '別の日に追加';

  @override
  String get photoEmpty => '写真はまだありません。\n毎日1枚撮って、成長を見守りましょう。';

  @override
  String get photoToday => '今日の写真';

  @override
  String get photoAddToday => '今日の写真を追加';

  @override
  String get photoReplace => '差し替え';

  @override
  String get photoDeleteTitle => 'この写真を削除しますか?';

  @override
  String get ageBeforeBirth => '誕生前';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '生後$count日',
      one: '生後1日',
      zero: '誕生日',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$monthsか月$days日';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years歳$monthsか月';
  }

  @override
  String get navMemories => '思い出';

  @override
  String get memoriesTabPhotos => '写真';

  @override
  String get milestoneNoAchievedHint => '「これから」をタップして用意された節目を記録するか、\n下のボタンでオリジナルの節目を追加できます。';

  @override
  String get skinTitle => '肌トラブル';

  @override
  String get skinNew => '新しい肌トラブル';

  @override
  String get skinEdit => '肌トラブルを編集';

  @override
  String skinTabActive(int count) {
    return '経過観察中($count)';
  }

  @override
  String skinTabHealed(int count) {
    return '治った($count)';
  }

  @override
  String get skinEmptyActive => '記録中の肌トラブルはありません。\n+ をタップして始めましょう。毎日写真を追加すれば、変化を医師に見せられます。';

  @override
  String get skinEmptyHealed => '治ったものはまだありません。';

  @override
  String get skinUpdateDue => '今日の記録が必要';

  @override
  String skinSince(String date) {
    return '$dateから';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count日',
      one: '1日',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return '$dateに治癒';
  }

  @override
  String skinReminderAt(String time) {
    return '毎日$timeに通知';
  }

  @override
  String get skinSeverityTrend => '重症度の推移';

  @override
  String get skinNoUpdates => 'まだ記録がありません。今日の記録を追加してタイムラインを始めましょう。';

  @override
  String get skinExportPdf => '医師用に書き出す(PDF)';

  @override
  String get skinMarkHealed => '治ったことにする';

  @override
  String get skinReopen => '経過観察に戻す';

  @override
  String get skinUpdateToday => '今日の記録を追加';

  @override
  String get skinEditToday => '今日の記録を編集';

  @override
  String skinDeleteTitle(String name) {
    return '$nameとすべての記録を削除しますか?';
  }

  @override
  String get skinDeleteUpdateTitle => 'この記録を削除しますか?';

  @override
  String skinTreatmentValue(String treatment) {
    return '治療: $treatment';
  }

  @override
  String get skinName => '症状 *';

  @override
  String get skinBodyArea => '体のどこ?';

  @override
  String get skinBegan => '開始日';

  @override
  String get skinRemindDaily => '毎日記録するよう通知する';

  @override
  String get skinReminderTime => '通知時刻';

  @override
  String get skinUpdateTitle => '肌の記録';

  @override
  String get skinSeverity => '今日の様子は?';

  @override
  String get skinSeverity0 => '0 · きれい';

  @override
  String get skinSeverity1 => '1 · 軽い';

  @override
  String get skinSeverity2 => '2 · 中程度';

  @override
  String get skinSeverity3 => '3 · ひどい';

  @override
  String get skinSeverity4 => '4 · とてもひどい';

  @override
  String get skinTreatment => '治療(任意)';

  @override
  String get skinTreatmentHint => '例: 保湿剤、ヒドロコルチゾン1%';

  @override
  String get skinAddPhoto => '写真を追加';

  @override
  String get skinCardNone => '湿疹やかぶれなどの肌トラブルを、医師に見せる写真付きで毎日記録できます';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件が今日の記録待ち',
      one: '1件が今日の記録待ち',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'バックアップを準備中…';

  @override
  String get backupFailed => 'バックアップを作成できませんでした。';

  @override
  String get backupSavedTo => 'バックアップの保存先:';

  @override
  String get backupShareSubject => 'Baby Tracker バックアップ';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '写真$count枚を含みます。',
      one: '写真1枚を含みます。',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => '授乳';

  @override
  String get widgetStopFeed => '授乳を終了';

  @override
  String get widgetDiaper => 'おむつ';

  @override
  String get widgetSleep => '睡眠';

  @override
  String get widgetWakeUp => '起きた';

  @override
  String widgetFeedingFor(String duration) {
    return '授乳中 $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return '授乳 $ago';
  }

  @override
  String get widgetNoFeedsYet => '授乳の記録なし';

  @override
  String widgetChangedAgo(String ago) {
    return '交換 $ago';
  }

  @override
  String get widgetNoDiapersYet => 'おむつの記録なし';

  @override
  String widgetAsleepFor(String duration) {
    return '睡眠中 $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return '起床 $ago';
  }

  @override
  String get widgetStopSleepFirst => '先に睡眠タイマーを止めてください';

  @override
  String get widgetStopFeedFirst => '先に授乳タイマーを止めてください';

  @override
  String quickAddTitle(String name) {
    return '$nameの記録を追加';
  }

  @override
  String get quickAddOpenApp => 'アプリを開く';

  @override
  String get foodPeanut => 'ピーナッツ';

  @override
  String get foodEgg => '卵';

  @override
  String get foodDairy => '乳製品';

  @override
  String get foodWheat => '小麦';

  @override
  String get foodSoy => '大豆';

  @override
  String get foodFish => '魚';

  @override
  String get foodShellfish => '甲殻類・貝類';

  @override
  String get foodTreeNuts => 'ナッツ類';

  @override
  String get foodSesame => 'ごま';

  @override
  String get foodBanana => 'バナナ';

  @override
  String get foodAvocado => 'アボカド';

  @override
  String get foodSweetPotato => 'さつまいも';

  @override
  String get foodRiceCereal => 'おかゆ';

  @override
  String get foodOatmeal => 'オートミール';

  @override
  String get foodCarrot => 'にんじん';

  @override
  String get foodApple => 'りんご';

  @override
  String get foodPea => 'グリーンピース';

  @override
  String get symptomRash => '発疹';

  @override
  String get symptomHives => 'じんましん';

  @override
  String get symptomVomiting => '嘔吐';

  @override
  String get symptomDiarrhea => '下痢';

  @override
  String get symptomSwelling => '腫れ';

  @override
  String get doseUnitDrops => '滴';

  @override
  String get doseUnitTablets => '錠';

  @override
  String get bottleMaterialPlastic => 'プラスチック';

  @override
  String get bottleMaterialGlass => 'ガラス';

  @override
  String get bottleMaterialSilicone => 'シリコン';

  @override
  String get bottleMaterialSteel => 'ステンレス';

  @override
  String get visitReasonRoutine => '定期健診';

  @override
  String get visitReasonSick => '病気';

  @override
  String get visitReasonVaccination => '予防接種';

  @override
  String get visitReasonSpecialist => '専門医';

  @override
  String get visitReasonFollowUp => '再診';

  @override
  String get visitReasonOther => 'その他';

  @override
  String get pooColourPale => '白っぽい';

  @override
  String get noteTagHappyDay => 'ごきげんな日';

  @override
  String get noteTagSleptWell => 'よく眠れた';

  @override
  String get noteTagFussy => 'ぐずり気味';

  @override
  String get noteTagNotWell => '体調が悪い';

  @override
  String get noteTagFirstTime => '初めて!';

  @override
  String get noteTagTeething => '歯が生えてきた';

  @override
  String get noteTagGrowthSpurt => '急成長期';

  @override
  String get noteTagMilestone => '成長の節目';

  @override
  String get tummyTimeNotesHint => '例: 楽しそう、ぐずった…';

  @override
  String get skinSuggestEczema => '湿疹';

  @override
  String get skinSuggestDiaperRash => 'おむつかぶれ';

  @override
  String get skinSuggestCradleCap => '乳児脂漏性湿疹';

  @override
  String get skinSuggestBabyAcne => '新生児ニキビ';

  @override
  String get skinSuggestHeatRash => 'あせも';

  @override
  String get skinSuggestDrySkin => '乾燥肌';

  @override
  String get bodyFace => '顔';

  @override
  String get bodyScalp => '頭皮';

  @override
  String get bodyNeck => '首';

  @override
  String get bodyChest => '胸';

  @override
  String get bodyBack => '背中';

  @override
  String get bodyArms => '腕';

  @override
  String get bodyHands => '手';

  @override
  String get bodyDiaperArea => 'おむつの部分';

  @override
  String get bodyLegs => '脚';

  @override
  String get bodyFeet => '足';

  @override
  String get medSuggestGripeWater => 'グライプウォーター';

  @override
  String get medSuggestVitaminD => 'ビタミンD';

  @override
  String get medSuggestIronDrops => '鉄剤シロップ';

  @override
  String get medSuggestAntibiotic => '抗生物質';

  @override
  String get medSuggestProbiotic => '整腸剤(プロバイオティクス)';

  @override
  String vaccinePageTitle(String name) {
    return '$name — 予防接種';
  }

  @override
  String get vaccineDeleteTitle => '予防接種の記録を削除しますか?';

  @override
  String get vaccineSiteHint => '例: 左太もも';

  @override
  String get vaccineNotesHint => '例: 微熱、ぐずり、反応なし…';

  @override
  String get vaccineNoGivenHint => '+ ボタンを使うか、「スケジュール」タブで「接種済みにする」をタップしてください。';

  @override
  String get vaccineAgeBirth => '出生時';

  @override
  String vaccineAgeMonths(String range) {
    return '$rangeか月';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$rangeか月(毎年)';
  }

  @override
  String get whoTabHeight => '身長';

  @override
  String get whoTabHead => '頭囲';

  @override
  String get whoChartFor => '対象:';

  @override
  String whoAgeRange(String title) {
    return '$title(0〜24か月)';
  }

  @override
  String get whoNoDataPoints => 'まだデータがありません。計測を記録するとグラフに表示されます。';

  @override
  String get whoLatestMeasurement => '最新の計測';

  @override
  String whoApproxPercentile(String value) {
    return 'おおよそのパーセンタイル: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return '$low〜$high';
  }

  @override
  String whoMonthsOld(String months) {
    return '生後$monthsか月';
  }

  @override
  String get whoDisclaimer => 'このグラフは参考情報です。解釈は必ず小児科医に相談してください。';

  @override
  String get whoMedian => 'P50(中央値)';

  @override
  String get notifChannelName => 'Baby Tracker の通知';

  @override
  String get notifChannelDesc => '授乳・おむつ・薬・肌チェックのリマインダー';

  @override
  String get notifFeedTitle => '授乳の時間です!';

  @override
  String notifFeedBody(String interval) {
    return '直近$interval、授乳の記録がありません。';
  }

  @override
  String get notifDiaperTitle => 'おむつチェック!';

  @override
  String notifDiaperBody(String interval) {
    return '直近$interval、おむつ替えの記録がありません。';
  }

  @override
  String notifDoseTitle(String name) {
    return '服薬の時間: $name';
  }

  @override
  String notifDoseBody(String name) {
    return '$nameの次の服用時間です。';
  }

  @override
  String notifSkinTitle(String name) {
    return '肌チェック: $name';
  }

  @override
  String get notifSkinBody => '今日の記録を追加しましょう(写真もどうぞ)。';

  @override
  String get timerFeedingNotif => '授乳タイマー作動中';

  @override
  String intervalMinutes(String m) {
    return '$m分';
  }

  @override
  String intervalHours(String h) {
    return '$h時間';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h時間$m分';
  }

  @override
  String get settingsRtlActive => '右から左のレイアウトが有効';

  @override
  String get measurementHeightIn => '身長(インチ)';

  @override
  String get measurementHeadIn => '頭囲(インチ)';

  @override
  String get growthHeightIn => '身長(インチ)';

  @override
  String get growthHeadIn => '頭囲(インチ)';

  @override
  String growthHeightValueIn(String value) {
    return '$value インチ';
  }

  @override
  String growthHeadValueIn(String value) {
    return '頭囲 $value インチ';
  }

  @override
  String get settingsLengthUnitNote => '長さの単位は体重の単位に合わせます(kgならcm、lbsならインチ)';

  @override
  String get formulaStoreBrand => 'プライベートブランド';
}
