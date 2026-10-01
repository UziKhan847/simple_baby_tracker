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
  String get exportJsonDesc => 'バックアップ用の生データ';

  @override
  String get exportPdf => 'PDFとしてエクスポート';

  @override
  String get exportPdfDesc => '小児科医向けの読みやすいサマリー';

  @override
  String get importJson => 'JSONからインポート';

  @override
  String get importJsonDesc => 'バックアップファイルから復元';

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
  String get settingsVolumeUnit => 'Milk volume unit';

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
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

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
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

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
    return 'Awake since $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Stop the sleep timer first';

  @override
  String get widgetStopFeedFirst => 'Stop the feeding timer first';
}
