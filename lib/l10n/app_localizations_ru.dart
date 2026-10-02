// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Детский трекер';

  @override
  String get navHome => 'Главная';

  @override
  String get navGraphs => 'Графики';

  @override
  String get navMilestones => 'Вехи развития';

  @override
  String get navSettings => 'Настройки';

  @override
  String get actionCancel => 'Отмена';

  @override
  String get actionSave => 'Сохранить';

  @override
  String get actionUpdate => 'Обновить';

  @override
  String get actionDelete => 'Удалить';

  @override
  String get actionAdd => 'Добавить';

  @override
  String get actionEdit => 'Редактировать';

  @override
  String get actionClose => 'Закрыть';

  @override
  String get actionExport => 'Экспорт данных';

  @override
  String get actionAddDay => 'Добавить день';

  @override
  String get actionLog => 'Записать';

  @override
  String get cannotUndo => 'Это действие нельзя отменить.';

  @override
  String get noData => 'Нет данных';

  @override
  String get noNotes => 'Нет заметок';

  @override
  String get noDetails => 'Нет подробностей';

  @override
  String get optional => '(необязательно)';

  @override
  String get homeTitle => 'Трекер';

  @override
  String get feedsToday => 'Кормлений сегодня';

  @override
  String get diapersToday => 'Подгузников сегодня';

  @override
  String get sleepToday => 'Сон сегодня';

  @override
  String todayLabel(String date) {
    return 'Сегодня — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count события',
      many: '$count событий',
      few: '$count события',
      one: '1 событие',
      zero: 'нет событий',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Удалить день?';

  @override
  String deleteDayContent(String date) {
    return 'Удалить $date и все записи в нем? Это действие нельзя отменить.';
  }

  @override
  String get rashRecorded => 'Записана опрелость';

  @override
  String get noEntriesYet => 'Пока нет записей';

  @override
  String get addEntry => 'Добавить запись';

  @override
  String get deleteEntryTitle => 'Удалить запись?';

  @override
  String get entryTypeDiaper => 'Смена подгузника';

  @override
  String get entryTypeFeeding => 'Кормление';

  @override
  String get entryTypeSleep => 'Сон';

  @override
  String get entryTypeTemperature => 'Температура';

  @override
  String get entryTypeWeight => 'Вес';

  @override
  String get entryTypeTummyTime => 'Время на животе';

  @override
  String get entryTypeMedication => 'Лекарство';

  @override
  String get entryTypeDoctorVisit => 'Визит к врачу';

  @override
  String get entryTypeNote => 'Ежедневная заметка / дневник';

  @override
  String get entryTypePumping => 'Сессия сцеживания';

  @override
  String get entryTypeBath => 'Купание';

  @override
  String get diaperPeePoo => 'Подгузник — моча + кал';

  @override
  String get diaperPee => 'Подгузник — моча';

  @override
  String get diaperPoo => 'Подгузник — кал';

  @override
  String get diaperChange => 'Смена подгузника';

  @override
  String get editDiaper => 'Редактировать подгузник';

  @override
  String get diaperContents => 'Содержимое';

  @override
  String get diaperNone => 'Нет';

  @override
  String get diaperPeeLabel => 'Моча';

  @override
  String get diaperPooLabel => 'Кал';

  @override
  String get diaperBoth => 'И то, и другое';

  @override
  String get diaperConsistency => 'Консистенция';

  @override
  String get consistencyHard => 'Твердый / комочками';

  @override
  String get consistencyHardHint => 'Запор';

  @override
  String get consistencyFirm => 'Плотный';

  @override
  String get consistencyFirmHint => 'Слегка плотный';

  @override
  String get consistencyNormal => 'Нормальная';

  @override
  String get consistencyNormalHint => 'Здорово';

  @override
  String get consistencySoft => 'Мягкий';

  @override
  String get consistencySoftHint => 'Слегка мягкий';

  @override
  String get consistencyLoose => 'Жидкий / кашицеобразный';

  @override
  String get consistencyLooseHint => 'Наблюдать';

  @override
  String get consistencyWatery => 'Водянистый';

  @override
  String get consistencyWateryHint => 'Диарея';

  @override
  String get warnConstipation => 'Признаки запора — внимательно наблюдайте';

  @override
  String get warnDiarrhea => 'Признаки диареи — внимательно наблюдайте';

  @override
  String get pooColourLabel => 'Цвет (нажмите, чтобы выбрать)';

  @override
  String get pooColourAbnormal => '⚠️ Ненормальный (бледный)';

  @override
  String get pooColourNormal => '✅ Нормальный';

  @override
  String pooColourSelected(String label) {
    return 'Выбрано: $label';
  }

  @override
  String get diaperSize => 'Размер подгузника';

  @override
  String get diaperBrand => 'Бренд';

  @override
  String get diaperBrandCustomLabel => 'Название бренда';

  @override
  String get rashPresent => 'Опрелость присутствует';

  @override
  String get rashPresentHint => 'Покраснение, раздражение или опрелость';

  @override
  String get rashCreamUsed => 'Использован крем от опрелостей';

  @override
  String get rashCreamCustomLabel => 'Название крема / мази';

  @override
  String get rashFollowUpTitle => '⚠️ Наблюдение за опрелостью';

  @override
  String get rashFollowUpQuestion => 'В последнем подгузнике была отмечена опрелость. Улучшилось ли состояние?';

  @override
  String get rashImproved => 'Да, улучшилось';

  @override
  String get rashNoChange => 'Без изменений / ухудшилось';

  @override
  String get addFeeding => 'Добавить кормление';

  @override
  String get editFeeding => 'Редактировать кормление';

  @override
  String feedLabel(int number) {
    return 'Кормление $number';
  }

  @override
  String get feedModeBottle => 'Бутылочка';

  @override
  String get feedModeSuckle => 'Грудное вскармливание';

  @override
  String get feedAmountMl => 'Количество (мл)';

  @override
  String get feedType => 'Тип';

  @override
  String get feedBreastMilk => 'Грудное молоко';

  @override
  String get feedFormula => 'Смесь';

  @override
  String get feedFormulaBrand => 'Бренд смеси';

  @override
  String get feedFormulaBrandCustom => 'Название бренда смеси';

  @override
  String get feedDurationMinutes => 'Длительность (минуты)';

  @override
  String get addAnotherFeed => 'Добавить ещё одно кормление';

  @override
  String get bottleBreastMilk => 'Бутылочка — грудное молоко';

  @override
  String get bottleFormula => 'Бутылочка — смесь';

  @override
  String get breastfeedingSuckle => 'Грудное вскармливание';

  @override
  String get logSleep => 'Записать сон';

  @override
  String get editSleep => 'Редактировать сон';

  @override
  String get sleepStart => 'Начало сна';

  @override
  String get sleepWakeUp => 'Пробуждение';

  @override
  String sleepDuration(String duration) {
    return 'Длительность: $duration';
  }

  @override
  String get sleepInvalidTimes => 'Неверное время';

  @override
  String get sleepWrapsNextDay => '(заканчивается на следующий день)';

  @override
  String get sleepNotes => 'Заметки (необязательно)';

  @override
  String get sleepNotesHint => 'например: беспокойный, ненадолго просыпался...';

  @override
  String get sleepNoNotes => 'Нет заметок';

  @override
  String sleepHoursShort(int h, int m) {
    return '$hч $mм';
  }

  @override
  String get logTemperature => 'Записать температуру';

  @override
  String get editTemperature => 'Редактировать температуру';

  @override
  String get temperatureLabel => 'Температура';

  @override
  String get tempSeverityLow => 'Низкая температура — наблюдайте';

  @override
  String get tempSeverityNormal => 'Нормальная температура';

  @override
  String get tempSeverityElevated => 'Слегка повышена — внимательно наблюдайте';

  @override
  String get tempSeverityFever => 'Лихорадка — обратитесь к врачу';

  @override
  String get tempReference => 'Справочник температур';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ При лихорадке у младенцев младше 3 месяцев всегда консультируйтесь с педиатром.';

  @override
  String get tempLow => 'Низкая';

  @override
  String get tempNormal => 'Нормальная';

  @override
  String get tempElevated => 'Повышенная';

  @override
  String get tempFever => 'Лихорадка';

  @override
  String get tempLatest => 'Последняя температура';

  @override
  String get tempSummary => 'Сводка температур';

  @override
  String get tempFeverThreshold => 'Порог лихорадки';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count дней',
      few: '$count дня',
      one: '1 день',
      zero: '0 дней',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'Записать вес';

  @override
  String get editWeight => 'Редактировать вес';

  @override
  String get weightLabel => 'Вес';

  @override
  String weightGain(String amount) {
    return '+$amount прибавка';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount потеря';
  }

  @override
  String weightPrevious(String weight) {
    return 'Предыдущий: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'Последний раз: $weight $date';
  }

  @override
  String get weightLatest => 'Последний вес';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount за период';
  }

  @override
  String get tummyTimeLog => 'Записать время на животе';

  @override
  String get tummyTimeEdit => 'Редактировать время на животе';

  @override
  String get tummyTimeStart => 'Время начала';

  @override
  String get tummyTimeEnd => 'Время окончания';

  @override
  String get tummyTimeTip => 'Время на животе укрепляет мышцы шеи и плеч.';

  @override
  String get medicationLog => 'Записать лекарство';

  @override
  String get medicationEdit => 'Редактировать лекарство';

  @override
  String get medicationName => 'Название лекарства *';

  @override
  String get medicationDose => 'Доза';

  @override
  String get medicationUnit => 'Единица';

  @override
  String get medicationCommon => 'Распространённые лекарства';

  @override
  String get medicationWarning => 'Всегда следуйте инструкциям по дозировке в зависимости от веса/возраста. Не превышайте рекомендуемую частоту.';

  @override
  String get medicationNotes => 'Заметки (необязательно)';

  @override
  String get medicationNotesHint => 'например: причина, реакция...';

  @override
  String get doctorVisitLog => 'Визит к врачу';

  @override
  String get doctorVisitEdit => 'Редактировать визит к врачу';

  @override
  String get doctorName => 'Имя врача / клиники';

  @override
  String get doctorVisitReason => 'Причина визита';

  @override
  String get doctorVisitMeasurements => 'Измерения (необязательно)';

  @override
  String get doctorVisitNotes => 'Заметки';

  @override
  String get doctorVisitNotesHint => 'например: сделанные прививки, рекомендации врача...';

  @override
  String get measurementWeightKg => 'Вес (кг)';

  @override
  String get measurementWeightLbs => 'Вес (фунты)';

  @override
  String get measurementHeightCm => 'Длина / рост (см)';

  @override
  String get measurementHeadCm => 'Окружность головы (см)';

  @override
  String get dailyNoteLog => 'Ежедневная заметка';

  @override
  String get dailyNoteEdit => 'Редактировать заметку';

  @override
  String get dailyNoteTitle => 'Заголовок (необязательно)';

  @override
  String get dailyNoteText => 'Заметка';

  @override
  String get dailyNoteHint => 'Что случилось сегодня? Первый переворот? Беспокойное утро?';

  @override
  String get dailyNoteTags => 'Быстрые теги';

  @override
  String get pumpingLog => 'Записать сессию сцеживания';

  @override
  String get pumpingEdit => 'Редактировать сессию сцеживания';

  @override
  String get pumpingLeft => 'Левая грудь (мл)';

  @override
  String get pumpingRight => 'Правая грудь (мл)';

  @override
  String get pumpingTotal => 'Всего сцежено';

  @override
  String get pumpingDuration => 'Длительность (минуты)';

  @override
  String get pumpingStored => 'Хранится / заморожено';

  @override
  String get pumpingNotes => 'Заметки (необязательно)';

  @override
  String get pumpingSessionTitle => 'Сцеживание';

  @override
  String pumpingTotalMl(int ml) {
    return 'Всего $ml мл';
  }

  @override
  String get bathLog => 'Записать купание';

  @override
  String get bathEdit => 'Редактировать купание';

  @override
  String get bathType => 'Тип купания';

  @override
  String get bathTypeSponge => 'Обтирание губкой';

  @override
  String get bathTypeTub => 'Купание в ванне';

  @override
  String get bathTypeShower => 'Душ';

  @override
  String get bathNotes => 'Заметки (необязательно)';

  @override
  String get bathProducts => 'Использованные средства (необязательно)';

  @override
  String get vaccineTitle => 'Вакцинация';

  @override
  String get vaccineTabGiven => 'Сделано';

  @override
  String get vaccineTabSchedule => 'График';

  @override
  String get vaccineLog => 'Записать вакцину';

  @override
  String get vaccineEdit => 'Редактировать вакцину';

  @override
  String get vaccineName => 'Название вакцины';

  @override
  String get vaccineBrand => 'Бренд / производитель (необязательно)';

  @override
  String get vaccineDate => 'Дата введения';

  @override
  String get vaccineDose => 'Номер дозы (необязательно)';

  @override
  String get vaccineSite => 'Место инъекции (необязательно)';

  @override
  String get vaccineNotes => 'Заметки / реакции';

  @override
  String vaccineDue(String age) {
    return 'Плановая в $age';
  }

  @override
  String get vaccineGiven => 'Сделано';

  @override
  String get vaccineNoGiven => 'Пока не записано ни одной вакцины.';

  @override
  String get vaccineMarkGiven => 'Отметить как сделанную';

  @override
  String get whoChartTitle => 'Графики роста ВОЗ';

  @override
  String get whoWeightForAge => 'Вес по возрасту';

  @override
  String get whoHeightForAge => 'Длина/рост по возрасту';

  @override
  String get whoHeadForAge => 'Окружность головы по возрасту';

  @override
  String get whoGenderBoy => 'Мальчик';

  @override
  String get whoGenderGirl => 'Девочка';

  @override
  String get whoNoData => 'Пока не записано никаких измерений.\nЗапишите вес из записей дня, чтобы увидеть график.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'Ваш ребёнок';

  @override
  String whoAgeMonths(int n) {
    return '$n мес';
  }

  @override
  String get whoNoBirthDate => 'Установите дату рождения ребёнка в профиле, чтобы видеть графики по возрасту.';

  @override
  String get notifTitle => 'Напоминания';

  @override
  String get notifFeedingReminder => 'Напоминание о кормлении';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'Напомнить мне через $hours ч, если кормление не записано';
  }

  @override
  String get notifDiaperReminder => 'Напоминание о подгузнике';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'Напомнить мне через $hours ч, если подгузник не записан';
  }

  @override
  String get notifMedicationReminder => 'Напоминание о лекарстве';

  @override
  String get notifEnabled => 'Уведомления включены';

  @override
  String get notifDisabled => 'Уведомления отключены';

  @override
  String get notifPermissionRequired => 'Пожалуйста, включите уведомления в настройках устройства.';

  @override
  String get exportTitle => 'Экспорт и резервное копирование';

  @override
  String get exportJson => 'Экспорт резервной копии';

  @override
  String get exportJsonDesc => 'Все данные и фото в одном файле .zip';

  @override
  String get exportPdf => 'Экспорт в PDF';

  @override
  String get exportPdfDesc => 'Читаемая сводка для вашего педиатра';

  @override
  String get importJson => 'Восстановить из копии';

  @override
  String get importJsonDesc => 'Из резервной копии .zip (или старого экспорта .json)';

  @override
  String get importDialogTitle => 'Импортировать данные?';

  @override
  String get importDialogBody => 'Объединение добавляет записи из файла к вашим существующим данным. Полная замена сначала удаляет ваши существующие данные.';

  @override
  String get importMerge => 'Объединить';

  @override
  String get importReplaceAll => 'Заменить всё';

  @override
  String get importSuccess => 'Импорт завершён';

  @override
  String get importInvalidFile => 'Это не похоже на файл экспорта Baby Tracker.';

  @override
  String get exportGoogleDrive => 'Резервное копирование в Google Диск';

  @override
  String get exportGenerating => 'Создание отчёта...';

  @override
  String get milestoneTitle => 'Вехи развития';

  @override
  String get milestoneTabAchieved => 'Достигнуто';

  @override
  String get milestoneTabUpcoming => 'Предстоящие';

  @override
  String get milestoneCustomAdd => 'Индивидуальная веха';

  @override
  String get milestoneDeleteTitle => 'Удалить веху?';

  @override
  String get milestoneEdit => 'Редактировать веху';

  @override
  String get milestoneAdd => 'Добавить веху';

  @override
  String get milestoneName => 'Название вехи *';

  @override
  String get milestoneDate => 'Дата достижения';

  @override
  String get milestoneNotes => 'Заметки (необязательно)';

  @override
  String get milestoneNotesHint => 'Любые детали, которые стоит запомнить...';

  @override
  String get milestoneNoAchieved => 'Пока не записано ни одной вехи.';

  @override
  String get milestoneAllDone => 'Все установленные вехи достигнуты!';

  @override
  String get milestoneFirstSmile => 'Первая улыбка';

  @override
  String get milestoneFirstLaugh => 'Первый смех';

  @override
  String get milestoneFirstTooth => 'Первый зуб';

  @override
  String get milestoneRolledBackTummy => 'Перевернулся со спины на живот';

  @override
  String get milestoneRolledTummyBack => 'Перевернулся с живота на спину';

  @override
  String get milestoneSatUnsupported => 'Сидит без опоры';

  @override
  String get milestoneStartedCrawling => 'Начал ползать';

  @override
  String get milestonePulledToStand => 'Встает с опорой';

  @override
  String get milestoneFirstSteps => 'Первые шаги';

  @override
  String get milestoneFirstWord => 'Первое слово';

  @override
  String get milestoneFirstSolidFood => 'Первая твёрдая пища';

  @override
  String get milestoneFirstHaircut => 'Первая стрижка';

  @override
  String get milestoneSleptThroughNight => 'Спал всю ночь';

  @override
  String get milestoneWavedBye => 'Помахал рукой «пока»';

  @override
  String get milestoneClappedHands => 'Похлопал в ладоши';

  @override
  String get milestoneFirstBirthday => 'Первый день рождения';

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get settingsAppearance => 'Внешний вид';

  @override
  String get settingsDarkMode => 'Тёмный режим';

  @override
  String get settingsDarkActive => 'Тёмная тема активна';

  @override
  String get settingsLightActive => 'Светлая тема активна';

  @override
  String get settingsUnits => 'Единицы измерения';

  @override
  String get settingsWeightUnit => 'Единица веса';

  @override
  String get settingsTempUnit => 'Единица температуры';

  @override
  String get settingsVolumeUnit => 'Единица объёма молока';

  @override
  String get settingsLanguage => 'Язык';

  @override
  String get settingsNotifications => 'Уведомления и напоминания';

  @override
  String get settingsExport => 'Экспорт и резервное копирование';

  @override
  String get settingsTips => 'Советы';

  @override
  String get tipSwitchBabies => 'Переключение между детьми';

  @override
  String get tipSwitchBabiesDesc => 'Нажмите на аватар ребёнка вверху, чтобы переключиться или добавить профиль ребёнка.';

  @override
  String get tipSwipeDelete => 'Смахните влево для удаления';

  @override
  String get tipSwipeDeleteDesc => 'Работает с плитками дней и отдельными записями.';

  @override
  String get tipTapToEdit => 'Нажмите на любую запись, чтобы отредактировать её';

  @override
  String get tipMultipleFeeds => 'Запись нескольких кормлений';

  @override
  String get tipMultipleFeedsDesc => 'В форме кормления нажмите «Добавить ещё одно кормление», чтобы записать грудное вскармливание и бутылочку за один раз.';

  @override
  String get tipExportData => 'Экспорт данных';

  @override
  String get tipExportDataDesc => 'Нажмите значок «Поделиться» на главной, чтобы сохранить все данные и фото в один файл.';

  @override
  String get babiesTitle => 'Дети';

  @override
  String get addBaby => 'Добавить ребёнка';

  @override
  String get editProfile => 'Редактировать профиль';

  @override
  String get babyNameRequired => 'Имя *';

  @override
  String get babyDobOptional => 'Дата рождения (необязательно)';

  @override
  String babyBornOn(String date) {
    return 'Родился $date';
  }

  @override
  String get genderUnknown => 'Не указан';

  @override
  String get genderBoy => 'Мальчик';

  @override
  String get genderGirl => 'Девочка';

  @override
  String get cannotDeleteOnlyProfile => 'Нельзя удалить единственный профиль ребёнка.';

  @override
  String deleteProfileTitle(String name) {
    return 'Удалить $name?';
  }

  @override
  String get deleteProfileContent => 'Все данные этого ребёнка будут безвозвратно удалены.';

  @override
  String get graphsTitle => 'Графики';

  @override
  String get graphsTabDaily => 'Дневные';

  @override
  String get graphsTabGrowth => 'Рост';

  @override
  String get graphsTabHealth => 'Здоровье';

  @override
  String get graphsTabWho => 'Графики ВОЗ';

  @override
  String get graphsTotalFeeds => 'Всего кормлений';

  @override
  String get graphsAvgPerDay => 'Среднее/день';

  @override
  String get graphsTotalDiapers => 'Подгузники';

  @override
  String get graphsTotalMilk => 'Всего молока';

  @override
  String get graphsTotalSleep => 'Всего сна';

  @override
  String get graphsAvgSleep => 'Средний сон/день';

  @override
  String get graphsFeedsPerDay => 'Кормлений в день';

  @override
  String get graphsDiapersPerDay => 'Подгузников в день';

  @override
  String get graphsMilkPerDay => 'Молока в день (мл)';

  @override
  String get graphsMilkPerDayMl => 'Молоко в день (мл)';

  @override
  String get graphsMilkPerDayOz => 'Молоко в день (унц.)';

  @override
  String get graphsSleepPerDay => 'Сна в день (часы)';

  @override
  String get graphsWeightOverTime => 'Вес во времени';

  @override
  String get graphsTempOverTime => 'Температура во времени';

  @override
  String graphsMaxLabel(String value) {
    return 'Макс: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Мин: $value';
  }

  @override
  String get graphsNoWeightData => 'Пока нет записей веса.\nЗапишите вес из дневных записей.';

  @override
  String get graphsNoTempData => 'Пока нет записей температуры.\nЗапишите температуру за какой-либо день.';

  @override
  String get timeLabel => 'Время';

  @override
  String get noColourRecorded => 'Цвет не записан';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count дней',
      few: '$count дня',
      one: '1 день',
      zero: 'новорождённый',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count месяца',
      many: '$count месяцев',
      few: '$count месяца',
      one: '1 месяц',
      zero: 'менее 1 месяца',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years г $months мес';
  }

  @override
  String medicationLabel(String name) {
    return 'Лекарство: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'Визит';

  @override
  String doctorVisitLabel(String reason) {
    return 'Визит к врачу — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 Заметка';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'Врач: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'Врач не указан';

  @override
  String get summaryPoosLabel => 'Кал';

  @override
  String get summaryPeesLabel => 'Моча';

  @override
  String get summaryMilkLabel => 'Молоко мл';

  @override
  String get summaryMilkLabelMl => 'Молоко мл';

  @override
  String get summaryMilkLabelOz => 'Молоко унц.';

  @override
  String get summaryBreastLabel => 'Гр. вскармл. мин';

  @override
  String get summarySleepLabel => 'Сон';

  @override
  String get settingsOledMode => 'OLED (чистый чёрный)';

  @override
  String get settingsOledModeDesc => 'Использовать чистый чёрный фон для экономии заряда на OLED-экранах';

  @override
  String get settingsImmersiveMode => 'Полноэкранный режим';

  @override
  String get settingsImmersiveModeDesc => 'Скрыть системные панели состояния и навигации';

  @override
  String get navVaccinationsEntry => 'Вакцинация';

  @override
  String get whoChartsEntry => 'Графики роста ВОЗ';

  @override
  String get medicationEditTitle => 'Изменить лекарство';

  @override
  String get medicationLogTitle => 'Записать лекарство';

  @override
  String get medicationYourCourses => 'Ваши курсы';

  @override
  String get medicationManageCourses => 'Управление курсами';

  @override
  String get medicationNameRequired => 'Название лекарства *';

  @override
  String get medicationDosageWarning => 'Всегда соблюдайте дозировку по весу/возрасту. Не превышайте рекомендуемую частоту.';

  @override
  String get medicationNotesOptional => 'Заметки (необязательно)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count минуты назад',
      many: '$count минут назад',
      few: '$count минуты назад',
      one: '$count минуту назад',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count часа назад',
      many: '$count часов назад',
      few: '$count часа назад',
      one: '$count час назад',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня назад',
      many: '$count дней назад',
      few: '$count дня назад',
      one: '$count день назад',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'Последний приём $ago';
  }

  @override
  String get medicationNeverGiven => 'Ещё не давали';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дозы сегодня',
      many: '$count доз сегодня',
      few: '$count дозы сегодня',
      one: '$count доза сегодня',
      zero: 'Сегодня доз не было',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'Следующая доза — не раньше чем через $hours ч после предыдущей';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'Дневной лимит этого курса ($max) уже достигнут';
  }

  @override
  String get medicationEditCourse => 'Изменить курс';

  @override
  String get medicationNewCourse => 'Новый курс';

  @override
  String get medicationReasonOptional => 'Причина (необязательно)';

  @override
  String get medicationIntervalHoursOptional => 'Повторять каждые (часов, необязательно)';

  @override
  String get medicationMaxPerDayOptional => 'Макс. доз в день (необязательно)';

  @override
  String get medicationRemindNextDose => 'Напомнить, когда подойдёт время следующей дозы';

  @override
  String medicationEndCourseTitle(String name) {
    return 'Завершить $name?';
  }

  @override
  String get medicationEndCoursePrompt => 'Как прошло?';

  @override
  String get medicationDeleteCourseTitle => 'Удалить этот курс?';

  @override
  String get medicationResultWorked => 'Помогло';

  @override
  String get medicationResultPartlyWorked => 'Частично помогло';

  @override
  String get medicationResultDidntWork => 'Не помогло';

  @override
  String get medicationResultSideEffects => 'Побочные эффекты';

  @override
  String get medicationResultNone => 'Без оценки';

  @override
  String get medicationsTitle => 'Лекарства';

  @override
  String medicationActiveTab(int count) {
    return 'Текущие ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'Завершённые ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'Нет текущих курсов лечения.\nНачните новый кнопкой +.';

  @override
  String get medicationNoPastCourses => 'Завершённых курсов пока нет.';

  @override
  String medicationTimesGiven(int count) {
    return 'Дано $count×';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'Последний: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'Следующий $time';
  }

  @override
  String get medicationEndCourse => 'Завершить курс';

  @override
  String feedLastSideHint(String side) {
    return 'В прошлый раз: $side';
  }

  @override
  String get feedSideLeft => 'Левая';

  @override
  String get feedSideRight => 'Правая';

  @override
  String get feedSideBoth => 'Обе';

  @override
  String get feedSideLeftMinutes => 'Левая (мин)';

  @override
  String get feedSideRightMinutes => 'Правая (мин)';

  @override
  String get timeAgoJustNow => 'Только что';

  @override
  String get timeUntilOverdue => 'Просрочено';

  @override
  String timeUntilMinutes(int count) {
    return 'через $count мин';
  }

  @override
  String timeUntilHours(int count) {
    return 'через $count ч';
  }

  @override
  String timeUntilDays(int count) {
    return 'через $count дн.';
  }

  @override
  String get timerDiscardTitle => 'Сбросить этот таймер?';

  @override
  String get timerDiscard => 'Сбросить';

  @override
  String timerFeedingRunning(String side) {
    return 'Кормление · $side';
  }

  @override
  String get timerSleepRunning => 'Таймер сна запущен';

  @override
  String get timerSwitchSide => 'Сменить грудь';

  @override
  String get timerStop => 'Стоп';

  @override
  String get sinceLastFeed => 'Последнее кормление';

  @override
  String get sinceLastDiaper => 'Последний подгузник';

  @override
  String get sinceAwake => 'Бодрствует';

  @override
  String get sinceAsleep => 'Спит';

  @override
  String nextDoseDue(String name) {
    return 'Пора: $name';
  }

  @override
  String get weighConditionNaked => 'Без одежды';

  @override
  String get weighConditionDiaper => 'Только подгузник';

  @override
  String get weighConditionLightClothes => 'Лёгкая одежда';

  @override
  String get weighConditionDressed => 'В одежде';

  @override
  String get weighCondition => 'Взвешен(а)';

  @override
  String get growthMeasurementsOptional => 'Другие измерения (необязательно)';

  @override
  String get growthHeightCm => 'Рост (см)';

  @override
  String get growthHeadCm => 'Окружность головы (см)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'В прошлый раз взвешивали: $condition — разница может быть не только из-за роста';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm см';
  }

  @override
  String growthHeadValue(String cm) {
    return 'Голова $cm см';
  }

  @override
  String get growthHeightOverTime => 'Рост по времени';

  @override
  String get growthHeadOverTime => 'Окружность головы по времени';

  @override
  String get graphsRecentWeighIns => 'Последние взвешивания';

  @override
  String get solidsAmountFewSpoons => 'Несколько ложек';

  @override
  String get solidsAmountHalf => 'Половина порции';

  @override
  String get solidsAmountFull => 'Полная порция';

  @override
  String get solidsAmountTaste => 'Только попробовал(а)';

  @override
  String get solidsReactionMild => 'Лёгкая реакция';

  @override
  String get solidsReactionAllergic => 'Аллергическая реакция';

  @override
  String get solidsReactionNone => 'Без реакции';

  @override
  String get solidsEditTitle => 'Изменить прикорм';

  @override
  String get solidsLogTitle => 'Записать прикорм';

  @override
  String get solidsFoodsLabel => 'Продукты';

  @override
  String get solidsAddFoodHint => 'Добавить продукт';

  @override
  String get solidsAmount => 'Количество';

  @override
  String get solidsLiked => 'Понравилось?';

  @override
  String get solidsReaction => 'Реакция';

  @override
  String get solidsNotesOptional => 'Заметки (необязательно)';

  @override
  String get foodsTitle => 'Опробованные продукты';

  @override
  String get foodsEmpty => 'Прикорм пока не записан.';

  @override
  String get foodsAllergensNotYet => 'Частые аллергены, ещё не введённые';

  @override
  String foodsTriedCount(int count) {
    return 'Опробовано продуктов: $count';
  }

  @override
  String foodsFirstTried(String date) {
    return 'Впервые: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'Прикорм';

  @override
  String get feedAmountOz => 'Количество (унц.)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'Напомнить через $interval после последнего кормления';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'Напомнить через $interval после последнего подгузника';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'Каждые $interval';
  }

  @override
  String get notifIntervalTitle => 'Интервал напоминания';

  @override
  String get notifIntervalHours => 'Часы';

  @override
  String get notifIntervalMinutes => 'Минуты';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'Не меньше $minutes минут';
  }

  @override
  String get settingsFeeding => 'Кормление';

  @override
  String get settingsTrackBottles => 'Учитывать бутылочки';

  @override
  String get settingsTrackBottlesDesc => 'Выбирать, какая бутылочка использовалась, и сколько приготовлено и выпито';

  @override
  String get bottlesTitle => 'Мои бутылочки';

  @override
  String get bottlesEmpty => 'Бутылочек пока нет.\nДобавьте свои бутылочки, чтобы выбирать их при записи кормления.';

  @override
  String get bottleAdd => 'Добавить бутылочку';

  @override
  String get bottleEdit => 'Изменить бутылочку';

  @override
  String get bottleLabel => 'Метка / номер (напр. #3)';

  @override
  String get bottleBrand => 'Марка / тип (необязательно)';

  @override
  String get bottleCapacity => 'Объём (необязательно)';

  @override
  String get bottleNipple => 'Размер / поток соски (необязательно)';

  @override
  String get bottleMaterial => 'Материал';

  @override
  String get bottleRetired => 'Не используется';

  @override
  String get bottleRetire => 'Убрать из использования';

  @override
  String get bottleUnretire => 'Использовать снова';

  @override
  String bottleDeleteTitle(String name) {
    return 'Удалить $name?';
  }

  @override
  String get bottleDeleteBody => 'Прошлые кормления сохранят объёмы, но больше не будут показывать эту бутылочку. Чтобы скрыть её из списка и сохранить историю, лучше уберите её из использования.';

  @override
  String get feedPrepared => 'Приготовлено';

  @override
  String get feedDrank => 'Выпито';

  @override
  String feedLeftover(String amount) {
    return 'Осталось $amount';
  }

  @override
  String get feedDrankMoreThanPrepared => 'Больше, чем приготовлено?';

  @override
  String get feedWhichBottle => 'Какая бутылочка?';

  @override
  String get feedNoBottlesYet => 'Бутылочек пока нет — добавьте их в Настройки → Мои бутылочки.';

  @override
  String get photoPrivacyTitle => 'Ваши фото остаются на этом телефоне';

  @override
  String get photoPrivacyBody => 'Фото хранятся только внутри этого приложения на этом устройстве. У приложения нет доступа к интернету, поэтому ничего никогда не загружается и не передаётся, если вы сами не экспортируете резервную копию.\n\nAndroid может запросить доступ к камере, когда вы впервые сделаете фото.';

  @override
  String get photoPrivacyContinue => 'Продолжить';

  @override
  String get photoTakePhoto => 'Сделать фото';

  @override
  String get photoChooseFromGallery => 'Выбрать из галереи';

  @override
  String get photoCaption => 'Подпись';

  @override
  String get photoCompare => 'Первое и последнее';

  @override
  String get photoAddOtherDay => 'Добавить за другой день';

  @override
  String get photoEmpty => 'Фото пока нет.\nДелайте по фото в день и смотрите, как растёт малыш.';

  @override
  String get photoToday => 'Фото дня';

  @override
  String get photoAddToday => 'Добавить фото дня';

  @override
  String get photoReplace => 'Заменить';

  @override
  String get photoDeleteTitle => 'Удалить это фото?';

  @override
  String get ageBeforeBirth => 'До рождения';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count дней',
      few: '$count дня',
      one: '$count день',
      zero: 'День рождения',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months мес. $days дн.';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years г. $months мес.';
  }

  @override
  String get navMemories => 'Воспоминания';

  @override
  String get memoriesTabPhotos => 'Фото';

  @override
  String get milestoneNoAchievedHint => 'Нажмите «Предстоящие», чтобы отметить готовый этап,\nили кнопку ниже, чтобы добавить свой.';

  @override
  String get skinTitle => 'Проблемы с кожей';

  @override
  String get skinNew => 'Новая проблема с кожей';

  @override
  String get skinEdit => 'Изменить проблему с кожей';

  @override
  String skinTabActive(int count) {
    return 'Текущие ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'Прошедшие ($count)';
  }

  @override
  String get skinEmptyActive => 'Проблемы с кожей не отслеживаются.\nНажмите +, чтобы начать — можно добавлять фото каждый день, чтобы показать врачу, как всё меняется.';

  @override
  String get skinEmptyHealed => 'Пока ничего не прошло.';

  @override
  String get skinUpdateDue => 'Обновить сегодня';

  @override
  String skinSince(String date) {
    return 'С $date';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count дней',
      few: '$count дня',
      one: '$count день',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return 'Прошло $date';
  }

  @override
  String skinReminderAt(String time) {
    return 'Ежедневное напоминание в $time';
  }

  @override
  String get skinSeverityTrend => 'Тяжесть по времени';

  @override
  String get skinNoUpdates => 'Записей пока нет. Добавьте сегодняшнюю, чтобы начать историю.';

  @override
  String get skinExportPdf => 'Экспорт для врача (PDF)';

  @override
  String get skinMarkHealed => 'Отметить как прошедшее';

  @override
  String get skinReopen => 'Снова отметить как текущее';

  @override
  String get skinUpdateToday => 'Добавить запись за сегодня';

  @override
  String get skinEditToday => 'Изменить запись за сегодня';

  @override
  String skinDeleteTitle(String name) {
    return 'Удалить «$name» и все записи?';
  }

  @override
  String get skinDeleteUpdateTitle => 'Удалить эту запись?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'Лечение: $treatment';
  }

  @override
  String get skinName => 'Проблема *';

  @override
  String get skinBodyArea => 'Где на теле?';

  @override
  String get skinBegan => 'Началось';

  @override
  String get skinRemindDaily => 'Напоминать обновлять каждый день';

  @override
  String get skinReminderTime => 'Время напоминания';

  @override
  String get skinUpdateTitle => 'Запись о коже';

  @override
  String get skinSeverity => 'Как выглядит?';

  @override
  String get skinSeverity0 => '0 · Чисто';

  @override
  String get skinSeverity1 => '1 · Слабо';

  @override
  String get skinSeverity2 => '2 · Умеренно';

  @override
  String get skinSeverity3 => '3 · Сильно';

  @override
  String get skinSeverity4 => '4 · Очень сильно';

  @override
  String get skinTreatment => 'Лечение (необязательно)';

  @override
  String get skinTreatmentHint => 'напр. увлажняющий крем, гидрокортизон 1%';

  @override
  String get skinAddPhoto => 'Добавить фото';

  @override
  String get skinCardNone => 'Отслеживайте сыпь, экзему или другую проблему с кожей день за днём, с фото для врача';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ждут записи за сегодня',
      many: '$count ждут записи за сегодня',
      few: '$count ждут записи за сегодня',
      one: '$count ждёт записи за сегодня',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'Подготовка резервной копии…';

  @override
  String get backupFailed => 'Не удалось создать резервную копию.';

  @override
  String get backupSavedTo => 'Копия сохранена в:';

  @override
  String get backupShareSubject => 'Резервная копия Baby Tracker';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Включает $count фото.',
      many: 'Включает $count фото.',
      few: 'Включает $count фото.',
      one: 'Включает $count фото.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'Кормление';

  @override
  String get widgetStopFeed => 'Стоп кормление';

  @override
  String get widgetDiaper => 'Подгузник';

  @override
  String get widgetSleep => 'Сон';

  @override
  String get widgetWakeUp => 'Проснулся';

  @override
  String widgetFeedingFor(String duration) {
    return 'Кормление $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'Ел(а) $ago';
  }

  @override
  String get widgetNoFeedsYet => 'Кормлений пока нет';

  @override
  String widgetChangedAgo(String ago) {
    return 'Сменён $ago';
  }

  @override
  String get widgetNoDiapersYet => 'Подгузников пока нет';

  @override
  String widgetAsleepFor(String duration) {
    return 'Спит $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'Проснулся $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Сначала остановите таймер сна';

  @override
  String get widgetStopFeedFirst => 'Сначала остановите таймер кормления';

  @override
  String quickAddTitle(String name) {
    return 'Добавить для $name';
  }

  @override
  String get quickAddOpenApp => 'Открыть приложение';

  @override
  String get foodPeanut => 'Арахис';

  @override
  String get foodEgg => 'Яйцо';

  @override
  String get foodDairy => 'Молочные продукты';

  @override
  String get foodWheat => 'Пшеница';

  @override
  String get foodSoy => 'Соя';

  @override
  String get foodFish => 'Рыба';

  @override
  String get foodShellfish => 'Моллюски и ракообразные';

  @override
  String get foodTreeNuts => 'Орехи';

  @override
  String get foodSesame => 'Кунжут';

  @override
  String get foodBanana => 'Банан';

  @override
  String get foodAvocado => 'Авокадо';

  @override
  String get foodSweetPotato => 'Батат';

  @override
  String get foodRiceCereal => 'Рисовая каша';

  @override
  String get foodOatmeal => 'Овсянка';

  @override
  String get foodCarrot => 'Морковь';

  @override
  String get foodApple => 'Яблоко';

  @override
  String get foodPea => 'Горошек';

  @override
  String get symptomRash => 'Сыпь';

  @override
  String get symptomHives => 'Крапивница';

  @override
  String get symptomVomiting => 'Рвота';

  @override
  String get symptomDiarrhea => 'Диарея';

  @override
  String get symptomSwelling => 'Отёк';

  @override
  String get doseUnitDrops => 'капли';

  @override
  String get doseUnitTablets => 'таблетки';

  @override
  String get bottleMaterialPlastic => 'Пластик';

  @override
  String get bottleMaterialGlass => 'Стекло';

  @override
  String get bottleMaterialSilicone => 'Силикон';

  @override
  String get bottleMaterialSteel => 'Нержавеющая сталь';

  @override
  String get visitReasonRoutine => 'Плановый осмотр';

  @override
  String get visitReasonSick => 'По болезни';

  @override
  String get visitReasonVaccination => 'Прививка';

  @override
  String get visitReasonSpecialist => 'Специалист';

  @override
  String get visitReasonFollowUp => 'Повторный приём';

  @override
  String get visitReasonOther => 'Другое';

  @override
  String get pooColourPale => 'Светлый';

  @override
  String get noteTagHappyDay => 'Счастливый день';

  @override
  String get noteTagSleptWell => 'Хорошо спал(а)';

  @override
  String get noteTagFussy => 'Капризничал(а)';

  @override
  String get noteTagNotWell => 'Плохо себя чувствовал(а)';

  @override
  String get noteTagFirstTime => 'Впервые!';

  @override
  String get noteTagTeething => 'Режутся зубки';

  @override
  String get noteTagGrowthSpurt => 'Скачок роста';

  @override
  String get noteTagMilestone => 'Новый этап';

  @override
  String get tummyTimeNotesHint => 'напр. понравилось, капризничал(а)...';

  @override
  String get skinSuggestEczema => 'Экзема';

  @override
  String get skinSuggestDiaperRash => 'Опрелости';

  @override
  String get skinSuggestCradleCap => 'Гнейс (молочные корочки)';

  @override
  String get skinSuggestBabyAcne => 'Акне новорождённых';

  @override
  String get skinSuggestHeatRash => 'Потница';

  @override
  String get skinSuggestDrySkin => 'Сухая кожа';

  @override
  String get bodyFace => 'Лицо';

  @override
  String get bodyScalp => 'Кожа головы';

  @override
  String get bodyNeck => 'Шея';

  @override
  String get bodyChest => 'Грудь';

  @override
  String get bodyBack => 'Спина';

  @override
  String get bodyArms => 'Руки';

  @override
  String get bodyHands => 'Кисти';

  @override
  String get bodyDiaperArea => 'Зона подгузника';

  @override
  String get bodyLegs => 'Ноги';

  @override
  String get bodyFeet => 'Стопы';

  @override
  String get medSuggestGripeWater => 'Укропная водичка';

  @override
  String get medSuggestVitaminD => 'Витамин D';

  @override
  String get medSuggestIronDrops => 'Капли железа';

  @override
  String get medSuggestAntibiotic => 'Антибиотик';

  @override
  String get medSuggestProbiotic => 'Пробиотик';

  @override
  String vaccinePageTitle(String name) {
    return '$name — прививки';
  }

  @override
  String get vaccineDeleteTitle => 'Удалить запись о прививке?';

  @override
  String get vaccineSiteHint => 'напр. левое бедро';

  @override
  String get vaccineNotesHint => 'напр. небольшая температура, капризы, без реакции...';

  @override
  String get vaccineNoGivenHint => 'Нажмите + или «Отметить как сделанную» на вкладке «График».';

  @override
  String get vaccineAgeBirth => 'При рождении';

  @override
  String vaccineAgeMonths(String range) {
    return '$range мес.';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range мес. (ежегодно)';
  }

  @override
  String get whoTabHeight => 'Рост';

  @override
  String get whoTabHead => 'Голова';

  @override
  String get whoChartFor => 'График для:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 мес.)';
  }

  @override
  String get whoNoDataPoints => 'Данных пока нет. Запишите измерения, чтобы увидеть малыша на графике.';

  @override
  String get whoLatestMeasurement => 'Последнее измерение';

  @override
  String whoApproxPercentile(String value) {
    return 'Примерный перцентиль: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return 'между $low и $high';
  }

  @override
  String whoMonthsOld(String months) {
    return '$months мес.';
  }

  @override
  String get whoDisclaimer => 'Эти графики носят справочный характер. Для интерпретации всегда обращайтесь к педиатру.';

  @override
  String get whoMedian => 'P50 (медиана)';

  @override
  String get notifChannelName => 'Напоминания Baby Tracker';

  @override
  String get notifChannelDesc => 'Напоминания о кормлении, подгузниках, лекарствах и осмотре кожи';

  @override
  String get notifFeedTitle => 'Пора кормить!';

  @override
  String notifFeedBody(String interval) {
    return 'За последние $interval кормлений не записано.';
  }

  @override
  String get notifDiaperTitle => 'Проверьте подгузник!';

  @override
  String notifDiaperBody(String interval) {
    return 'За последние $interval смен подгузника не записано.';
  }

  @override
  String notifDoseTitle(String name) {
    return 'Пора принять: $name';
  }

  @override
  String notifDoseBody(String name) {
    return 'Пора дать следующую дозу: $name.';
  }

  @override
  String notifSkinTitle(String name) {
    return 'Осмотр кожи: $name';
  }

  @override
  String get notifSkinBody => 'Добавьте запись за сегодня (и фото, если хотите).';

  @override
  String get timerFeedingNotif => 'Таймер кормления запущен';

  @override
  String intervalMinutes(String m) {
    return '$m мин';
  }

  @override
  String intervalHours(String h) {
    return '$h ч';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h ч $m мин';
  }

  @override
  String get settingsRtlActive => 'Включена раскладка справа налево';

  @override
  String get measurementHeightIn => 'Длина / рост (дюймы)';

  @override
  String get measurementHeadIn => 'Окружность головы (дюймы)';

  @override
  String get growthHeightIn => 'Рост (дюймы)';

  @override
  String get growthHeadIn => 'Окружность головы (дюймы)';

  @override
  String growthHeightValueIn(String value) {
    return '$value дюйм.';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'Голова $value дюйм.';
  }

  @override
  String get settingsLengthUnitNote => 'Длина следует единице веса (см с кг, дюймы с фунтами)';

  @override
  String get formulaStoreBrand => 'Собственная марка магазина';

  @override
  String get pooShade1 => 'Меловой белый';

  @override
  String get pooShade2 => 'Светло-серый';

  @override
  String get pooShade3 => 'Глинисто-серый';

  @override
  String get pooShade4 => 'Кремовый';

  @override
  String get pooShade5 => 'Тёмно-бежевый';

  @override
  String get pooShade6 => 'Бледный жёлто-зелёный';

  @override
  String get pooShade7 => 'Горчично-жёлтый';

  @override
  String get pooShade8 => 'Коричневый';

  @override
  String get pooShade9 => 'Зелёный';

  @override
  String get vaccineScheduleNote => 'По календарю CDC США. В вашей стране календарь может отличаться — следуйте советам врача.';

  @override
  String get settingsAbout => 'О приложении';

  @override
  String get aboutTitle => 'О приложении и лицензии';

  @override
  String aboutVersion(String version) {
    return 'Версия $version';
  }

  @override
  String get aboutLicenseLine => 'Свободное ПО, распространяемое по лицензии GNU General Public License версии 3.0 или новее. Вы можете использовать, изучать, распространять и изменять его.';

  @override
  String get aboutSourceCode => 'Исходный код';

  @override
  String get aboutDisclaimerTitle => 'Не является медицинской консультацией';

  @override
  String get aboutDisclaimerBody => 'Simple Baby Tracker — дневник для ваших личных записей. Это не медицинское изделие: оно не ставит диагнозы, не лечит и не наблюдает за состоянием здоровья. Графики роста, диапазоны температуры, напоминания о лекарствах и заметки о цвете стула — лишь общая информация, она может быть неполной или неверной. Всегда следуйте советам врача или фармацевта и обращайтесь к ним или в скорую помощь, если беспокоитесь за малыша.';

  @override
  String get aboutPrivacyTitle => 'Ваши данные остаются на этом телефоне';

  @override
  String get aboutPrivacyBody => 'У приложения нет доступа к интернету, аккаунта, рекламы и аналитики. Записи и фото хранятся только на этом устройстве. Ничего не покидает его, пока вы сами не экспортируете резервную копию и не поделитесь ею.';

  @override
  String get aboutCreditsTitle => 'Благодарности';

  @override
  String get aboutCreditsBody => 'Значки: созданы в Claude Design.\nШрифты: Inter и Quicksand (SIL Open Font License 1.1).\nГрафики роста: стандарты роста детей ВОЗ (who.int).\nКалендарь прививок: по календарю CDC США.\nСоздано на Flutter.';

  @override
  String get aboutLicencesButton => 'Лицензии открытого ПО';
}
