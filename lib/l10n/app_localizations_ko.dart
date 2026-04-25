// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '아기 트래커';

  @override
  String get navHome => '홈';

  @override
  String get navGraphs => '그래프';

  @override
  String get navMilestones => '성장 이정표';

  @override
  String get navSettings => '설정';

  @override
  String get actionCancel => '취소';

  @override
  String get actionSave => '저장';

  @override
  String get actionUpdate => '업데이트';

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
  String get actionAddDay => '일자 추가';

  @override
  String get actionLog => '기록';

  @override
  String get cannotUndo => '이 작업은 되돌릴 수 없습니다.';

  @override
  String get noData => '데이터 없음';

  @override
  String get noNotes => '메모 없음';

  @override
  String get noDetails => '세부 정보 없음';

  @override
  String get optional => '(선택 사항)';

  @override
  String get homeTitle => '트래커';

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
  String get deleteDayTitle => '이 날을 삭제하시겠습니까?';

  @override
  String deleteDayContent(String date) {
    return '$date 및 모든 기록을 삭제하시겠습니까? 되돌릴 수 없습니다.';
  }

  @override
  String get rashRecorded => '기저귀 발진 기록됨';

  @override
  String get noEntriesYet => '아직 기록이 없습니다';

  @override
  String get addEntry => '기록 추가';

  @override
  String get deleteEntryTitle => '기록을 삭제하시겠습니까?';

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
  String get entryTypeTummyTime => '엎드려 놀기';

  @override
  String get entryTypeMedication => '약';

  @override
  String get entryTypeDoctorVisit => '병원 방문';

  @override
  String get entryTypeNote => '일일 메모 / 일기';

  @override
  String get entryTypePumping => '유축 세션';

  @override
  String get entryTypeBath => '목욕';

  @override
  String get diaperPeePoo => '기저귀 — 소변 + 대변';

  @override
  String get diaperPee => '기저귀 — 소변';

  @override
  String get diaperPoo => '기저귀 — 대변';

  @override
  String get diaperChange => '기저귀 갈기';

  @override
  String get editDiaper => '기저귀 기록 편집';

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
  String get diaperConsistency => '대변 상태';

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
  String get consistencySoft => '무름';

  @override
  String get consistencySoftHint => '약간 무름';

  @override
  String get consistencyLoose => '묽음 / 죽 같음';

  @override
  String get consistencyLooseHint => '관찰 필요';

  @override
  String get consistencyWatery => '물 같음';

  @override
  String get consistencyWateryHint => '설사';

  @override
  String get warnConstipation => '변비 징후 — 주의 깊게 관찰하세요';

  @override
  String get warnDiarrhea => '설사 징후 — 주의 깊게 관찰하세요';

  @override
  String get pooColourLabel => '색상 (탭하여 선택)';

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
  String get rashCreamUsed => '발진 크림 사용함';

  @override
  String get rashCreamCustomLabel => '크림 / 연고 이름';

  @override
  String get rashFollowUpTitle => '⚠️ 발진 후속 조치';

  @override
  String get rashFollowUpQuestion => '마지막 기저귀에서 발진이 기록되었습니다. 나아졌나요?';

  @override
  String get rashImproved => '네, 나아졌습니다';

  @override
  String get rashNoChange => '변화 없음 / 악화됨';

  @override
  String get addFeeding => '수유 추가';

  @override
  String get editFeeding => '수유 편집';

  @override
  String feedLabel(int number) {
    return '수유 $number';
  }

  @override
  String get feedModeBottle => '젖병';

  @override
  String get feedModeSuckle => '직접 수유';

  @override
  String get feedAmountMl => '양 (ml)';

  @override
  String get feedType => '유형';

  @override
  String get feedBreastMilk => '모유';

  @override
  String get feedFormula => '분유';

  @override
  String get feedFormulaBrand => '분유 브랜드';

  @override
  String get feedFormulaBrandCustom => '분유 브랜드명';

  @override
  String get feedDurationMinutes => '시간 (분)';

  @override
  String get addAnotherFeed => '다른 수유 추가';

  @override
  String get bottleBreastMilk => '젖병 — 모유';

  @override
  String get bottleFormula => '젖병 — 분유';

  @override
  String get breastfeedingSuckle => '모유 직접 수유';

  @override
  String get logSleep => '수면 기록';

  @override
  String get editSleep => '수면 편집';

  @override
  String get sleepStart => '수면 시작';

  @override
  String get sleepWakeUp => '기상';

  @override
  String sleepDuration(String duration) {
    return '시간: $duration';
  }

  @override
  String get sleepInvalidTimes => '유효하지 않은 시간';

  @override
  String get sleepWrapsNextDay => '(종료 시간이 다음 날로 넘어감)';

  @override
  String get sleepNotes => '메모 (선택 사항)';

  @override
  String get sleepNotesHint => '예: 불안함, 잠시 깨어남…';

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
  String get tempSeverityLow => '저체온 — 관찰 필요';

  @override
  String get tempSeverityNormal => '정상 체온';

  @override
  String get tempSeverityElevated => '약간 높음 — 주의 깊게 관찰';

  @override
  String get tempSeverityFever => '열 — 의사와 상담하세요';

  @override
  String get tempReference => '체온 참고표';

  @override
  String get tempRefLow => '< 36.0 °C / 96.8 °F';

  @override
  String get tempRefNormal => '36.0 – 37.4 °C / 96.8 – 99.3 °F';

  @override
  String get tempRefElevated => '37.5 – 38.4 °C / 99.5 – 101.1 °F';

  @override
  String get tempRefFever => '≥ 38.5 °C / 101.3 °F';

  @override
  String get tempFeverWarning => '⚠️ 생후 3개월 미만 영아의 발열은 항상 소아과 의사와 상담하세요.';

  @override
  String get tempLow => '저체온';

  @override
  String get tempNormal => '정상';

  @override
  String get tempElevated => '고체온';

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
      zero: '0일',
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
    return '$sign$amount (기간 중 변화)';
  }

  @override
  String get tummyTimeLog => '엎드려 놀기 기록';

  @override
  String get tummyTimeEdit => '엎드려 놀기 편집';

  @override
  String get tummyTimeStart => '시작 시간';

  @override
  String get tummyTimeEnd => '종료 시간';

  @override
  String get tummyTimeTip => '엎드려 놀기는 목과 어깨 근육을 강화합니다.';

  @override
  String get medicationLog => '약 기록';

  @override
  String get medicationEdit => '약 편집';

  @override
  String get medicationName => '약 이름 *';

  @override
  String get medicationDose => '용량';

  @override
  String get medicationUnit => '단위';

  @override
  String get medicationCommon => '일반적인 약물';

  @override
  String get medicationWarning => '체중/연령에 따른 용량 지침을 항상 따르세요. 권장 빈도를 초과하지 마세요.';

  @override
  String get medicationNotes => '메모 (선택 사항)';

  @override
  String get medicationNotesHint => '예: 이유, 반응…';

  @override
  String get doctorVisitLog => '병원 방문';

  @override
  String get doctorVisitEdit => '병원 방문 편집';

  @override
  String get doctorName => '의사 / 병원 이름';

  @override
  String get doctorVisitReason => '방문 이유';

  @override
  String get doctorVisitMeasurements => '측정값 (선택 사항)';

  @override
  String get doctorVisitNotes => '메모';

  @override
  String get doctorVisitNotesHint => '예: 접종한 백신, 의사 권고사항…';

  @override
  String get measurementWeightKg => '체중 (kg)';

  @override
  String get measurementWeightLbs => '체중 (lbs)';

  @override
  String get measurementHeightCm => '신장 (cm)';

  @override
  String get measurementHeadCm => '머리둘레 (cm)';

  @override
  String get dailyNoteLog => '일일 메모';

  @override
  String get dailyNoteEdit => '메모 편집';

  @override
  String get dailyNoteTitle => '제목 (선택 사항)';

  @override
  String get dailyNoteText => '메모';

  @override
  String get dailyNoteHint => '오늘 무슨 일이 있었나요? 첫 뒤집기? 짜증난 아침?';

  @override
  String get dailyNoteTags => '빠른 태그';

  @override
  String get pumpingLog => '유축 기록';

  @override
  String get pumpingEdit => '유축 편집';

  @override
  String get pumpingLeft => '왼쪽 가슴 (ml)';

  @override
  String get pumpingRight => '오른쪽 가슴 (ml)';

  @override
  String get pumpingTotal => '총 유축량';

  @override
  String get pumpingDuration => '시간 (분)';

  @override
  String get pumpingStored => '보관 / 냉동';

  @override
  String get pumpingNotes => '메모 (선택 사항)';

  @override
  String get pumpingSessionTitle => '유축';

  @override
  String pumpingTotalMl(int ml) {
    return '총 $ml ml';
  }

  @override
  String get bathLog => '목욕 기록';

  @override
  String get bathEdit => '목욕 편집';

  @override
  String get bathType => '목욕 종류';

  @override
  String get bathTypeSponge => '스펀지 목욕';

  @override
  String get bathTypeTub => '욕조 목욕';

  @override
  String get bathTypeShower => '샤워';

  @override
  String get bathNotes => '메모 (선택 사항)';

  @override
  String get bathProducts => '사용한 제품 (선택 사항)';

  @override
  String get vaccineTitle => '예방접종';

  @override
  String get vaccineTabGiven => '접종 완료';

  @override
  String get vaccineTabSchedule => '접종 일정';

  @override
  String get vaccineLog => '백신 기록';

  @override
  String get vaccineEdit => '백신 편집';

  @override
  String get vaccineName => '백신 이름';

  @override
  String get vaccineBrand => '브랜드 / 제조사 (선택 사항)';

  @override
  String get vaccineDate => '접종 날짜';

  @override
  String get vaccineDose => '차수 (선택 사항)';

  @override
  String get vaccineSite => '주사 부위 (선택 사항)';

  @override
  String get vaccineNotes => '메모 / 반응';

  @override
  String vaccineDue(String age) {
    return '$age에 접종 예정';
  }

  @override
  String get vaccineGiven => '접종 완료';

  @override
  String get vaccineNoGiven => '아직 백신 기록이 없습니다.';

  @override
  String get vaccineMarkGiven => '접종 완료로 표시';

  @override
  String get whoChartTitle => 'WHO 성장 차트';

  @override
  String get whoWeightForAge => '연령별 체중';

  @override
  String get whoHeightForAge => '연령별 신장';

  @override
  String get whoHeadForAge => '연령별 머리둘레';

  @override
  String get whoGenderBoy => '남아';

  @override
  String get whoGenderGirl => '여아';

  @override
  String get whoNoData => '아직 측정 기록이 없습니다.\n일일 기록에서 체중을 입력하면 차트를 볼 수 있습니다.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => '우리 아기';

  @override
  String whoAgeMonths(int n) {
    return '$n개월';
  }

  @override
  String get whoNoBirthDate => '연령 기반 차트를 보려면 프로필에서 아기의 생년월일을 설정하세요.';

  @override
  String get notifTitle => '리마인더';

  @override
  String get notifFeedingReminder => '수유 리마인더';

  @override
  String notifFeedingReminderDesc(int hours) {
    return '$hours시간 동안 수유 기록이 없으면 알림';
  }

  @override
  String get notifDiaperReminder => '기저귀 리마인더';

  @override
  String notifDiaperReminderDesc(int hours) {
    return '$hours시간 동안 기저귀 기록이 없으면 알림';
  }

  @override
  String get notifMedicationReminder => '약 복용 리마인더';

  @override
  String get notifEnabled => '알림 활성화됨';

  @override
  String get notifDisabled => '알림 비활성화됨';

  @override
  String get notifPermissionRequired => '기기 설정에서 알림을 활성화해주세요.';

  @override
  String get exportTitle => '내보내기 및 백업';

  @override
  String get exportJson => 'JSON으로 내보내기';

  @override
  String get exportPdf => 'PDF로 내보내기';

  @override
  String get exportPdfDesc => '소아과 의사를 위한 읽기 쉬운 요약본';

  @override
  String get exportGoogleDrive => 'Google Drive에 백업';

  @override
  String get exportGenerating => '보고서 생성 중...';

  @override
  String get milestoneTitle => '성장 이정표';

  @override
  String get milestoneTabAchieved => '달성함';

  @override
  String get milestoneTabUpcoming => '다가올 이정표';

  @override
  String get milestoneCustomAdd => '사용자 정의 이정표';

  @override
  String get milestoneDeleteTitle => '이정표를 삭제하시겠습니까?';

  @override
  String get milestoneEdit => '이정표 편집';

  @override
  String get milestoneAdd => '이정표 추가';

  @override
  String get milestoneName => '이정표 이름 *';

  @override
  String get milestoneDate => '달성 날짜';

  @override
  String get milestoneNotes => '메모 (선택 사항)';

  @override
  String get milestoneNotesHint => '기억할 만한 세부 사항...';

  @override
  String get milestoneNoAchieved => '아직 기록된 이정표가 없습니다.';

  @override
  String get milestoneAllDone => '모든 기본 이정표를 달성했습니다! 🎉';

  @override
  String get milestoneFirstSmile => '😊 첫 미소';

  @override
  String get milestoneFirstLaugh => '😂 처음 크게 웃음';

  @override
  String get milestoneFirstTooth => '🦷 첫 이빨';

  @override
  String get milestoneRolledBackTummy => '🔄 뒤집기 (등 → 배)';

  @override
  String get milestoneRolledTummyBack => '🔄 뒤집기 (배 → 등)';

  @override
  String get milestoneSatUnsupported => '🧸 지지 없이 앉기';

  @override
  String get milestoneStartedCrawling => '🐣 기기 시작';

  @override
  String get milestonePulledToStand => '🏋️ 잡고 일어서기';

  @override
  String get milestoneFirstSteps => '👣 첫걸음';

  @override
  String get milestoneFirstWord => '💬 첫 말';

  @override
  String get milestoneFirstSolidFood => '🥣 첫 이유식';

  @override
  String get milestoneFirstHaircut => '✂️ 첫 이발';

  @override
  String get milestoneSleptThroughNight => '🌙 밤새 잠';

  @override
  String get milestoneWavedBye => '👋 손 흔들며 작별 인사';

  @override
  String get milestoneClappedHands => '👏 박수';

  @override
  String get milestoneFirstBirthday => '🎂 첫 생일';

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
  String get settingsTempUnit => '온도 단위';

  @override
  String get settingsLanguage => '언어';

  @override
  String get settingsNotifications => '알림 및 리마인더';

  @override
  String get settingsExport => '내보내기 및 백업';

  @override
  String get settingsTips => '팁';

  @override
  String get tipSwitchBabies => '아기 전환하기';

  @override
  String get tipSwitchBabiesDesc => '상단의 아기 아바타를 탭하여 아기를 전환하거나 추가할 수 있습니다.';

  @override
  String get tipSwipeDelete => '왼쪽으로 스와이프하여 삭제';

  @override
  String get tipSwipeDeleteDesc => '일자 타일 및 개별 기록에 적용됩니다.';

  @override
  String get tipTapToEdit => '기록을 탭하여 편집';

  @override
  String get tipMultipleFeeds => '여러 번 수유 기록하기';

  @override
  String get tipMultipleFeedsDesc => '수유 폼에서 \"다른 수유 추가\"를 탭하여 직접 수유와 젖병을 한 번에 기록할 수 있습니다.';

  @override
  String get tipExportData => '데이터 내보내기';

  @override
  String get tipExportDataDesc => '홈 화면의 공유 아이콘을 사용하여 모든 데이터를 JSON으로 내보낼 수 있습니다.';

  @override
  String get babiesTitle => '아기';

  @override
  String get addBaby => '아기 추가';

  @override
  String get editProfile => '프로필 편집';

  @override
  String get babyNameRequired => '이름 *';

  @override
  String get babyDobOptional => '생년월일 (선택 사항)';

  @override
  String babyBornOn(String date) {
    return '$date 출생';
  }

  @override
  String get genderUnknown => '알 수 없음';

  @override
  String get genderBoy => '남아';

  @override
  String get genderGirl => '여아';

  @override
  String get cannotDeleteOnlyProfile => '유일한 아기 프로필은 삭제할 수 없습니다.';

  @override
  String deleteProfileTitle(String name) {
    return '$name을(를) 삭제하시겠습니까?';
  }

  @override
  String get deleteProfileContent => '이 아기의 모든 데이터가 영구적으로 삭제됩니다.';

  @override
  String get graphsTitle => '그래프';

  @override
  String get graphsTabDaily => '일간';

  @override
  String get graphsTabGrowth => '성장';

  @override
  String get graphsTabHealth => '건강';

  @override
  String get graphsTabWho => 'WHO 차트';

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
  String get graphsNoWeightData => '아직 체중 기록이 없습니다.\n일일 기록에서 체중을 입력하세요.';

  @override
  String get graphsNoTempData => '아직 체온 기록이 없습니다.\n일일 기록에서 체온을 입력하세요.';

  @override
  String get timeLabel => '시간';

  @override
  String get noColourRecorded => '색상 기록 없음';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일',
      one: '1일',
      zero: '신생아',
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
      zero: '1개월 미만',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years세 $months개월';
  }
}
