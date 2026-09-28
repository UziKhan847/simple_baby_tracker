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
  String get exportJsonDesc => '백업용 원본 데이터';

  @override
  String get exportPdf => 'PDF로 내보내기';

  @override
  String get exportPdfDesc => '소아과 의사를 위한 읽기 쉬운 요약본';

  @override
  String get importJson => 'JSON에서 가져오기';

  @override
  String get importJsonDesc => '백업 파일에서 복원';

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
  String get settingsVolumeUnit => 'Milk volume unit';

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
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

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
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

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
}
