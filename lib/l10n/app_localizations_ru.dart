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
  String get exportJson => 'Экспорт в JSON';

  @override
  String get exportPdf => 'Экспорт в PDF';

  @override
  String get exportPdfDesc => 'Читаемая сводка для вашего педиатра';

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
  String get milestoneAllDone => 'Все установленные вехи достигнуты! 🎉';

  @override
  String get milestoneFirstSmile => '😊 Первая улыбка';

  @override
  String get milestoneFirstLaugh => '😂 Первый смех';

  @override
  String get milestoneFirstTooth => '🦷 Первый зуб';

  @override
  String get milestoneRolledBackTummy => '🔄 Перевернулся со спины на живот';

  @override
  String get milestoneRolledTummyBack => '🔄 Перевернулся с живота на спину';

  @override
  String get milestoneSatUnsupported => '🧸 Сидит без опоры';

  @override
  String get milestoneStartedCrawling => '🐣 Начал ползать';

  @override
  String get milestonePulledToStand => '🏋️ Встает с опорой';

  @override
  String get milestoneFirstSteps => '👣 Первые шаги';

  @override
  String get milestoneFirstWord => '💬 Первое слово';

  @override
  String get milestoneFirstSolidFood => '🥣 Первая твёрдая пища';

  @override
  String get milestoneFirstHaircut => '✂️ Первая стрижка';

  @override
  String get milestoneSleptThroughNight => '🌙 Спал всю ночь';

  @override
  String get milestoneWavedBye => '👋 Помахал рукой «пока»';

  @override
  String get milestoneClappedHands => '👏 Похлопал в ладоши';

  @override
  String get milestoneFirstBirthday => '🎂 Первый день рождения';

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
  String get tipExportDataDesc => 'Используйте значок «Поделиться» на главном экране, чтобы экспортировать все данные в JSON.';

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
}
