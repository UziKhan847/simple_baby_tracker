// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Seguimiento de Bebé';

  @override
  String get navHome => 'Inicio';

  @override
  String get navGraphs => 'Gráficos';

  @override
  String get navSettings => 'Ajustes';

  @override
  String get actionCancel => 'Cancelar';

  @override
  String get actionSave => 'Guardar';

  @override
  String get actionUpdate => 'Actualizar';

  @override
  String get actionDelete => 'Eliminar';

  @override
  String get actionAdd => 'Agregar';

  @override
  String get actionEdit => 'Editar';

  @override
  String get actionClose => 'Cerrar';

  @override
  String get actionExport => 'Exportar datos';

  @override
  String get actionAddDay => 'Agregar día';

  @override
  String get cannotUndo => 'Esta acción no se puede deshacer';

  @override
  String get noData => 'Sin datos';

  @override
  String get homeTitle => 'Seguimiento';

  @override
  String get feedsToday => 'Tomas hoy';

  @override
  String get diapersToday => 'Pañales hoy';

  @override
  String get sleepToday => 'Sueño hoy';

  @override
  String todayLabel(String date) {
    return 'Hoy — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eventos',
      one: '1 evento',
      zero: 'Sin eventos',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => '¿Eliminar día?';

  @override
  String deleteDayContent(String date) {
    return '¿Eliminar $date y todas sus entradas? Esta acción no se puede deshacer';
  }

  @override
  String get noEntriesYet => 'Sin entradas todavía';

  @override
  String get addEntry => 'Agregar entrada';

  @override
  String get deleteEntryTitle => '¿Eliminar entrada?';

  @override
  String get entryTypeDiaper => 'Cambio de pañal';

  @override
  String get entryTypeFeeding => 'Alimentación';

  @override
  String get entryTypeSleep => 'Sueño';

  @override
  String get entryTypeTemperature => 'Temperatura';

  @override
  String get entryTypeWeight => 'Peso';

  @override
  String get diaperPeePoo => 'Pañal — pipí y caca';

  @override
  String get diaperPee => 'Pañal — solo pipí';

  @override
  String get diaperPoo => 'Pañal — solo caca';

  @override
  String get diaperChange => 'Cambio de pañal';

  @override
  String get editDiaper => 'Editar pañal';

  @override
  String get diaperContents => 'Contenido';

  @override
  String get diaperNone => 'Nada';

  @override
  String get diaperPeeLabel => 'Pipí';

  @override
  String get diaperPooLabel => 'Caca';

  @override
  String get diaperBoth => 'Ambos';

  @override
  String get diaperConsistency => 'Consistencia';

  @override
  String get consistencyHard => 'Dura / Bolitas';

  @override
  String get consistencyHardHint => 'Estreñimiento';

  @override
  String get consistencyFirm => 'Firme';

  @override
  String get consistencyFirmHint => 'Ligeramente firme';

  @override
  String get consistencyNormal => 'Normal';

  @override
  String get consistencyNormalHint => 'Saludable';

  @override
  String get consistencySoft => 'Blanda';

  @override
  String get consistencySoftHint => 'Ligeramente blanda';

  @override
  String get consistencyLoose => 'Pastosa / Semilíquida';

  @override
  String get consistencyLooseHint => 'Vigilar';

  @override
  String get consistencyWatery => 'Líquida / Acuosa';

  @override
  String get consistencyWateryHint => 'Diarrea';

  @override
  String get warnConstipation => 'Signos de estreñimiento — vigilar de cerca';

  @override
  String get warnDiarrhea => 'Signos de diarrea — vigilar de cerca';

  @override
  String get pooColourLabel => 'Color (toca para seleccionar)';

  @override
  String get pooColourAbnormal => '⚠️ Anormal (pálido)';

  @override
  String get pooColourNormal => '✅ Normal';

  @override
  String pooColourSelected(String label) {
    return 'Seleccionado: $label';
  }

  @override
  String get diaperSize => 'Talla del pañal';

  @override
  String get diaperBrand => 'Marca';

  @override
  String get diaperBrandCustomLabel => 'Nombre de la marca';

  @override
  String get rashPresent => 'Presencia de sarpullido';

  @override
  String get rashPresentHint => 'Enrojecimiento, irritación o dermatitis del pañal';

  @override
  String get rashCreamUsed => 'Crema aplicada';

  @override
  String get rashCreamCustomLabel => 'Nombre de la crema / pomada';

  @override
  String get rashFollowUpTitle => '⚠️ Seguimiento del sarpullido';

  @override
  String get rashFollowUpQuestion => 'En el último pañal se registró sarpullido. ¿Mejoró?';

  @override
  String get rashImproved => 'Sí, mejoró';

  @override
  String get rashNoChange => 'Sin cambios / Empeoró';

  @override
  String get rashRecorded => 'Sarpullido registrado';

  @override
  String get addFeeding => 'Agregar toma';

  @override
  String get editFeeding => 'Editar toma';

  @override
  String feedLabel(int number) {
    return 'Toma $number';
  }

  @override
  String get feedModeBottle => 'Biberón';

  @override
  String get feedModeSuckle => 'Pecho';

  @override
  String get feedAmountMl => 'Cantidad (ml)';

  @override
  String get feedType => 'Tipo';

  @override
  String get feedBreastMilk => 'Leche materna';

  @override
  String get feedFormula => 'Fórmula';

  @override
  String get feedFormulaBrand => 'Marca de fórmula';

  @override
  String get feedFormulaBrandCustom => 'Nombre de la marca';

  @override
  String get feedDurationMinutes => 'Duración (minutos)';

  @override
  String get addAnotherFeed => 'Agregar otra toma';

  @override
  String get bottleBreastMilk => 'Biberón — leche materna';

  @override
  String get bottleFormula => 'Biberón — fórmula';

  @override
  String get breastfeedingSuckle => 'Lactancia materna (pecho)';

  @override
  String get logSleep => 'Registrar sueño';

  @override
  String get editSleep => 'Editar sueño';

  @override
  String get sleepStart => 'Inicio del sueño';

  @override
  String get sleepWakeUp => 'Despertar';

  @override
  String sleepDuration(String duration) {
    return 'Duración: $duration';
  }

  @override
  String get sleepInvalidTimes => 'Horarios inválidos';

  @override
  String get sleepWrapsNextDay => '(termina al día siguiente)';

  @override
  String get sleepNotes => 'Notas (opcional)';

  @override
  String get sleepNotesHint => 'Ejemplo: inquieto, se despertó brevemente...';

  @override
  String get sleepNoNotes => 'Sin notas';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}h ${m}min';
  }

  @override
  String get logTemperature => 'Registrar temperatura';

  @override
  String get editTemperature => 'Editar temperatura';

  @override
  String get temperatureLabel => 'Temperatura';

  @override
  String get tempSeverityLow => 'Temperatura baja — vigilar';

  @override
  String get tempSeverityNormal => 'Temperatura normal';

  @override
  String get tempSeverityElevated => 'Ligeramente elevada — vigilar de cerca';

  @override
  String get tempSeverityFever => 'Fiebre — consulta a tu médico';

  @override
  String get tempReference => 'Referencia de temperatura';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ Consulta siempre al pediatra ante fiebre en bebés menores de 3 meses';

  @override
  String get tempLow => 'Baja';

  @override
  String get tempNormal => 'Normal';

  @override
  String get tempElevated => 'Elevada';

  @override
  String get tempFever => 'Fiebre';

  @override
  String get tempLatest => 'Última temperatura';

  @override
  String get tempSummary => 'Resumen de temperaturas';

  @override
  String get tempFeverThreshold => 'Umbral de fiebre';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '1 día',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'Registrar peso';

  @override
  String get editWeight => 'Editar peso';

  @override
  String get weightLabel => 'Peso';

  @override
  String weightGain(String amount) {
    return '+$amount ganado';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount perdido';
  }

  @override
  String weightPrevious(String weight) {
    return 'Anterior: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'Último registro: $weight el $date';
  }

  @override
  String get weightLatest => 'Último peso';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount en el período';
  }

  @override
  String get settingsTitle => 'Ajustes';

  @override
  String get settingsAppearance => 'Apariencia';

  @override
  String get settingsDarkMode => 'Modo oscuro';

  @override
  String get settingsDarkActive => 'Tema oscuro activo';

  @override
  String get settingsLightActive => 'Tema claro activo';

  @override
  String get settingsUnits => 'Unidades';

  @override
  String get settingsWeightUnit => 'Unidad de peso';

  @override
  String get settingsTempUnit => 'Unidad de temperatura';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsTips => 'Consejos';

  @override
  String get tipSwitchBabies => 'Cambiar de bebé';

  @override
  String get tipSwitchBabiesDesc => 'Toca el avatar del bebé en la parte superior para cambiar o agregar un perfil';

  @override
  String get tipSwipeDelete => 'Desliza a la izquierda para eliminar';

  @override
  String get tipSwipeDeleteDesc => 'Funciona en las tarjetas de día y en las entradas individuales';

  @override
  String get tipMultipleFeeds => 'Registrar varias tomas';

  @override
  String get tipMultipleFeedsDesc => 'En el formulario, toca \"Agregar otra toma\" para registrar pecho y biberón a la vez';

  @override
  String get tipExportData => 'Exportar datos';

  @override
  String get tipExportDataDesc => 'Usa el icono de compartir en Inicio para exportar todos los datos en formato JSON';

  @override
  String get tipTapToEdit => 'Toca cualquier entrada para editarla';

  @override
  String get babiesTitle => 'Bebés';

  @override
  String get addBaby => 'Agregar bebé';

  @override
  String get editProfile => 'Editar perfil';

  @override
  String get babyNameRequired => 'Nombre *';

  @override
  String get babyDobOptional => 'Fecha de nacimiento (opcional)';

  @override
  String babyBornOn(String date) {
    return 'Nacido el $date';
  }

  @override
  String get genderUnknown => 'Prefiero no decirlo';

  @override
  String get genderBoy => 'Niño';

  @override
  String get genderGirl => 'Niña';

  @override
  String get cannotDeleteOnlyProfile => 'No se puede eliminar el único perfil de bebé';

  @override
  String deleteProfileTitle(String name) {
    return '¿Eliminar a $name?';
  }

  @override
  String get deleteProfileContent => 'Todos los datos de este bebé se eliminarán permanentemente';

  @override
  String get graphsTitle => 'Gráficos';

  @override
  String get graphsTabDaily => 'Diario';

  @override
  String get graphsTabGrowth => 'Crecimiento';

  @override
  String get graphsTabHealth => 'Salud';

  @override
  String get graphsTotalFeeds => 'Total de tomas';

  @override
  String get graphsAvgPerDay => 'Promedio/día';

  @override
  String get graphsTotalDiapers => 'Pañales';

  @override
  String get graphsTotalMilk => 'Leche total';

  @override
  String get graphsTotalSleep => 'Sueño total';

  @override
  String get graphsAvgSleep => 'Sueño promedio/día';

  @override
  String get graphsFeedsPerDay => 'Tomas por día';

  @override
  String get graphsDiapersPerDay => 'Pañales por día';

  @override
  String get graphsMilkPerDay => 'Leche por día (ml)';

  @override
  String get graphsSleepPerDay => 'Sueño por día (horas)';

  @override
  String get graphsWeightOverTime => 'Peso a lo largo del tiempo';

  @override
  String get graphsTempOverTime => 'Temperatura a lo largo del tiempo';

  @override
  String graphsMaxLabel(String value) {
    return 'Máximo: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Mínimo: $value';
  }

  @override
  String get graphsNoWeightData => 'Aún no hay registros de peso\nRegistra el peso desde las entradas de un día';

  @override
  String get graphsNoTempData => 'Aún no hay registros de temperatura\nRegistra la temperatura desde un día';

  @override
  String get timeLabel => 'Hora';

  @override
  String get noColourRecorded => 'Sin color registrado';

  @override
  String get noDetails => 'Sin detalles';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '1 día',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count meses',
      one: '1 mes',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years año(s) $months mes(es)';
  }
}
