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
  String get exportJson => '백업 내보내기';

  @override
  String get exportJsonDesc => '모든 데이터와 사진을 .zip 파일 하나로';

  @override
  String get exportPdf => 'PDF로 내보내기';

  @override
  String get exportPdfDesc => '소아과 의사를 위한 읽기 쉬운 요약본';

  @override
  String get importJson => '백업 복원';

  @override
  String get importJsonDesc => '.zip 백업(또는 이전 .json 내보내기)에서';

  @override
  String get importDialogTitle => '데이터를 가져올까요?';

  @override
  String get importDialogBody => '병합하면 파일의 항목이 기존 데이터와 함께 추가됩니다. 모두 바꾸기는 기존 데이터를 먼저 삭제합니다.';

  @override
  String get importMerge => '병합';

  @override
  String get importReplaceAll => '모두 바꾸기';

  @override
  String get importSuccess => '가져오기 완료';

  @override
  String get importInvalidFile => 'Baby Tracker 내보내기 파일이 아닌 것 같습니다.';

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
  String get milestoneAllDone => '모든 기본 이정표를 달성했습니다!';

  @override
  String get milestoneFirstSmile => '첫 미소';

  @override
  String get milestoneFirstLaugh => '처음 크게 웃음';

  @override
  String get milestoneFirstTooth => '첫 이빨';

  @override
  String get milestoneRolledBackTummy => '뒤집기 (등 → 배)';

  @override
  String get milestoneRolledTummyBack => '뒤집기 (배 → 등)';

  @override
  String get milestoneSatUnsupported => '지지 없이 앉기';

  @override
  String get milestoneStartedCrawling => '기기 시작';

  @override
  String get milestonePulledToStand => '잡고 일어서기';

  @override
  String get milestoneFirstSteps => '첫걸음';

  @override
  String get milestoneFirstWord => '첫 말';

  @override
  String get milestoneFirstSolidFood => '첫 이유식';

  @override
  String get milestoneFirstHaircut => '첫 이발';

  @override
  String get milestoneSleptThroughNight => '밤새 잠';

  @override
  String get milestoneWavedBye => '손 흔들며 작별 인사';

  @override
  String get milestoneClappedHands => '박수';

  @override
  String get milestoneFirstBirthday => '첫 생일';

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
  String get settingsVolumeUnit => '수유량 단위';

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
  String get tipExportDataDesc => '홈의 공유 아이콘으로 모든 데이터와 사진을 파일 하나에 백업하세요.';

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
  String get graphsMilkPerDayMl => '하루 수유량 (ml)';

  @override
  String get graphsMilkPerDayOz => '하루 수유량 (oz)';

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

  @override
  String medicationLabel(String name) {
    return '약: $name';
  }

  @override
  String get doctorVisitDefaultReason => '방문';

  @override
  String doctorVisitLabel(String reason) {
    return '병원 방문 — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 메모';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return '의사: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => '등록된 의사 없음';

  @override
  String get summaryPoosLabel => '대변';

  @override
  String get summaryPeesLabel => '소변';

  @override
  String get summaryMilkLabel => '우유 ml';

  @override
  String get summaryMilkLabelMl => '수유 ml';

  @override
  String get summaryMilkLabelOz => '수유 oz';

  @override
  String get summaryBreastLabel => '수유 분';

  @override
  String get summarySleepLabel => '수면';

  @override
  String get settingsOledMode => 'OLED(완전한 검정)';

  @override
  String get settingsOledModeDesc => 'OLED 화면에서 배터리를 절약하기 위해 완전한 검정 배경을 사용합니다';

  @override
  String get settingsImmersiveMode => '몰입 모드';

  @override
  String get settingsImmersiveModeDesc => '시스템 상태 표시줄과 탐색 표시줄을 숨깁니다';

  @override
  String get navVaccinationsEntry => '예방접종';

  @override
  String get whoChartsEntry => 'WHO 성장 차트';

  @override
  String get medicationEditTitle => '약 수정';

  @override
  String get medicationLogTitle => '약 기록';

  @override
  String get medicationYourCourses => '복용 중인 약';

  @override
  String get medicationManageCourses => '복용 관리';

  @override
  String get medicationNameRequired => '약 이름 *';

  @override
  String get medicationDosageWarning => '항상 체중/나이에 맞는 용량을 지키세요. 권장 횟수를 넘기지 마세요.';

  @override
  String get medicationNotesOptional => '메모 (선택)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count분 전',
      one: '1분 전',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count시간 전',
      one: '1시간 전',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일 전',
      one: '1일 전',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return '마지막 복용 $ago';
  }

  @override
  String get medicationNeverGiven => '아직 복용 안 함';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '오늘 $count회',
      one: '오늘 1회',
      zero: '오늘 복용 없음',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return '다음 복용은 마지막 복용 후 $hours시간 뒤입니다';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return '이 약의 하루 $max회 한도에 이미 도달했습니다';
  }

  @override
  String get medicationEditCourse => '복용 계획 수정';

  @override
  String get medicationNewCourse => '새 복용 계획';

  @override
  String get medicationReasonOptional => '이유 (선택)';

  @override
  String get medicationIntervalHoursOptional => '반복 간격 (시간, 선택)';

  @override
  String get medicationMaxPerDayOptional => '하루 최대 횟수 (선택)';

  @override
  String get medicationRemindNextDose => '다음 복용 시간에 알림';

  @override
  String medicationEndCourseTitle(String name) {
    return '$name 복용을 종료할까요?';
  }

  @override
  String get medicationEndCoursePrompt => '효과는 어땠나요?';

  @override
  String get medicationDeleteCourseTitle => '이 복용 계획을 삭제할까요?';

  @override
  String get medicationResultWorked => '효과 있음';

  @override
  String get medicationResultPartlyWorked => '약간 효과 있음';

  @override
  String get medicationResultDidntWork => '효과 없음';

  @override
  String get medicationResultSideEffects => '부작용 있음';

  @override
  String get medicationResultNone => '평가 안 함';

  @override
  String get medicationsTitle => '약';

  @override
  String medicationActiveTab(int count) {
    return '복용 중 ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return '종료 ($count)';
  }

  @override
  String get medicationNoActiveCourses => '복용 중인 약이 없습니다.\n+ 버튼으로 시작하세요.';

  @override
  String get medicationNoPastCourses => '아직 종료된 복용 계획이 없습니다.';

  @override
  String medicationTimesGiven(int count) {
    return '$count회 복용';
  }

  @override
  String medicationLastGivenShort(String date) {
    return '마지막: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return '다음 $time';
  }

  @override
  String get medicationEndCourse => '복용 종료';

  @override
  String feedLastSideHint(String side) {
    return '지난번: $side';
  }

  @override
  String get feedSideLeft => '왼쪽';

  @override
  String get feedSideRight => '오른쪽';

  @override
  String get feedSideBoth => '양쪽';

  @override
  String get feedSideLeftMinutes => '왼쪽 (분)';

  @override
  String get feedSideRightMinutes => '오른쪽 (분)';

  @override
  String get timeAgoJustNow => '방금';

  @override
  String get timeUntilOverdue => '시간 지남';

  @override
  String timeUntilMinutes(int count) {
    return '$count분 후';
  }

  @override
  String timeUntilHours(int count) {
    return '$count시간 후';
  }

  @override
  String timeUntilDays(int count) {
    return '$count일 후';
  }

  @override
  String get timerDiscardTitle => '이 타이머를 취소할까요?';

  @override
  String get timerDiscard => '취소';

  @override
  String timerFeedingRunning(String side) {
    return '수유 중 · $side';
  }

  @override
  String get timerSleepRunning => '수면 타이머 작동 중';

  @override
  String get timerSwitchSide => '방향 바꾸기';

  @override
  String get timerStop => '정지';

  @override
  String get sinceLastFeed => '마지막 수유';

  @override
  String get sinceLastDiaper => '마지막 기저귀';

  @override
  String get sinceAwake => '깨어 있음';

  @override
  String get sinceAsleep => '자는 중';

  @override
  String nextDoseDue(String name) {
    return '$name 복용 시간';
  }

  @override
  String get weighConditionNaked => '알몸';

  @override
  String get weighConditionDiaper => '기저귀만';

  @override
  String get weighConditionLightClothes => '가벼운 옷';

  @override
  String get weighConditionDressed => '옷 입음';

  @override
  String get weighCondition => '측정 시 복장';

  @override
  String get growthMeasurementsOptional => '기타 측정 (선택)';

  @override
  String get growthHeightCm => '키 (cm)';

  @override
  String get growthHeadCm => '머리둘레 (cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return '지난번에는 $condition 상태로 쟀습니다 — 차이가 성장 때문만은 아닐 수 있어요';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm cm';
  }

  @override
  String growthHeadValue(String cm) {
    return '머리 $cm cm';
  }

  @override
  String get growthHeightOverTime => '키 변화';

  @override
  String get growthHeadOverTime => '머리둘레 변화';

  @override
  String get graphsRecentWeighIns => '최근 체중 측정';

  @override
  String get solidsAmountFewSpoons => '몇 숟가락';

  @override
  String get solidsAmountHalf => '반 그릇';

  @override
  String get solidsAmountFull => '한 그릇';

  @override
  String get solidsAmountTaste => '맛만 봄';

  @override
  String get solidsReactionMild => '가벼운 반응';

  @override
  String get solidsReactionAllergic => '알레르기 반응';

  @override
  String get solidsReactionNone => '반응 없음';

  @override
  String get solidsEditTitle => '이유식 수정';

  @override
  String get solidsLogTitle => '이유식 기록';

  @override
  String get solidsFoodsLabel => '식재료';

  @override
  String get solidsAddFoodHint => '식재료 추가';

  @override
  String get solidsAmount => '양';

  @override
  String get solidsLiked => '잘 먹었나요?';

  @override
  String get solidsReaction => '반응';

  @override
  String get solidsNotesOptional => '메모 (선택)';

  @override
  String get foodsTitle => '먹어 본 식재료';

  @override
  String get foodsEmpty => '아직 기록된 이유식이 없습니다.';

  @override
  String get foodsAllergensNotYet => '아직 시도하지 않은 주요 알레르기 식품';

  @override
  String foodsTriedCount(int count) {
    return '식재료 $count가지 시도';
  }

  @override
  String foodsFirstTried(String date) {
    return '처음: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count회';
  }

  @override
  String get entryTypeSolids => '이유식';

  @override
  String get feedAmountOz => '양 (oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return '마지막 수유 $interval 후 알림';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return '마지막 기저귀 교체 $interval 후 알림';
  }

  @override
  String notifIntervalEvery(String interval) {
    return '$interval마다';
  }

  @override
  String get notifIntervalTitle => '알림 간격';

  @override
  String get notifIntervalHours => '시간';

  @override
  String get notifIntervalMinutes => '분';

  @override
  String notifIntervalTooShort(int minutes) {
    return '최소 $minutes분';
  }

  @override
  String get settingsFeeding => '수유';

  @override
  String get settingsTrackBottles => '젖병 기록';

  @override
  String get settingsTrackBottlesDesc => '어떤 젖병을 썼는지, 탄 양과 먹은 양을 기록합니다';

  @override
  String get bottlesTitle => '내 젖병';

  @override
  String get bottlesEmpty => '아직 젖병이 없습니다.\n사용하는 젖병을 추가하면 수유를 기록할 때 고를 수 있어요.';

  @override
  String get bottleAdd => '젖병 추가';

  @override
  String get bottleEdit => '젖병 수정';

  @override
  String get bottleLabel => '라벨 / 번호 (예: #3)';

  @override
  String get bottleBrand => '브랜드 / 종류 (선택)';

  @override
  String get bottleCapacity => '용량 (선택)';

  @override
  String get bottleNipple => '젖꼭지 크기 / 단계 (선택)';

  @override
  String get bottleMaterial => '소재';

  @override
  String get bottleRetired => '사용 중지';

  @override
  String get bottleRetire => '사용 중지';

  @override
  String get bottleUnretire => '다시 사용';

  @override
  String bottleDeleteTitle(String name) {
    return '$name을(를) 삭제할까요?';
  }

  @override
  String get bottleDeleteBody => '이전 수유 기록의 양은 유지되지만 이 젖병은 더 이상 표시되지 않습니다. 기록은 남기고 목록에서만 숨기려면 \'사용 중지\'를 사용하세요.';

  @override
  String get feedPrepared => '탄 양';

  @override
  String get feedDrank => '먹은 양';

  @override
  String feedLeftover(String amount) {
    return '$amount 남음';
  }

  @override
  String get feedDrankMoreThanPrepared => '탄 양보다 많나요?';

  @override
  String get feedWhichBottle => '어떤 젖병?';

  @override
  String get feedNoBottlesYet => '아직 젖병이 없습니다 — 설정 → 내 젖병에서 추가하세요.';

  @override
  String get photoPrivacyTitle => '사진은 이 휴대폰에만 저장돼요';

  @override
  String get photoPrivacyBody => '사진은 이 기기의 이 앱 안에만 저장됩니다. 앱은 인터넷에 연결되지 않으므로, 직접 백업을 내보내지 않는 한 어떤 것도 업로드되거나 공유되지 않습니다.\n\n처음 사진을 찍을 때 Android가 카메라 권한을 요청할 수 있습니다.';

  @override
  String get photoPrivacyContinue => '계속';

  @override
  String get photoTakePhoto => '사진 찍기';

  @override
  String get photoChooseFromGallery => '갤러리에서 선택';

  @override
  String get photoCaption => '설명';

  @override
  String get photoCompare => '처음과 최근';

  @override
  String get photoAddOtherDay => '다른 날짜에 추가';

  @override
  String get photoEmpty => '아직 사진이 없습니다.\n하루 한 장씩 찍고 아기가 자라는 모습을 지켜보세요.';

  @override
  String get photoToday => '오늘의 사진';

  @override
  String get photoAddToday => '오늘의 사진 추가';

  @override
  String get photoReplace => '바꾸기';

  @override
  String get photoDeleteTitle => '이 사진을 삭제할까요?';

  @override
  String get ageBeforeBirth => '출생 전';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '생후 $count일',
      one: '생후 1일',
      zero: '태어난 날',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months개월 $days일';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years년 $months개월';
  }

  @override
  String get navMemories => '추억';

  @override
  String get memoriesTabPhotos => '사진';

  @override
  String get milestoneNoAchievedHint => '\'다가오는\'을 눌러 준비된 이정표를 기록하거나,\n아래 버튼으로 직접 추가하세요.';

  @override
  String get skinTitle => '피부 상태';

  @override
  String get skinNew => '새 피부 상태';

  @override
  String get skinEdit => '피부 상태 수정';

  @override
  String skinTabActive(int count) {
    return '진행 중 ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return '나음 ($count)';
  }

  @override
  String get skinEmptyActive => '기록 중인 피부 상태가 없습니다.\n+를 눌러 시작하세요 — 매일 사진을 추가해 의사에게 변화를 보여줄 수 있어요.';

  @override
  String get skinEmptyHealed => '아직 나은 것이 없습니다.';

  @override
  String get skinUpdateDue => '오늘 기록 필요';

  @override
  String skinSince(String date) {
    return '$date부터';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일',
      one: '1일',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return '$date에 나음';
  }

  @override
  String skinReminderAt(String time) {
    return '매일 $time에 알림';
  }

  @override
  String get skinSeverityTrend => '심한 정도 변화';

  @override
  String get skinNoUpdates => '아직 기록이 없습니다. 오늘 기록을 추가해 타임라인을 시작하세요.';

  @override
  String get skinExportPdf => '의사용으로 내보내기 (PDF)';

  @override
  String get skinMarkHealed => '나음으로 표시';

  @override
  String get skinReopen => '다시 진행 중으로 표시';

  @override
  String get skinUpdateToday => '오늘 기록 추가';

  @override
  String get skinEditToday => '오늘 기록 수정';

  @override
  String skinDeleteTitle(String name) {
    return '$name과(와) 모든 기록을 삭제할까요?';
  }

  @override
  String get skinDeleteUpdateTitle => '이 기록을 삭제할까요?';

  @override
  String skinTreatmentValue(String treatment) {
    return '치료: $treatment';
  }

  @override
  String get skinName => '증상 *';

  @override
  String get skinBodyArea => '몸의 어느 부위인가요?';

  @override
  String get skinBegan => '시작일';

  @override
  String get skinRemindDaily => '매일 기록하도록 알림';

  @override
  String get skinReminderTime => '알림 시간';

  @override
  String get skinUpdateTitle => '피부 기록';

  @override
  String get skinSeverity => '상태가 어떤가요?';

  @override
  String get skinSeverity0 => '0 · 깨끗함';

  @override
  String get skinSeverity1 => '1 · 가벼움';

  @override
  String get skinSeverity2 => '2 · 보통';

  @override
  String get skinSeverity3 => '3 · 심함';

  @override
  String get skinSeverity4 => '4 · 매우 심함';

  @override
  String get skinTreatment => '치료 (선택)';

  @override
  String get skinTreatmentHint => '예: 보습제, 하이드로코르티손 1%';

  @override
  String get skinAddPhoto => '사진 추가';

  @override
  String get skinCardNone => '발진, 습진 등 피부 상태를 의사에게 보여줄 사진과 함께 매일 기록하세요';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count건이 오늘 기록 필요',
      one: '1건이 오늘 기록 필요',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => '백업 준비 중…';

  @override
  String get backupFailed => '백업을 만들 수 없습니다.';

  @override
  String get backupSavedTo => '백업 저장 위치:';

  @override
  String get backupShareSubject => 'Baby Tracker 백업';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '사진 $count장 포함.',
      one: '사진 1장 포함.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => '수유';

  @override
  String get widgetStopFeed => '수유 종료';

  @override
  String get widgetDiaper => '기저귀';

  @override
  String get widgetSleep => '수면';

  @override
  String get widgetWakeUp => '깼어요';

  @override
  String widgetFeedingFor(String duration) {
    return '수유 중 $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return '수유 $ago';
  }

  @override
  String get widgetNoFeedsYet => '수유 기록 없음';

  @override
  String widgetChangedAgo(String ago) {
    return '교체 $ago';
  }

  @override
  String get widgetNoDiapersYet => '기저귀 기록 없음';

  @override
  String widgetAsleepFor(String duration) {
    return '자는 중 $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return '기상 $ago';
  }

  @override
  String get widgetStopSleepFirst => '먼저 수면 타이머를 멈추세요';

  @override
  String get widgetStopFeedFirst => '먼저 수유 타이머를 멈추세요';

  @override
  String quickAddTitle(String name) {
    return '$name 기록 추가';
  }

  @override
  String get quickAddOpenApp => '앱 열기';

  @override
  String get foodPeanut => '땅콩';

  @override
  String get foodEgg => '달걀';

  @override
  String get foodDairy => '유제품';

  @override
  String get foodWheat => '밀';

  @override
  String get foodSoy => '콩';

  @override
  String get foodFish => '생선';

  @override
  String get foodShellfish => '갑각류·조개류';

  @override
  String get foodTreeNuts => '견과류';

  @override
  String get foodSesame => '참깨';

  @override
  String get foodBanana => '바나나';

  @override
  String get foodAvocado => '아보카도';

  @override
  String get foodSweetPotato => '고구마';

  @override
  String get foodRiceCereal => '쌀미음';

  @override
  String get foodOatmeal => '오트밀';

  @override
  String get foodCarrot => '당근';

  @override
  String get foodApple => '사과';

  @override
  String get foodPea => '완두콩';

  @override
  String get symptomRash => '발진';

  @override
  String get symptomHives => '두드러기';

  @override
  String get symptomVomiting => '구토';

  @override
  String get symptomDiarrhea => '설사';

  @override
  String get symptomSwelling => '부기';

  @override
  String get doseUnitDrops => '방울';

  @override
  String get doseUnitTablets => '정';

  @override
  String get bottleMaterialPlastic => '플라스틱';

  @override
  String get bottleMaterialGlass => '유리';

  @override
  String get bottleMaterialSilicone => '실리콘';

  @override
  String get bottleMaterialSteel => '스테인리스';

  @override
  String get visitReasonRoutine => '정기 검진';

  @override
  String get visitReasonSick => '아파서';

  @override
  String get visitReasonVaccination => '예방접종';

  @override
  String get visitReasonSpecialist => '전문의';

  @override
  String get visitReasonFollowUp => '재진';

  @override
  String get visitReasonOther => '기타';

  @override
  String get pooColourPale => '옅은 색';

  @override
  String get noteTagHappyDay => '행복한 날';

  @override
  String get noteTagSleptWell => '푹 잤어요';

  @override
  String get noteTagFussy => '보챘어요';

  @override
  String get noteTagNotWell => '컨디션 안 좋음';

  @override
  String get noteTagFirstTime => '처음으로!';

  @override
  String get noteTagTeething => '이가 나요';

  @override
  String get noteTagGrowthSpurt => '급성장기';

  @override
  String get noteTagMilestone => '성장 이정표';

  @override
  String get tummyTimeNotesHint => '예: 즐거워함, 보챔...';

  @override
  String get skinSuggestEczema => '습진';

  @override
  String get skinSuggestDiaperRash => '기저귀 발진';

  @override
  String get skinSuggestCradleCap => '지루성 피부염(유아 두피)';

  @override
  String get skinSuggestBabyAcne => '신생아 여드름';

  @override
  String get skinSuggestHeatRash => '땀띠';

  @override
  String get skinSuggestDrySkin => '건조한 피부';

  @override
  String get bodyFace => '얼굴';

  @override
  String get bodyScalp => '두피';

  @override
  String get bodyNeck => '목';

  @override
  String get bodyChest => '가슴';

  @override
  String get bodyBack => '등';

  @override
  String get bodyArms => '팔';

  @override
  String get bodyHands => '손';

  @override
  String get bodyDiaperArea => '기저귀 부위';

  @override
  String get bodyLegs => '다리';

  @override
  String get bodyFeet => '발';

  @override
  String get medSuggestGripeWater => '그라이프 워터';

  @override
  String get medSuggestVitaminD => '비타민 D';

  @override
  String get medSuggestIronDrops => '철분 드롭';

  @override
  String get medSuggestAntibiotic => '항생제';

  @override
  String get medSuggestProbiotic => '유산균';

  @override
  String vaccinePageTitle(String name) {
    return '$name — 예방접종';
  }

  @override
  String get vaccineDeleteTitle => '예방접종 기록을 삭제할까요?';

  @override
  String get vaccineSiteHint => '예: 왼쪽 허벅지';

  @override
  String get vaccineNotesHint => '예: 미열, 보챔, 반응 없음...';

  @override
  String get vaccineNoGivenHint => '+ 버튼을 쓰거나 일정 탭에서 \'접종 완료로 표시\'를 누르세요.';

  @override
  String get vaccineAgeBirth => '출생 시';

  @override
  String vaccineAgeMonths(String range) {
    return '$range개월';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range개월 (매년)';
  }

  @override
  String get whoTabHeight => '키';

  @override
  String get whoTabHead => '머리';

  @override
  String get whoChartFor => '차트 기준:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24개월)';
  }

  @override
  String get whoNoDataPoints => '아직 데이터가 없습니다. 측정값을 기록하면 차트에 아기가 표시됩니다.';

  @override
  String get whoLatestMeasurement => '최근 측정';

  @override
  String whoApproxPercentile(String value) {
    return '대략적인 백분위: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return '$low와 $high 사이';
  }

  @override
  String whoMonthsOld(String months) {
    return '생후 $months개월';
  }

  @override
  String get whoDisclaimer => '이 차트는 참고용입니다. 해석은 항상 소아과 의사에게 맡기세요.';

  @override
  String get whoMedian => 'P50 (중앙값)';

  @override
  String get notifChannelName => 'Baby Tracker 알림';

  @override
  String get notifChannelDesc => '수유, 기저귀, 약, 피부 확인 알림';

  @override
  String get notifFeedTitle => '수유할 시간이에요!';

  @override
  String notifFeedBody(String interval) {
    return '지난 $interval 동안 수유 기록이 없습니다.';
  }

  @override
  String get notifDiaperTitle => '기저귀 확인!';

  @override
  String notifDiaperBody(String interval) {
    return '지난 $interval 동안 기저귀 교체 기록이 없습니다.';
  }

  @override
  String notifDoseTitle(String name) {
    return '복용 시간: $name';
  }

  @override
  String notifDoseBody(String name) {
    return '$name 다음 복용 시간입니다.';
  }

  @override
  String notifSkinTitle(String name) {
    return '피부 확인: $name';
  }

  @override
  String get notifSkinBody => '오늘 기록을 추가하세요 (원하면 사진도).';

  @override
  String get timerFeedingNotif => '수유 타이머 작동 중';

  @override
  String intervalMinutes(String m) {
    return '$m분';
  }

  @override
  String intervalHours(String h) {
    return '$h시간';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h시간 $m분';
  }

  @override
  String get settingsRtlActive => '오른쪽에서 왼쪽 레이아웃 사용 중';

  @override
  String get measurementHeightIn => '키 (인치)';

  @override
  String get measurementHeadIn => '머리둘레 (인치)';

  @override
  String get growthHeightIn => '키 (인치)';

  @override
  String get growthHeadIn => '머리둘레 (인치)';

  @override
  String growthHeightValueIn(String value) {
    return '$value인치';
  }

  @override
  String growthHeadValueIn(String value) {
    return '머리 $value인치';
  }

  @override
  String get settingsLengthUnitNote => '길이 단위는 체중 단위를 따릅니다 (kg이면 cm, lbs면 인치)';

  @override
  String get formulaStoreBrand => 'PB 상품';

  @override
  String get pooShade1 => '분필 흰색';

  @override
  String get pooShade2 => '밝은 회색';

  @override
  String get pooShade3 => '점토빛 회색';

  @override
  String get pooShade4 => '크림색';

  @override
  String get pooShade5 => '진한 베이지';

  @override
  String get pooShade6 => '옅은 연두빛 노랑';

  @override
  String get pooShade7 => '겨자색';

  @override
  String get pooShade8 => '갈색';

  @override
  String get pooShade9 => '초록색';

  @override
  String get vaccineScheduleNote => '미국 CDC 일정을 기준으로 합니다. 사는 나라의 일정은 다를 수 있으니 의사의 조언을 따르세요.';

  @override
  String get settingsAbout => '앱 정보';

  @override
  String get aboutTitle => '앱 정보 및 라이선스';

  @override
  String aboutVersion(String version) {
    return '버전 $version';
  }

  @override
  String get aboutLicenseLine => 'GNU 일반 공중 사용 허가서(GPL) v3.0 이상으로 공개된 자유 소프트웨어입니다. 사용, 연구, 공유, 수정할 수 있습니다.';

  @override
  String get aboutSourceCode => '소스 코드';

  @override
  String get aboutDisclaimerTitle => '의료 조언이 아닙니다';

  @override
  String get aboutDisclaimerBody => 'Simple Baby Tracker는 나만의 기록을 위한 일기장입니다. 의료기기가 아니며 어떤 질환도 진단, 치료 또는 모니터링하지 않습니다. 성장 차트, 체온 범위, 투약 알림, 대변 색 메모는 일반 정보일 뿐이며 불완전하거나 틀릴 수 있습니다. 항상 의사나 약사의 조언을 따르고, 아기가 걱정되면 의사나 응급 서비스에 연락하세요.';

  @override
  String get aboutPrivacyTitle => '데이터는 이 휴대폰에만 있습니다';

  @override
  String get aboutPrivacyBody => '이 앱에는 인터넷 접근, 계정, 광고, 분석이 없습니다. 기록과 사진은 이 기기에만 저장됩니다. 직접 백업을 내보내 공유하지 않는 한 어떤 것도 밖으로 나가지 않습니다.';

  @override
  String get aboutCreditsTitle => '크레딧';

  @override
  String get aboutCreditsBody => '아이콘: Claude Design으로 제작.\n글꼴: Inter 및 Quicksand (SIL Open Font License 1.1).\n성장 차트: WHO 아동 성장 표준 (who.int).\n예방접종 일정: 미국 CDC 일정 기준.\nFlutter로 제작.';

  @override
  String get aboutLicencesButton => '오픈 소스 라이선스';
}
