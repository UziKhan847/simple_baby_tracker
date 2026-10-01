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
  String get exportJson => 'Exportar copia de seguridad';

  @override
  String get exportJsonDesc => 'Todos los datos y fotos en un archivo .zip';

  @override
  String get exportPdf => 'Exportar como PDF';

  @override
  String get exportPdfDesc => 'Resumen legible para su pediatra';

  @override
  String get importJson => 'Restaurar copia de seguridad';

  @override
  String get importJsonDesc => 'Desde una copia .zip (o una exportación .json anterior)';

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
  String get settingsVolumeUnit => 'Unidad de volumen de leche';

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
  String get tipExportDataDesc => 'Usa el icono de compartir en Inicio para guardar todos los datos y fotos en un solo archivo.';

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
  String get graphsMilkPerDayMl => 'Leche por día (ml)';

  @override
  String get graphsMilkPerDayOz => 'Leche por día (oz)';

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
  String get summaryMilkLabelMl => 'Leche ml';

  @override
  String get summaryMilkLabelOz => 'Leche oz';

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
  String get medicationEditTitle => 'Editar medicamento';

  @override
  String get medicationLogTitle => 'Registrar medicamento';

  @override
  String get medicationYourCourses => 'Tus tratamientos';

  @override
  String get medicationManageCourses => 'Gestionar tratamientos';

  @override
  String get medicationNameRequired => 'Nombre del medicamento *';

  @override
  String get medicationDosageWarning => 'Sigue siempre la dosis indicada según peso/edad. No superes la frecuencia recomendada.';

  @override
  String get medicationNotesOptional => 'Notas (opcional)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hace $count minutos',
      one: 'hace 1 minuto',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hace $count horas',
      one: 'hace 1 hora',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hace $count días',
      one: 'hace 1 día',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'Última toma $ago';
  }

  @override
  String get medicationNeverGiven => 'Aún no administrado';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dosis hoy',
      one: '1 dosis hoy',
      zero: 'Ninguna dosis hoy',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'La siguiente dosis no toca hasta $hours h después de la anterior';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'Ya se alcanzó el límite de $max/día de este tratamiento';
  }

  @override
  String get medicationEditCourse => 'Editar tratamiento';

  @override
  String get medicationNewCourse => 'Nuevo tratamiento';

  @override
  String get medicationReasonOptional => 'Motivo (opcional)';

  @override
  String get medicationIntervalHoursOptional => 'Repetir cada (horas, opcional)';

  @override
  String get medicationMaxPerDayOptional => 'Máx. dosis/día (opcional)';

  @override
  String get medicationRemindNextDose => 'Avisarme cuando toque la siguiente dosis';

  @override
  String medicationEndCourseTitle(String name) {
    return '¿Terminar $name?';
  }

  @override
  String get medicationEndCoursePrompt => '¿Qué tal fue?';

  @override
  String get medicationDeleteCourseTitle => '¿Eliminar este tratamiento?';

  @override
  String get medicationResultWorked => 'Funcionó';

  @override
  String get medicationResultPartlyWorked => 'Funcionó en parte';

  @override
  String get medicationResultDidntWork => 'No funcionó';

  @override
  String get medicationResultSideEffects => 'Efectos secundarios';

  @override
  String get medicationResultNone => 'Sin valorar';

  @override
  String get medicationsTitle => 'Medicamentos';

  @override
  String medicationActiveTab(int count) {
    return 'Activos ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'Anteriores ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'No hay tratamientos activos.\nEmpieza uno con el botón +.';

  @override
  String get medicationNoPastCourses => 'Aún no hay tratamientos anteriores.';

  @override
  String medicationTimesGiven(int count) {
    return 'Dado $count×';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'Última: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'Siguiente $time';
  }

  @override
  String get medicationEndCourse => 'Terminar tratamiento';

  @override
  String feedLastSideHint(String side) {
    return 'La última vez: $side';
  }

  @override
  String get feedSideLeft => 'Izquierdo';

  @override
  String get feedSideRight => 'Derecho';

  @override
  String get feedSideBoth => 'Ambos';

  @override
  String get feedSideLeftMinutes => 'Izquierdo (min)';

  @override
  String get feedSideRightMinutes => 'Derecho (min)';

  @override
  String get timeAgoJustNow => 'Ahora mismo';

  @override
  String get timeUntilOverdue => 'Atrasado';

  @override
  String timeUntilMinutes(int count) {
    return 'en $count min';
  }

  @override
  String timeUntilHours(int count) {
    return 'en $count h';
  }

  @override
  String timeUntilDays(int count) {
    return 'en $count d';
  }

  @override
  String get timerDiscardTitle => '¿Descartar este temporizador?';

  @override
  String get timerDiscard => 'Descartar';

  @override
  String timerFeedingRunning(String side) {
    return 'Toma · $side';
  }

  @override
  String get timerSleepRunning => 'Temporizador de sueño en marcha';

  @override
  String get timerSwitchSide => 'Cambiar de lado';

  @override
  String get timerStop => 'Parar';

  @override
  String get sinceLastFeed => 'Última toma';

  @override
  String get sinceLastDiaper => 'Último pañal';

  @override
  String get sinceAwake => 'Despierto';

  @override
  String get sinceAsleep => 'Dormido';

  @override
  String nextDoseDue(String name) {
    return 'Toca $name';
  }

  @override
  String get weighConditionNaked => 'Desnudo';

  @override
  String get weighConditionDiaper => 'Solo pañal';

  @override
  String get weighConditionLightClothes => 'Ropa ligera';

  @override
  String get weighConditionDressed => 'Vestido';

  @override
  String get weighCondition => 'Pesado con';

  @override
  String get growthMeasurementsOptional => 'Otras medidas (opcional)';

  @override
  String get growthHeightCm => 'Altura (cm)';

  @override
  String get growthHeadCm => 'Perímetro cefálico (cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'La última vez se pesó: $condition; la diferencia puede no ser solo crecimiento';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm cm';
  }

  @override
  String growthHeadValue(String cm) {
    return 'Cabeza $cm cm';
  }

  @override
  String get growthHeightOverTime => 'Altura a lo largo del tiempo';

  @override
  String get growthHeadOverTime => 'Perímetro cefálico a lo largo del tiempo';

  @override
  String get graphsRecentWeighIns => 'Pesajes recientes';

  @override
  String get solidsAmountFewSpoons => 'Unas cucharadas';

  @override
  String get solidsAmountHalf => 'Media ración';

  @override
  String get solidsAmountFull => 'Ración completa';

  @override
  String get solidsAmountTaste => 'Solo probó';

  @override
  String get solidsReactionMild => 'Reacción leve';

  @override
  String get solidsReactionAllergic => 'Reacción alérgica';

  @override
  String get solidsReactionNone => 'Sin reacción';

  @override
  String get solidsEditTitle => 'Editar sólido';

  @override
  String get solidsLogTitle => 'Registrar sólido';

  @override
  String get solidsFoodsLabel => 'Alimentos';

  @override
  String get solidsAddFoodHint => 'Añadir un alimento';

  @override
  String get solidsAmount => 'Cantidad';

  @override
  String get solidsLiked => '¿Le gustó?';

  @override
  String get solidsReaction => 'Reacción';

  @override
  String get solidsNotesOptional => 'Notas (opcional)';

  @override
  String get foodsTitle => 'Alimentos probados';

  @override
  String get foodsEmpty => 'Aún no hay sólidos registrados.';

  @override
  String get foodsAllergensNotYet => 'Alérgenos comunes aún no introducidos';

  @override
  String foodsTriedCount(int count) {
    return '$count alimentos probados';
  }

  @override
  String foodsFirstTried(String date) {
    return 'Primera vez: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'Alimento sólido';

  @override
  String get feedAmountOz => 'Cantidad (oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'Avisarme $interval después de la última toma';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'Avisarme $interval después del último pañal';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'Cada $interval';
  }

  @override
  String get notifIntervalTitle => 'Intervalo del recordatorio';

  @override
  String get notifIntervalHours => 'Horas';

  @override
  String get notifIntervalMinutes => 'Minutos';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'Al menos $minutes minutos';
  }

  @override
  String get settingsFeeding => 'Alimentación';

  @override
  String get settingsTrackBottles => 'Registrar biberones';

  @override
  String get settingsTrackBottlesDesc => 'Elegir qué biberón se usó y cuánto se preparó frente a cuánto se tomó';

  @override
  String get bottlesTitle => 'Mis biberones';

  @override
  String get bottlesEmpty => 'Aún no hay biberones.\nAñade los que uses para poder elegir uno al registrar una toma.';

  @override
  String get bottleAdd => 'Añadir biberón';

  @override
  String get bottleEdit => 'Editar biberón';

  @override
  String get bottleLabel => 'Etiqueta / número (p. ej. #3)';

  @override
  String get bottleBrand => 'Marca / tipo (opcional)';

  @override
  String get bottleCapacity => 'Capacidad (opcional)';

  @override
  String get bottleNipple => 'Tamaño / flujo de la tetina (opcional)';

  @override
  String get bottleMaterial => 'Material';

  @override
  String get bottleRetired => 'Retirado';

  @override
  String get bottleRetire => 'Retirar';

  @override
  String get bottleUnretire => 'Volver a usar';

  @override
  String bottleDeleteTitle(String name) {
    return '¿Eliminar $name?';
  }

  @override
  String get bottleDeleteBody => 'Las tomas anteriores conservan sus cantidades, pero ya no mostrarán este biberón. Para ocultarlo de la lista y conservar el historial, usa Retirar.';

  @override
  String get feedPrepared => 'Preparado';

  @override
  String get feedDrank => 'Tomado';

  @override
  String feedLeftover(String amount) {
    return 'Sobraron $amount';
  }

  @override
  String get feedDrankMoreThanPrepared => '¿Más de lo que se preparó?';

  @override
  String get feedWhichBottle => '¿Qué biberón?';

  @override
  String get feedNoBottlesYet => 'Aún no hay biberones: añádelos en Ajustes → Mis biberones.';

  @override
  String get photoPrivacyTitle => 'Tus fotos se quedan en este teléfono';

  @override
  String get photoPrivacyBody => 'Las fotos se guardan solo dentro de esta app en este dispositivo. La app no tiene acceso a internet, así que nunca se sube ni se comparte nada a menos que tú exportes una copia de seguridad.\n\nAndroid puede pedir acceso a la cámara la primera vez que hagas una foto.';

  @override
  String get photoPrivacyContinue => 'Continuar';

  @override
  String get photoTakePhoto => 'Hacer una foto';

  @override
  String get photoChooseFromGallery => 'Elegir de la galería';

  @override
  String get photoCaption => 'Pie de foto';

  @override
  String get photoCompare => 'Primera vs. última';

  @override
  String get photoAddOtherDay => 'Añadir para otro día';

  @override
  String get photoEmpty => 'Aún no hay fotos.\nHaz una foto al día y mira cómo crece tu bebé.';

  @override
  String get photoToday => 'Foto de hoy';

  @override
  String get photoAddToday => 'Añadir la foto de hoy';

  @override
  String get photoReplace => 'Reemplazar';

  @override
  String get photoDeleteTitle => '¿Eliminar esta foto?';

  @override
  String get ageBeforeBirth => 'Antes de nacer';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '1 día',
      zero: 'Día del nacimiento',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months m $days d';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years a $months m';
  }

  @override
  String get navMemories => 'Recuerdos';

  @override
  String get memoriesTabPhotos => 'Fotos';

  @override
  String get milestoneNoAchievedHint => 'Toca «Próximos» para registrar uno predefinido,\no usa el botón de abajo para uno personalizado.';

  @override
  String get skinTitle => 'Problemas de piel';

  @override
  String get skinNew => 'Nuevo problema de piel';

  @override
  String get skinEdit => 'Editar problema de piel';

  @override
  String skinTabActive(int count) {
    return 'Activos ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'Curados ($count)';
  }

  @override
  String get skinEmptyActive => 'No se está siguiendo ningún problema de piel.\nToca + para empezar uno: puedes añadir una foto cada día para enseñar al médico cómo evoluciona.';

  @override
  String get skinEmptyHealed => 'Aún no hay nada curado.';

  @override
  String get skinUpdateDue => 'Actualizar hoy';

  @override
  String skinSince(String date) {
    return 'Desde el $date';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '1 día',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return 'Curado el $date';
  }

  @override
  String skinReminderAt(String time) {
    return 'Recordatorio diario a las $time';
  }

  @override
  String get skinSeverityTrend => 'Gravedad a lo largo del tiempo';

  @override
  String get skinNoUpdates => 'Aún no hay actualizaciones. Añade la de hoy para empezar el historial.';

  @override
  String get skinExportPdf => 'Exportar para el médico (PDF)';

  @override
  String get skinMarkHealed => 'Marcar como curado';

  @override
  String get skinReopen => 'Marcar como activo otra vez';

  @override
  String get skinUpdateToday => 'Añadir la actualización de hoy';

  @override
  String get skinEditToday => 'Editar la actualización de hoy';

  @override
  String skinDeleteTitle(String name) {
    return '¿Eliminar $name y todas sus actualizaciones?';
  }

  @override
  String get skinDeleteUpdateTitle => '¿Eliminar esta actualización?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'Tratamiento: $treatment';
  }

  @override
  String get skinName => 'Problema *';

  @override
  String get skinBodyArea => '¿En qué parte del cuerpo?';

  @override
  String get skinBegan => 'Empezó el';

  @override
  String get skinRemindDaily => 'Recordarme actualizarlo cada día';

  @override
  String get skinReminderTime => 'Hora del recordatorio';

  @override
  String get skinUpdateTitle => 'Actualización de la piel';

  @override
  String get skinSeverity => '¿Qué aspecto tiene?';

  @override
  String get skinSeverity0 => '0 · Sin lesiones';

  @override
  String get skinSeverity1 => '1 · Leve';

  @override
  String get skinSeverity2 => '2 · Moderado';

  @override
  String get skinSeverity3 => '3 · Grave';

  @override
  String get skinSeverity4 => '4 · Muy grave';

  @override
  String get skinTreatment => 'Tratamiento (opcional)';

  @override
  String get skinTreatmentHint => 'p. ej. crema hidratante, hidrocortisona 1 %';

  @override
  String get skinAddPhoto => 'Añadir una foto';

  @override
  String get skinCardNone => 'Sigue día a día una dermatitis, un eccema u otro problema de piel, con fotos para el médico';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count necesitan la actualización de hoy',
      one: '1 necesita la actualización de hoy',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'Preparando copia de seguridad…';

  @override
  String get backupFailed => 'No se pudo crear la copia de seguridad.';

  @override
  String get backupSavedTo => 'Copia guardada en:';

  @override
  String get backupShareSubject => 'Copia de seguridad de Baby Tracker';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Incluye $count fotos.',
      one: 'Incluye 1 foto.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'Toma';

  @override
  String get widgetStopFeed => 'Parar toma';

  @override
  String get widgetDiaper => 'Pañal';

  @override
  String get widgetSleep => 'Sueño';

  @override
  String get widgetWakeUp => 'Se despertó';

  @override
  String widgetFeedingFor(String duration) {
    return 'Tomando $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'Comió $ago';
  }

  @override
  String get widgetNoFeedsYet => 'Aún no hay tomas';

  @override
  String widgetChangedAgo(String ago) {
    return 'Cambiado $ago';
  }

  @override
  String get widgetNoDiapersYet => 'Aún no hay pañales';

  @override
  String widgetAsleepFor(String duration) {
    return 'Dormido $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'Despertó $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Primero para el temporizador de sueño';

  @override
  String get widgetStopFeedFirst => 'Primero para el temporizador de toma';

  @override
  String quickAddTitle(String name) {
    return 'Añadir para $name';
  }

  @override
  String get quickAddOpenApp => 'Abrir la app';

  @override
  String get foodPeanut => 'Cacahuete';

  @override
  String get foodEgg => 'Huevo';

  @override
  String get foodDairy => 'Lácteos';

  @override
  String get foodWheat => 'Trigo';

  @override
  String get foodSoy => 'Soja';

  @override
  String get foodFish => 'Pescado';

  @override
  String get foodShellfish => 'Marisco';

  @override
  String get foodTreeNuts => 'Frutos secos';

  @override
  String get foodSesame => 'Sésamo';

  @override
  String get foodBanana => 'Plátano';

  @override
  String get foodAvocado => 'Aguacate';

  @override
  String get foodSweetPotato => 'Boniato';

  @override
  String get foodRiceCereal => 'Cereal de arroz';

  @override
  String get foodOatmeal => 'Avena';

  @override
  String get foodCarrot => 'Zanahoria';

  @override
  String get foodApple => 'Manzana';

  @override
  String get foodPea => 'Guisante';

  @override
  String get symptomRash => 'Sarpullido';

  @override
  String get symptomHives => 'Urticaria';

  @override
  String get symptomVomiting => 'Vómitos';

  @override
  String get symptomDiarrhea => 'Diarrea';

  @override
  String get symptomSwelling => 'Hinchazón';

  @override
  String get doseUnitDrops => 'gotas';

  @override
  String get doseUnitTablets => 'comprimidos';

  @override
  String get bottleMaterialPlastic => 'Plástico';

  @override
  String get bottleMaterialGlass => 'Vidrio';

  @override
  String get bottleMaterialSilicone => 'Silicona';

  @override
  String get bottleMaterialSteel => 'Acero inoxidable';

  @override
  String get visitReasonRoutine => 'Revisión rutinaria';

  @override
  String get visitReasonSick => 'Por enfermedad';

  @override
  String get visitReasonVaccination => 'Vacunación';

  @override
  String get visitReasonSpecialist => 'Especialista';

  @override
  String get visitReasonFollowUp => 'Seguimiento';

  @override
  String get visitReasonOther => 'Otro';

  @override
  String get pooColourPale => 'Pálido';

  @override
  String get noteTagHappyDay => 'Día feliz';

  @override
  String get noteTagSleptWell => 'Durmió bien';

  @override
  String get noteTagFussy => 'Inquieto';

  @override
  String get noteTagNotWell => 'No se encontraba bien';

  @override
  String get noteTagFirstTime => '¡Primera vez!';

  @override
  String get noteTagTeething => 'Dentición';

  @override
  String get noteTagGrowthSpurt => 'Estirón';

  @override
  String get noteTagMilestone => 'Hito';

  @override
  String get tummyTimeNotesHint => 'p. ej. lo disfrutó, inquieto...';

  @override
  String get skinSuggestEczema => 'Eccema';

  @override
  String get skinSuggestDiaperRash => 'Dermatitis del pañal';

  @override
  String get skinSuggestCradleCap => 'Costra láctea';

  @override
  String get skinSuggestBabyAcne => 'Acné del bebé';

  @override
  String get skinSuggestHeatRash => 'Sarpullido por calor';

  @override
  String get skinSuggestDrySkin => 'Piel seca';

  @override
  String get bodyFace => 'Cara';

  @override
  String get bodyScalp => 'Cuero cabelludo';

  @override
  String get bodyNeck => 'Cuello';

  @override
  String get bodyChest => 'Pecho';

  @override
  String get bodyBack => 'Espalda';

  @override
  String get bodyArms => 'Brazos';

  @override
  String get bodyHands => 'Manos';

  @override
  String get bodyDiaperArea => 'Zona del pañal';

  @override
  String get bodyLegs => 'Piernas';

  @override
  String get bodyFeet => 'Pies';

  @override
  String get medSuggestGripeWater => 'Agua de anís (gripe water)';

  @override
  String get medSuggestVitaminD => 'Vitamina D';

  @override
  String get medSuggestIronDrops => 'Gotas de hierro';

  @override
  String get medSuggestAntibiotic => 'Antibiótico';

  @override
  String get medSuggestProbiotic => 'Probiótico';

  @override
  String vaccinePageTitle(String name) {
    return '$name: vacunas';
  }

  @override
  String get vaccineDeleteTitle => '¿Eliminar el registro de la vacuna?';

  @override
  String get vaccineSiteHint => 'p. ej. muslo izquierdo';

  @override
  String get vaccineNotesHint => 'p. ej. fiebre leve, irritabilidad, sin reacción...';

  @override
  String get vaccineNoGivenHint => 'Usa el botón + o toca «Marcar como administrada» en la pestaña Calendario.';

  @override
  String get vaccineAgeBirth => 'Nacimiento';

  @override
  String vaccineAgeMonths(String range) {
    return '$range meses';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range meses (anual)';
  }

  @override
  String get whoTabHeight => 'Altura';

  @override
  String get whoTabHead => 'Cabeza';

  @override
  String get whoChartFor => 'Gráfica para:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 meses)';
  }

  @override
  String get whoNoDataPoints => 'Aún no hay datos. Registra medidas para ver a tu bebé en la gráfica.';

  @override
  String get whoLatestMeasurement => 'Última medición';

  @override
  String whoApproxPercentile(String value) {
    return 'Percentil aproximado: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return 'entre $low y $high';
  }

  @override
  String whoMonthsOld(String months) {
    return '$months meses';
  }

  @override
  String get whoDisclaimer => 'Estas gráficas son solo informativas. Pide siempre a tu pediatra que las interprete.';

  @override
  String get whoMedian => 'P50 (mediana)';

  @override
  String get notifChannelName => 'Recordatorios de Baby Tracker';

  @override
  String get notifChannelDesc => 'Recordatorios de tomas, pañales, medicamentos y revisión de la piel';

  @override
  String get notifFeedTitle => '¡Hora de comer!';

  @override
  String notifFeedBody(String interval) {
    return 'No se ha registrado ninguna toma en las últimas $interval.';
  }

  @override
  String get notifDiaperTitle => '¡Revisa el pañal!';

  @override
  String notifDiaperBody(String interval) {
    return 'No se ha registrado ningún cambio de pañal en las últimas $interval.';
  }

  @override
  String notifDoseTitle(String name) {
    return 'Toca dosis: $name';
  }

  @override
  String notifDoseBody(String name) {
    return 'Es la hora de la siguiente dosis de $name.';
  }

  @override
  String notifSkinTitle(String name) {
    return 'Revisión de la piel: $name';
  }

  @override
  String get notifSkinBody => 'Añade la actualización de hoy (y una foto si quieres).';

  @override
  String get timerFeedingNotif => 'Temporizador de toma en marcha';

  @override
  String intervalMinutes(String m) {
    return '$m min';
  }

  @override
  String intervalHours(String h) {
    return '$h h';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h h $m min';
  }

  @override
  String get settingsRtlActive => 'Diseño de derecha a izquierda activo';

  @override
  String get measurementHeightIn => 'Longitud / altura (in)';

  @override
  String get measurementHeadIn => 'Perímetro cefálico (in)';

  @override
  String get growthHeightIn => 'Altura (in)';

  @override
  String get growthHeadIn => 'Perímetro cefálico (in)';

  @override
  String growthHeightValueIn(String value) {
    return '$value in';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'Cabeza $value in';
  }

  @override
  String get settingsLengthUnitNote => 'La longitud sigue la unidad de peso (cm con kg, pulgadas con lbs)';

  @override
  String get formulaStoreBrand => 'Marca blanca';
}
