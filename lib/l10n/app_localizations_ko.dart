// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '아기 기록장';

  @override
  String get navHome => '홈';

  @override
  String get navGraphs => '그래프';

  @override
  String get navSettings => '설정';

  @override
  String get actionCancel => '취소';

  @override
  String get actionSave => '저장';

  @override
  String get actionUpdate => '수정';

  @override
  String get actionDelete => '삭제';

  @override
  String get actionAdd => '추가';

  @override
  String get actionEdit => '편집';

  @override
  String get actionClose => '닫기';

  @override
  String get actionExport => '데이터 내보내기';

  @override
  String get actionAddDay => '날짜 추가';

  @override
  String get cannotUndo => '이 작업은 취소할 수 없습니다';

  @override
  String get noData => '데이터 없음';

  @override
  String get homeTitle => '기록';

  @override
  String get feedsToday => '오늘 수유';

  @override
  String get diapersToday => '오늘 기저귀';

  @override
  String get sleepToday => '오늘 수면';

  @override
  String todayLabel(String date) {
    return '오늘 — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개 이벤트',
      one: '1개 이벤트',
      zero: '이벤트 없음',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => '이 날짜를 삭제하시겠습니까?';

  @override
  String deleteDayContent(String date) {
    return '$date 및 모든 항목을 삭제하시겠습니까? 이 작업은 취소할 수 없습니다';
  }

  @override
  String get noEntriesYet => '아직 기록이 없습니다';

  @override
  String get addEntry => '기록 추가';

  @override
  String get deleteEntryTitle => '이 기록을 삭제하시겠습니까?';

  @override
  String get entryTypeDiaper => '기저귀 갈기';

  @override
  String get entryTypeFeeding => '수유';

  @override
  String get entryTypeSleep => '수면';

  @override
  String get entryTypeTemperature => '체온';

  @override
  String get entryTypeWeight => '체중';

  @override
  String get diaperPeePoo => '기저귀 — 소변 + 대변';

  @override
  String get diaperPee => '기저귀 — 소변만';

  @override
  String get diaperPoo => '기저귀 — 대변만';

  @override
  String get diaperChange => '기저귀 갈기';

  @override
  String get editDiaper => '기저귀 편집';

  @override
  String get diaperContents => '내용물';

  @override
  String get diaperNone => '없음';

  @override
  String get diaperPeeLabel => '소변';

  @override
  String get diaperPooLabel => '대변';

  @override
  String get diaperBoth => '둘 다';

  @override
  String get diaperConsistency => '형태';

  @override
  String get consistencyHard => '딱딱함 / 알갱이';

  @override
  String get consistencyHardHint => '변비';

  @override
  String get consistencyFirm => '단단함';

  @override
  String get consistencyFirmHint => '약간 단단함';

  @override
  String get consistencyNormal => '보통';

  @override
  String get consistencyNormalHint => '건강함';

  @override
  String get consistencySoft => '부드러움';

  @override
  String get consistencySoftHint => '약간 부드러움';

  @override
  String get consistencyLoose => '묽음 / 반고체';

  @override
  String get consistencyLooseHint => '관찰 필요';

  @override
  String get consistencyWatery => '물 같음';

  @override
  String get consistencyWateryHint => '설사';

  @override
  String get warnConstipation => '변비 징후 — 주의 깊게 관찰';

  @override
  String get warnDiarrhea => '설사 징후 — 주의 깊게 관찰';

  @override
  String get pooColourLabel => '색상 (터치하여 선택)';

  @override
  String get pooColourAbnormal => '⚠️ 비정상 (창백함)';

  @override
  String get pooColourNormal => '✅ 정상';

  @override
  String pooColourSelected(String label) {
    return '선택됨: $label';
  }

  @override
  String get diaperSize => '기저귀 사이즈';

  @override
  String get diaperBrand => '브랜드';

  @override
  String get diaperBrandCustomLabel => '브랜드명';

  @override
  String get rashPresent => '기저귀 발진 있음';

  @override
  String get rashPresentHint => '발적, 자극 또는 기저귀 발진';

  @override
  String get rashCreamUsed => '크림 사용함';

  @override
  String get rashCreamCustomLabel => '크림 / 연고 이름';

  @override
  String get rashFollowUpTitle => '⚠️ 발진 후속 확인';

  @override
  String get rashFollowUpQuestion => '마지막 기저귀에 발진이 기록되었습니다. 호전되었나요?';

  @override
  String get rashImproved => '네, 호전됨';

  @override
  String get rashNoChange => '변화 없음 / 악화됨';

  @override
  String get rashRecorded => '발진 기록됨';

  @override
  String get addFeeding => '수유 추가';

  @override
  String get editFeeding => '수유 편집';

  @override
  String feedLabel(int number) {
    return '$number번째 수유';
  }

  @override
  String get feedModeBottle => '젖병';

  @override
  String get feedModeSuckle => '모유 직수';

  @override
  String get feedAmountMl => '양 (ml)';

  @override
  String get feedType => '종류';

  @override
  String get feedBreastMilk => '모유';

  @override
  String get feedFormula => '분유';

  @override
  String get feedFormulaBrand => '분유 브랜드';

  @override
  String get feedFormulaBrandCustom => '브랜드명';

  @override
  String get feedDurationMinutes => '수유 시간 (분)';

  @override
  String get addAnotherFeed => '다른 수유 추가';

  @override
  String get bottleBreastMilk => '젖병 — 모유';

  @override
  String get bottleFormula => '젖병 — 분유';

  @override
  String get breastfeedingSuckle => '모유 수유 (직수)';

  @override
  String get logSleep => '수면 기록';

  @override
  String get editSleep => '수면 편집';

  @override
  String get sleepStart => '잠든 시간';

  @override
  String get sleepWakeUp => '깬 시간';

  @override
  String sleepDuration(String duration) {
    return '수면 시간: $duration';
  }

  @override
  String get sleepInvalidTimes => '유효하지 않은 시간';

  @override
  String get sleepWrapsNextDay => '(다음 날로 이어짐)';

  @override
  String get sleepNotes => '메모 (선택사항)';

  @override
  String get sleepNotesHint => '예: 불안함, 잠시 깨어 있었음...';

  @override
  String get sleepNoNotes => '메모 없음';

  @override
  String sleepHoursShort(int h, int m) {
    return '$h시간 $m분';
  }

  @override
  String get logTemperature => '체온 기록';

  @override
  String get editTemperature => '체온 편집';

  @override
  String get temperatureLabel => '체온';

  @override
  String get tempSeverityLow => '체온 낮음 — 관찰';

  @override
  String get tempSeverityNormal => '정상 체온';

  @override
  String get tempSeverityElevated => '약간 높음 — 주의 깊게 관찰';

  @override
  String get tempSeverityFever => '열 — 의사와 상담';

  @override
  String get tempReference => '체온 참고';

  @override
  String get tempRefLow => '< 36.0 °C / 96.8 °F';

  @override
  String get tempRefNormal => '36.0 – 37.4 °C / 96.8 – 99.3 °F';

  @override
  String get tempRefElevated => '37.5 – 38.4 °C / 99.5 – 101.1 °F';

  @override
  String get tempRefFever => '≥ 38.5 °C / 101.3 °F';

  @override
  String get tempFeverWarning => '⚠️ 3개월 미만 영아의 발열 시 항상 소아과 의사와 상담하세요';

  @override
  String get tempLow => '낮음';

  @override
  String get tempNormal => '정상';

  @override
  String get tempElevated => '높음';

  @override
  String get tempFever => '열';

  @override
  String get tempLatest => '최근 체온';

  @override
  String get tempSummary => '체온 요약';

  @override
  String get tempFeverThreshold => '발열 기준';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일',
      one: '1일',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => '체중 기록';

  @override
  String get editWeight => '체중 편집';

  @override
  String get weightLabel => '체중';

  @override
  String weightGain(String amount) {
    return '+$amount 증가';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount 감소';
  }

  @override
  String weightPrevious(String weight) {
    return '이전: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return '마지막 기록: $weight ($date)';
  }

  @override
  String get weightLatest => '최근 체중';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount (기간 내)';
  }

  @override
  String get settingsTitle => '설정';

  @override
  String get settingsAppearance => '화면 테마';

  @override
  String get settingsDarkMode => '다크 모드';

  @override
  String get settingsDarkActive => '다크 테마 활성화됨';

  @override
  String get settingsLightActive => '라이트 테마 활성화됨';

  @override
  String get settingsUnits => '단위';

  @override
  String get settingsWeightUnit => '체중 단위';

  @override
  String get settingsTempUnit => '체온 단위';

  @override
  String get settingsLanguage => '언어';

  @override
  String get settingsTips => '팁';

  @override
  String get tipSwitchBabies => '아기 전환';

  @override
  String get tipSwitchBabiesDesc => '상단의 아기 아바타를 눌러 아기를 전환하거나 추가하세요';

  @override
  String get tipSwipeDelete => '왼쪽으로 밀어서 삭제';

  @override
  String get tipSwipeDeleteDesc => '날짜 카드 및 개별 항목에 적용됩니다';

  @override
  String get tipMultipleFeeds => '여러 번의 수유 기록';

  @override
  String get tipMultipleFeedsDesc => '수유 양식에서 \'다른 수유 추가\'를 눌러 모유 직수와 젖병을 한 번에 기록하세요';

  @override
  String get tipExportData => '데이터 내보내기';

  @override
  String get tipExportDataDesc => '홈의 공유 아이콘을 사용하여 모든 데이터를 JSON으로 내보내세요';

  @override
  String get tipTapToEdit => '항목을 탭하여 편집하세요';

  @override
  String get babiesTitle => '아기들';

  @override
  String get addBaby => '아기 추가';

  @override
  String get editProfile => '프로필 편집';

  @override
  String get babyNameRequired => '이름 *';

  @override
  String get babyDobOptional => '생년월일 (선택사항)';

  @override
  String babyBornOn(String date) {
    return '$date 출생';
  }

  @override
  String get genderUnknown => '선택 안함';

  @override
  String get genderBoy => '남아';

  @override
  String get genderGirl => '여아';

  @override
  String get cannotDeleteOnlyProfile => '유일한 아기 프로필은 삭제할 수 없습니다';

  @override
  String deleteProfileTitle(String name) {
    return '$name 님을 삭제하시겠습니까?';
  }

  @override
  String get deleteProfileContent => '이 아기의 모든 데이터가 영구 삭제됩니다';

  @override
  String get graphsTitle => '그래프';

  @override
  String get graphsTabDaily => '일간';

  @override
  String get graphsTabGrowth => '성장';

  @override
  String get graphsTabHealth => '건강';

  @override
  String get graphsTotalFeeds => '총 수유 횟수';

  @override
  String get graphsAvgPerDay => '일평균';

  @override
  String get graphsTotalDiapers => '기저귀 횟수';

  @override
  String get graphsTotalMilk => '총 수유량';

  @override
  String get graphsTotalSleep => '총 수면 시간';

  @override
  String get graphsAvgSleep => '일평균 수면';

  @override
  String get graphsFeedsPerDay => '일일 수유 횟수';

  @override
  String get graphsDiapersPerDay => '일일 기저귀 횟수';

  @override
  String get graphsMilkPerDay => '일일 수유량 (ml)';

  @override
  String get graphsSleepPerDay => '일일 수면 시간 (시간)';

  @override
  String get graphsWeightOverTime => '체중 변화 추이';

  @override
  String get graphsTempOverTime => '체온 변화 추이';

  @override
  String graphsMaxLabel(String value) {
    return '최대: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return '최소: $value';
  }

  @override
  String get graphsNoWeightData => '아직 체중 기록이 없습니다\n날짜 항목에서 체중을 기록하세요';

  @override
  String get graphsNoTempData => '아직 체온 기록이 없습니다\n날짜에서 체온을 기록하세요';

  @override
  String get timeLabel => '시간';

  @override
  String get noColourRecorded => '색상 기록 없음';

  @override
  String get noDetails => '세부 정보 없음';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일',
      one: '1일',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개월',
      one: '1개월',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years년 $months개월';
  }
}
