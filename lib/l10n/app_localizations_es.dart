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
  String get exportJsonDesc => 'Datos sin procesar para copia de seguridad';

  @override
  String get exportPdf => 'Exportar como PDF';

  @override
  String get exportPdfDesc => 'Resumen legible para su pediatra';

  @override
  String get importJson => 'Importar desde JSON';

  @override
  String get importJsonDesc => 'Restaurar desde un archivo de copia de seguridad';

  @override
  String get importDialogTitle => '¿Importar datos?';

  @override
  String get importDialogBody => 'Combinar añade las entradas del archivo junto a tus datos existentes. Reemplazar todo elimina primero tus datos existentes.';

  @override
  String get importMerge => 'Combinar';

  @override
  String get importReplaceAll => 'Reemplazar todo';

  @override
  String get importSuccess => 'Importación completada';

  @override
  String get importInvalidFile => 'Esto no parece un archivo de exportación de Baby Tracker.';

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
  String get milestoneAllDone => '¡Todos los hitos predefinidos alcanzados!';

  @override
  String get milestoneFirstSmile => 'Primera sonrisa';

  @override
  String get milestoneFirstLaugh => 'Primera risa';

  @override
  String get milestoneFirstTooth => 'Primer diente';

  @override
  String get milestoneRolledBackTummy => 'Se giró de espaldas a boca abajo';

  @override
  String get milestoneRolledTummyBack => 'Se giró de boca abajo a espaldas';

  @override
  String get milestoneSatUnsupported => 'Se sentó sin apoyo';

  @override
  String get milestoneStartedCrawling => 'Comenzó a gatear';

  @override
  String get milestonePulledToStand => 'Se puso de pie agarrándose';

  @override
  String get milestoneFirstSteps => 'Primeros pasos';

  @override
  String get milestoneFirstWord => 'Primera palabra';

  @override
  String get milestoneFirstSolidFood => 'Primera comida sólida';

  @override
  String get milestoneFirstHaircut => 'Primer corte de pelo';

  @override
  String get milestoneSleptThroughNight => 'Durmió toda la noche';

  @override
  String get milestoneWavedBye => 'Dijo adiós con la mano';

  @override
  String get milestoneClappedHands => 'Aplaudió';

  @override
  String get milestoneFirstBirthday => 'Primer cumpleaños';

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
  String get settingsVolumeUnit => 'Milk volume unit';

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
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

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

  @override
  String medicationLabel(String name) {
    return 'Medicamento: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'Visita';

  @override
  String doctorVisitLabel(String reason) {
    return 'Visita al médico — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 Nota';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'Dr.: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'Ningún médico registrado';

  @override
  String get summaryPoosLabel => 'Caca';

  @override
  String get summaryPeesLabel => 'Pis';

  @override
  String get summaryMilkLabel => 'Leche ml';

  @override
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

  @override
  String get summaryBreastLabel => 'Lactancia min';

  @override
  String get summarySleepLabel => 'Sueño';

  @override
  String get settingsOledMode => 'OLED (negro puro)';

  @override
  String get settingsOledModeDesc => 'Usa fondos negros puros para ahorrar batería en pantallas OLED';

  @override
  String get settingsImmersiveMode => 'Modo inmersivo';

  @override
  String get settingsImmersiveModeDesc => 'Ocultar las barras de estado y navegación del sistema';

  @override
  String get navVaccinationsEntry => 'Vacunaciones';

  @override
  String get whoChartsEntry => 'Gráficas de crecimiento OMS';

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
