// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Дневник малыша';

  @override
  String get navHome => 'Главная';

  @override
  String get navGraphs => 'Графики';

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
  String get cannotUndo => 'Это действие нельзя отменить';

  @override
  String get noData => 'Нет данных';

  @override
  String get homeTitle => 'Дневник';

  @override
  String get feedsToday => 'Кормлений сегодня';

  @override
  String get diapersToday => 'Подгузников сегодня';

  @override
  String get sleepToday => 'Сна сегодня';

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
      zero: 'Нет событий',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Удалить этот день?';

  @override
  String deleteDayContent(String date) {
    return 'Удалить $date и все записи? Это действие нельзя отменить';
  }

  @override
  String get noEntriesYet => 'Пока нет записей';

  @override
  String get addEntry => 'Добавить запись';

  @override
  String get deleteEntryTitle => 'Удалить эту запись?';

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
  String get diaperPeePoo => 'Подгузник — моча + кал';

  @override
  String get diaperPee => 'Подгузник — только моча';

  @override
  String get diaperPoo => 'Подгузник — только кал';

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
  String get diaperBoth => 'Оба';

  @override
  String get diaperConsistency => 'Консистенция';

  @override
  String get consistencyHard => 'Твёрдый / Комочками';

  @override
  String get consistencyHardHint => 'Запор';

  @override
  String get consistencyFirm => 'Оформленный';

  @override
  String get consistencyFirmHint => 'Слегка твёрдый';

  @override
  String get consistencyNormal => 'Нормальный';

  @override
  String get consistencyNormalHint => 'Здоровый';

  @override
  String get consistencySoft => 'Мягкий';

  @override
  String get consistencySoftHint => 'Слегка мягкий';

  @override
  String get consistencyLoose => 'Кашицеобразный / Полужидкий';

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
  String get rashPresent => 'Есть опрелость';

  @override
  String get rashPresentHint => 'Покраснение, раздражение или опрелость';

  @override
  String get rashCreamUsed => 'Крем использован';

  @override
  String get rashCreamCustomLabel => 'Название крема / мази';

  @override
  String get rashFollowUpTitle => '⚠️ Наблюдение за опрелостью';

  @override
  String get rashFollowUpQuestion => 'В последнем подгузнике была отмечена опрелость. Улучшилось?';

  @override
  String get rashImproved => 'Да, улучшилось';

  @override
  String get rashNoChange => 'Без изменений / ухудшилось';

  @override
  String get rashRecorded => 'Опрелость зафиксирована';

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
  String get feedAmountMl => 'Объём (мл)';

  @override
  String get feedType => 'Тип';

  @override
  String get feedBreastMilk => 'Грудное молоко';

  @override
  String get feedFormula => 'Смесь';

  @override
  String get feedFormulaBrand => 'Бренд смеси';

  @override
  String get feedFormulaBrandCustom => 'Название бренда';

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
  String get sleepWrapsNextDay => '(переходит на следующий день)';

  @override
  String get sleepNotes => 'Заметки (необязательно)';

  @override
  String get sleepNotesHint => 'Напр.: беспокойный, ненадолго просыпался...';

  @override
  String get sleepNoNotes => 'Нет заметок';

  @override
  String sleepHoursShort(int h, int m) {
    return '$hч $mмин';
  }

  @override
  String get logTemperature => 'Записать температуру';

  @override
  String get editTemperature => 'Редактировать температуру';

  @override
  String get temperatureLabel => 'Температура';

  @override
  String get tempSeverityLow => 'Пониженная — наблюдать';

  @override
  String get tempSeverityNormal => 'Нормальная';

  @override
  String get tempSeverityElevated => 'Слегка повышена — внимательно наблюдать';

  @override
  String get tempSeverityFever => 'Лихорадка — обратитесь к врачу';

  @override
  String get tempReference => 'Референсные значения';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ При лихорадке у младенца младше 3 месяцев всегда консультируйтесь с педиатром';

  @override
  String get tempLow => 'Понижена';

  @override
  String get tempNormal => 'Норма';

  @override
  String get tempElevated => 'Повышена';

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
    return 'Последняя запись: $weight ($date)';
  }

  @override
  String get weightLatest => 'Последний вес';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount за период';
  }

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
  String get settingsTips => 'Советы';

  @override
  String get tipSwitchBabies => 'Переключить малыша';

  @override
  String get tipSwitchBabiesDesc => 'Нажмите на аватар малыша вверху, чтобы переключиться или добавить профиль';

  @override
  String get tipSwipeDelete => 'Смахните влево для удаления';

  @override
  String get tipSwipeDeleteDesc => 'Работает для карточек дней и отдельных записей';

  @override
  String get tipMultipleFeeds => 'Записывать несколько кормлений';

  @override
  String get tipMultipleFeedsDesc => 'В форме кормления нажмите «Добавить ещё кормление», чтобы записать грудь и бутылочку за раз';

  @override
  String get tipExportData => 'Экспорт данных';

  @override
  String get tipExportDataDesc => 'Используйте значок «Поделиться» на главной странице, чтобы экспортировать все данные в JSON';

  @override
  String get tipTapToEdit => 'Нажмите на любую запись, чтобы редактировать';

  @override
  String get babiesTitle => 'Малыши';

  @override
  String get addBaby => 'Добавить малыша';

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
  String get genderUnknown => 'Не указано';

  @override
  String get genderBoy => 'Мальчик';

  @override
  String get genderGirl => 'Девочка';

  @override
  String get cannotDeleteOnlyProfile => 'Нельзя удалить единственный профиль малыша';

  @override
  String deleteProfileTitle(String name) {
    return 'Удалить $name?';
  }

  @override
  String get deleteProfileContent => 'Все данные этого малыша будут удалены навсегда';

  @override
  String get graphsTitle => 'Графики';

  @override
  String get graphsTabDaily => 'Ежедневно';

  @override
  String get graphsTabGrowth => 'Рост';

  @override
  String get graphsTabHealth => 'Здоровье';

  @override
  String get graphsTotalFeeds => 'Всего кормлений';

  @override
  String get graphsAvgPerDay => 'В среднем/день';

  @override
  String get graphsTotalDiapers => 'Подгузников';

  @override
  String get graphsTotalMilk => 'Всего молока/смеси';

  @override
  String get graphsTotalSleep => 'Всего сна';

  @override
  String get graphsAvgSleep => 'Сна в среднем/день';

  @override
  String get graphsFeedsPerDay => 'Кормлений в день';

  @override
  String get graphsDiapersPerDay => 'Подгузников в день';

  @override
  String get graphsMilkPerDay => 'Молока/смеси в день (мл)';

  @override
  String get graphsSleepPerDay => 'Сна в день (часы)';

  @override
  String get graphsWeightOverTime => 'Вес в динамике';

  @override
  String get graphsTempOverTime => 'Температура в динамике';

  @override
  String graphsMaxLabel(String value) {
    return 'Макс: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Мин: $value';
  }

  @override
  String get graphsNoWeightData => 'Пока нет записей веса\nЗапишите вес через записи дня';

  @override
  String get graphsNoTempData => 'Пока нет записей температуры\nЗапишите температуру через какой‑либо день';

  @override
  String get timeLabel => 'Время';

  @override
  String get noColourRecorded => 'Цвет не записан';

  @override
  String get noDetails => 'Нет деталей';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count дней',
      few: '$count дня',
      one: '1 день',
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
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years г. $months мес.';
  }
}
