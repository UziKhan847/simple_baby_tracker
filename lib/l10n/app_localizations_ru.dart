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
  String get exportJsonDesc => 'Необработанные данные для резервной копии';

  @override
  String get exportPdf => 'Экспорт в PDF';

  @override
  String get exportPdfDesc => 'Читаемая сводка для вашего педиатра';

  @override
  String get importJson => 'Импорт из JSON';

  @override
  String get importJsonDesc => 'Восстановить из файла резервной копии';

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
  String get settingsVolumeUnit => 'Milk volume unit';

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
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

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
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

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
