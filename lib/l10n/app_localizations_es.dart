// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Baby Tracker';

  @override
  String get navHome => 'Inicio';

  @override
  String get navGraphs => 'Gráficos';

  @override
  String get navMilestones => 'Hitos';

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
  String get actionAdd => 'Añadir';

  @override
  String get actionEdit => 'Editar';

  @override
  String get actionClose => 'Cerrar';

  @override
  String get actionExport => 'Exportar datos';

  @override
  String get actionAddDay => 'Añadir día';

  @override
  String get actionLog => 'Registrar';

  @override
  String get cannotUndo => 'Esta acción no se puede deshacer.';

  @override
  String get noData => 'Sin datos';

  @override
  String get noNotes => 'Sin notas';

  @override
  String get noDetails => 'Sin detalles';

  @override
  String get optional => '(opcional)';

  @override
  String get homeTitle => 'Rastreador';

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
      zero: 'ningún evento',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => '¿Eliminar día?';

  @override
  String deleteDayContent(String date) {
    return '¿Eliminar $date y todas sus entradas? Esta acción no se puede deshacer.';
  }

  @override
  String get rashRecorded => 'Dermatitis registrada';

  @override
  String get noEntriesYet => 'Todavía no hay entradas';

  @override
  String get addEntry => 'Añadir entrada';

  @override
  String get deleteEntryTitle => '¿Eliminar entrada?';

  @override
  String get entryTypeDiaper => 'Cambio de pañal';

  @override
  String get entryTypeFeeding => 'Toma';

  @override
  String get entryTypeSleep => 'Sueño';

  @override
  String get entryTypeTemperature => 'Temperatura';

  @override
  String get entryTypeWeight => 'Peso';

  @override
  String get entryTypeTummyTime => 'Tiempo boca abajo';

  @override
  String get entryTypeMedication => 'Medicamento';

  @override
  String get entryTypeDoctorVisit => 'Visita al médico';

  @override
  String get entryTypeNote => 'Nota diaria / diario';

  @override
  String get entryTypePumping => 'Sesión de extracción';

  @override
  String get entryTypeBath => 'Baño';

  @override
  String get diaperPeePoo => 'Pañal — pis + caca';

  @override
  String get diaperPee => 'Pañal — pis';

  @override
  String get diaperPoo => 'Pañal — caca';

  @override
  String get diaperChange => 'Cambiar pañal';

  @override
  String get editDiaper => 'Editar pañal';

  @override
  String get diaperContents => 'Contenido';

  @override
  String get diaperNone => 'Nada';

  @override
  String get diaperPeeLabel => 'Pis';

  @override
  String get diaperPooLabel => 'Caca';

  @override
  String get diaperBoth => 'Ambos';

  @override
  String get diaperConsistency => 'Consistencia';

  @override
  String get consistencyHard => 'Dura / bolitas';

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
  String get consistencyLoose => 'Pastosa / líquida';

  @override
  String get consistencyLooseHint => 'Vigilar';

  @override
  String get consistencyWatery => 'Acuosa';

  @override
  String get consistencyWateryHint => 'Diarrea';

  @override
  String get warnConstipation => 'Signos de estreñimiento — vigile de cerca';

  @override
  String get warnDiarrhea => 'Signos de diarrea — vigile de cerca';

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
  String get diaperSize => 'Tamaño del pañal';

  @override
  String get diaperBrand => 'Marca';

  @override
  String get diaperBrandCustomLabel => 'Nombre de la marca';

  @override
  String get rashPresent => 'Dermatitis presente';

  @override
  String get rashPresentHint => 'Enrojecimiento, irritación o dermatitis del pañal';

  @override
  String get rashCreamUsed => 'Crema para dermatitis usada';

  @override
  String get rashCreamCustomLabel => 'Nombre de la crema / pomada';

  @override
  String get rashFollowUpTitle => '⚠️ Seguimiento de la dermatitis';

  @override
  String get rashFollowUpQuestion => 'El último pañal tenía dermatitis registrada. ¿Ha mejorado?';

  @override
  String get rashImproved => 'Sí, mejoró';

  @override
  String get rashNoChange => 'Sin cambios / empeoró';

  @override
  String get addFeeding => 'Añadir toma';

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
  String get feedFormulaBrand => 'Marca de la fórmula';

  @override
  String get feedFormulaBrandCustom => 'Nombre de la marca de la fórmula';

  @override
  String get feedDurationMinutes => 'Duración (minutos)';

  @override
  String get addAnotherFeed => 'Añadir otra toma';

  @override
  String get bottleBreastMilk => 'Biberón — leche materna';

  @override
  String get bottleFormula => 'Biberón — fórmula';

  @override
  String get breastfeedingSuckle => 'Lactancia materna (al pecho)';

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
  String get sleepInvalidTimes => 'Horarios no válidos';

  @override
  String get sleepWrapsNextDay => '(termina al día siguiente)';

  @override
  String get sleepNotes => 'Notas (opcional)';

  @override
  String get sleepNotesHint => 'ej. inquieto, despertó brevemente…';

  @override
  String get sleepNoNotes => 'Sin notas';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}h ${m}m';
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
  String get tempSeverityFever => 'Fiebre — consulte a su médico';

  @override
  String get tempReference => 'Referencia de temperaturas';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ Siempre consulte a su pediatra ante la fiebre en bebés menores de 3 meses.';

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
      zero: 'ningún día',
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
    return '+$amount de aumento';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount de pérdida';
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
  String get tummyTimeLog => 'Registrar tiempo boca abajo';

  @override
  String get tummyTimeEdit => 'Editar tiempo boca abajo';

  @override
  String get tummyTimeStart => 'Hora de inicio';

  @override
  String get tummyTimeEnd => 'Hora de finalización';

  @override
  String get tummyTimeTip => 'El tiempo boca abajo fortalece los músculos del cuello y los hombros.';

  @override
  String get medicationLog => 'Registrar medicamento';

  @override
  String get medicationEdit => 'Editar medicamento';

  @override
  String get medicationName => 'Nombre del medicamento *';

  @override
  String get medicationDose => 'Dosis';

  @override
  String get medicationUnit => 'Unidad';

  @override
  String get medicationCommon => 'Medicamentos comunes';

  @override
  String get medicationWarning => 'Siga siempre las instrucciones de dosificación según peso/edad. No exceda la frecuencia recomendada.';

  @override
  String get medicationNotes => 'Notas (opcional)';

  @override
  String get medicationNotesHint => 'ej. motivo, reacción…';

  @override
  String get doctorVisitLog => 'Visita al médico';

  @override
  String get doctorVisitEdit => 'Editar la visita al médico';

  @override
  String get doctorName => 'Nombre del médico / clínica';

  @override
  String get doctorVisitReason => 'Motivo de la visita';

  @override
  String get doctorVisitMeasurements => 'Mediciones (opcional)';

  @override
  String get doctorVisitNotes => 'Notas';

  @override
  String get doctorVisitNotesHint => 'ej. vacunas administradas, recomendaciones del médico…';

  @override
  String get measurementWeightKg => 'Peso (kg)';

  @override
  String get measurementWeightLbs => 'Peso (lbs)';

  @override
  String get measurementHeightCm => 'Longitud / altura (cm)';

  @override
  String get measurementHeadCm => 'Perímetro cefálico (cm)';

  @override
  String get dailyNoteLog => 'Nota diaria';

  @override
  String get dailyNoteEdit => 'Editar nota';

  @override
  String get dailyNoteTitle => 'Título (opcional)';

  @override
  String get dailyNoteText => 'Nota';

  @override
  String get dailyNoteHint => '¿Qué pasó hoy? ¿Primera vez que se da la vuelta? ¿Mañana irritable?';

  @override
  String get dailyNoteTags => 'Etiquetas rápidas';

  @override
  String get pumpingLog => 'Registrar sesión de extracción';

  @override
  String get pumpingEdit => 'Editar sesión de extracción';

  @override
  String get pumpingLeft => 'Pecho izquierdo (ml)';

  @override
  String get pumpingRight => 'Pecho derecho (ml)';

  @override
  String get pumpingTotal => 'Total extraído';

  @override
  String get pumpingDuration => 'Duración (minutos)';

  @override
  String get pumpingStored => 'Almacenado / congelado';

  @override
  String get pumpingNotes => 'Notas (opcional)';

  @override
  String get pumpingSessionTitle => 'Extracción';

  @override
  String pumpingTotalMl(int ml) {
    return '$ml ml en total';
  }

  @override
  String get bathLog => 'Registrar baño';

  @override
  String get bathEdit => 'Editar baño';

  @override
  String get bathType => 'Tipo de baño';

  @override
  String get bathTypeSponge => 'Baño con esponja';

  @override
  String get bathTypeTub => 'Baño en tina';

  @override
  String get bathTypeShower => 'Ducha';

  @override
  String get bathNotes => 'Notas (opcional)';

  @override
  String get bathProducts => 'Productos usados (opcional)';

  @override
  String get vaccineTitle => 'Vacunaciones';

  @override
  String get vaccineTabGiven => 'Administradas';

  @override
  String get vaccineTabSchedule => 'Calendario';

  @override
  String get vaccineLog => 'Registrar vacuna';

  @override
  String get vaccineEdit => 'Editar vacuna';

  @override
  String get vaccineName => 'Nombre de la vacuna';

  @override
  String get vaccineBrand => 'Marca / fabricante (opcional)';

  @override
  String get vaccineDate => 'Fecha de administración';

  @override
  String get vaccineDose => 'Número de dosis (opcional)';

  @override
  String get vaccineSite => 'Sitio de inyección (opcional)';

  @override
  String get vaccineNotes => 'Notas / reacciones';

  @override
  String vaccineDue(String age) {
    return 'Programada a los $age';
  }

  @override
  String get vaccineGiven => 'Administrada';

  @override
  String get vaccineNoGiven => 'Todavía no se ha registrado ninguna vacuna.';

  @override
  String get vaccineMarkGiven => 'Marcar como administrada';

  @override
  String get whoChartTitle => 'Gráficos de crecimiento OMS';

  @override
  String get whoWeightForAge => 'Peso para la edad';

  @override
  String get whoHeightForAge => 'Longitud/altura para la edad';

  @override
  String get whoHeadForAge => 'Perímetro cefálico para la edad';

  @override
  String get whoGenderBoy => 'Niño';

  @override
  String get whoGenderGirl => 'Niña';

  @override
  String get whoNoData => 'Todavía no se ha registrado ninguna medición.\nRegistre un peso desde las entradas del día para ver el gráfico.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'Tu bebé';

  @override
  String whoAgeMonths(int n) {
    return '$n meses';
  }

  @override
  String get whoNoBirthDate => 'Establezca la fecha de nacimiento del bebé en el perfil para ver gráficos basados en la edad.';

  @override
  String get notifTitle => 'Recordatorios';

  @override
  String get notifFeedingReminder => 'Recordatorio de toma';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'Recordarme después de $hours hora(s) si no se ha registrado ninguna toma';
  }

  @override
  String get notifDiaperReminder => 'Recordatorio de pañal';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'Recordarme después de $hours hora(s) si no se ha registrado ningún pañal';
  }

  @override
  String get notifMedicationReminder => 'Recordatorio de medicamento';

  @override
  String get notifEnabled => 'Notificaciones activadas';

  @override
  String get notifDisabled => 'Notificaciones desactivadas';

  @override
  String get notifPermissionRequired => 'Active las notificaciones en la configuración de su dispositivo.';

  @override
  String get exportTitle => 'Exportar y respaldar';

  @override
  String get exportJson => 'Exportar como JSON';

  @override
  String get exportPdf => 'Exportar como PDF';

  @override
  String get exportPdfDesc => 'Resumen legible para su pediatra';

  @override
  String get exportGoogleDrive => 'Respaldar en Google Drive';

  @override
  String get exportGenerating => 'Generando informe...';

  @override
  String get milestoneTitle => 'Hitos';

  @override
  String get milestoneTabAchieved => 'Alcanzados';

  @override
  String get milestoneTabUpcoming => 'Próximos';

  @override
  String get milestoneCustomAdd => 'Hito personalizado';

  @override
  String get milestoneDeleteTitle => '¿Eliminar hito?';

  @override
  String get milestoneEdit => 'Editar hito';

  @override
  String get milestoneAdd => 'Añadir hito';

  @override
  String get milestoneName => 'Nombre del hito *';

  @override
  String get milestoneDate => 'Fecha en que se alcanzó';

  @override
  String get milestoneNotes => 'Notas (opcional)';

  @override
  String get milestoneNotesHint => 'Detalles que merezca la pena recordar…';

  @override
  String get milestoneNoAchieved => 'Todavía no se ha registrado ningún hito.';

  @override
  String get milestoneAllDone => '¡Todos los hitos predefinidos alcanzados! 🎉';

  @override
  String get milestoneFirstSmile => '😊 Primera sonrisa';

  @override
  String get milestoneFirstLaugh => '😂 Primera risa';

  @override
  String get milestoneFirstTooth => '🦷 Primer diente';

  @override
  String get milestoneRolledBackTummy => '🔄 Se giró de espaldas a boca abajo';

  @override
  String get milestoneRolledTummyBack => '🔄 Se giró de boca abajo a espaldas';

  @override
  String get milestoneSatUnsupported => '🧸 Se sentó sin apoyo';

  @override
  String get milestoneStartedCrawling => '🐣 Comenzó a gatear';

  @override
  String get milestonePulledToStand => '🏋️ Se puso de pie agarrándose';

  @override
  String get milestoneFirstSteps => '👣 Primeros pasos';

  @override
  String get milestoneFirstWord => '💬 Primera palabra';

  @override
  String get milestoneFirstSolidFood => '🥣 Primera comida sólida';

  @override
  String get milestoneFirstHaircut => '✂️ Primer corte de pelo';

  @override
  String get milestoneSleptThroughNight => '🌙 Durmió toda la noche';

  @override
  String get milestoneWavedBye => '👋 Dijo adiós con la mano';

  @override
  String get milestoneClappedHands => '👏 Aplaudió';

  @override
  String get milestoneFirstBirthday => '🎂 Primer cumpleaños';

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
  String get settingsNotifications => 'Notificaciones y recordatorios';

  @override
  String get settingsExport => 'Exportar y respaldar';

  @override
  String get settingsTips => 'Consejos';

  @override
  String get tipSwitchBabies => 'Cambiar de bebé';

  @override
  String get tipSwitchBabiesDesc => 'Pulse el avatar del bebé en la parte superior para cambiar o añadir un perfil de bebé.';

  @override
  String get tipSwipeDelete => 'Deslice hacia la izquierda para eliminar';

  @override
  String get tipSwipeDeleteDesc => 'Funciona en las fichas de días y en las entradas individuales.';

  @override
  String get tipTapToEdit => 'Pulse cualquier entrada para editarla';

  @override
  String get tipMultipleFeeds => 'Registrar múltiples tomas';

  @override
  String get tipMultipleFeedsDesc => 'En el formulario de toma, pulse «Añadir otra toma» para registrar lactancia + biberón de una sola vez.';

  @override
  String get tipExportData => 'Exportar datos';

  @override
  String get tipExportDataDesc => 'Use el icono de compartir en la pantalla de inicio para exportar todos los datos como JSON.';

  @override
  String get babiesTitle => 'Bebés';

  @override
  String get addBaby => 'Añadir bebé';

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
  String get genderUnknown => 'Desconocido';

  @override
  String get genderBoy => 'Niño';

  @override
  String get genderGirl => 'Niña';

  @override
  String get cannotDeleteOnlyProfile => 'No se puede eliminar el único perfil de bebé.';

  @override
  String deleteProfileTitle(String name) {
    return '¿Eliminar a $name?';
  }

  @override
  String get deleteProfileContent => 'Todos los datos de este bebé se eliminarán permanentemente.';

  @override
  String get graphsTitle => 'Gráficos';

  @override
  String get graphsTabDaily => 'Diario';

  @override
  String get graphsTabGrowth => 'Crecimiento';

  @override
  String get graphsTabHealth => 'Salud';

  @override
  String get graphsTabWho => 'Gráficos OMS';

  @override
  String get graphsTotalFeeds => 'Total de tomas';

  @override
  String get graphsAvgPerDay => 'Promedio/día';

  @override
  String get graphsTotalDiapers => 'Pañales';

  @override
  String get graphsTotalMilk => 'Total de leche';

  @override
  String get graphsTotalSleep => 'Total de sueño';

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
    return 'Máx: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Mín: $value';
  }

  @override
  String get graphsNoWeightData => 'Todavía no hay registros de peso.\nRegistre un peso desde las entradas del día.';

  @override
  String get graphsNoTempData => 'Todavía no hay registros de temperatura.\nRegistre una temperatura desde un día.';

  @override
  String get timeLabel => 'Hora';

  @override
  String get noColourRecorded => 'No se registró ningún color';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '1 día',
      zero: 'recién nacido',
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
      zero: 'menos de 1 mes',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years año(s) $months mes(es)';
  }
}
