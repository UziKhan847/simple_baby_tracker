// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Rastreador de Bebê';

  @override
  String get navHome => 'Início';

  @override
  String get navGraphs => 'Gráficos';

  @override
  String get navMilestones => 'Marcos';

  @override
  String get navSettings => 'Configurações';

  @override
  String get actionCancel => 'Cancelar';

  @override
  String get actionSave => 'Salvar';

  @override
  String get actionUpdate => 'Atualizar';

  @override
  String get actionDelete => 'Excluir';

  @override
  String get actionAdd => 'Adicionar';

  @override
  String get actionEdit => 'Editar';

  @override
  String get actionClose => 'Fechar';

  @override
  String get actionExport => 'Exportar dados';

  @override
  String get actionAddDay => 'Adicionar dia';

  @override
  String get actionLog => 'Registrar';

  @override
  String get cannotUndo => 'Esta ação não pode ser desfeita.';

  @override
  String get noData => 'Nenhum dado';

  @override
  String get noNotes => 'Nenhuma anotação';

  @override
  String get noDetails => 'Nenhum detalhe';

  @override
  String get optional => '(opcional)';

  @override
  String get homeTitle => 'Rastreador';

  @override
  String get feedsToday => 'Mamadas hoje';

  @override
  String get diapersToday => 'Fraldas hoje';

  @override
  String get sleepToday => 'Sono hoje';

  @override
  String todayLabel(String date) {
    return 'Hoje — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eventos',
      one: '1 evento',
      zero: 'nenhum evento',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Excluir dia?';

  @override
  String deleteDayContent(String date) {
    return 'Remover $date e todas as suas entradas? Esta ação não pode ser desfeita.';
  }

  @override
  String get rashRecorded => 'Assadura registrada';

  @override
  String get noEntriesYet => 'Ainda não há entradas';

  @override
  String get addEntry => 'Adicionar entrada';

  @override
  String get deleteEntryTitle => 'Excluir entrada?';

  @override
  String get entryTypeDiaper => 'Trocar fralda';

  @override
  String get entryTypeFeeding => 'Mamada';

  @override
  String get entryTypeSleep => 'Sono';

  @override
  String get entryTypeTemperature => 'Temperatura';

  @override
  String get entryTypeWeight => 'Peso';

  @override
  String get entryTypeTummyTime => 'Tempo de bruços';

  @override
  String get entryTypeMedication => 'Medicamento';

  @override
  String get entryTypeDoctorVisit => 'Consulta médica';

  @override
  String get entryTypeNote => 'Nota diária / diário';

  @override
  String get entryTypePumping => 'Sessão de ordenha';

  @override
  String get entryTypeBath => 'Banho';

  @override
  String get diaperPeePoo => 'Fralda — xixi + cocô';

  @override
  String get diaperPee => 'Fralda — xixi';

  @override
  String get diaperPoo => 'Fralda — cocô';

  @override
  String get diaperChange => 'Trocar fralda';

  @override
  String get editDiaper => 'Editar fralda';

  @override
  String get diaperContents => 'Conteúdo';

  @override
  String get diaperNone => 'Nenhum';

  @override
  String get diaperPeeLabel => 'Xixi';

  @override
  String get diaperPooLabel => 'Cocô';

  @override
  String get diaperBoth => 'Ambos';

  @override
  String get diaperConsistency => 'Consistência';

  @override
  String get consistencyHard => 'Duro / em pelotas';

  @override
  String get consistencyHardHint => 'Constipação';

  @override
  String get consistencyFirm => 'Firme';

  @override
  String get consistencyFirmHint => 'Ligeiramente firme';

  @override
  String get consistencyNormal => 'Normal';

  @override
  String get consistencyNormalHint => 'Saudável';

  @override
  String get consistencySoft => 'Mole';

  @override
  String get consistencySoftHint => 'Ligeiramente mole';

  @override
  String get consistencyLoose => 'Pastoso / líquido';

  @override
  String get consistencyLooseHint => 'Observar';

  @override
  String get consistencyWatery => 'Aquoso';

  @override
  String get consistencyWateryHint => 'Diarreia';

  @override
  String get warnConstipation => 'Sinais de constipação — monitore de perto';

  @override
  String get warnDiarrhea => 'Sinais de diarreia — monitore de perto';

  @override
  String get pooColourLabel => 'Cor (toque para selecionar)';

  @override
  String get pooColourAbnormal => '⚠️ Anormal (pálido)';

  @override
  String get pooColourNormal => '✅ Normal';

  @override
  String pooColourSelected(String label) {
    return 'Selecionado: $label';
  }

  @override
  String get diaperSize => 'Tamanho da fralda';

  @override
  String get diaperBrand => 'Marca';

  @override
  String get diaperBrandCustomLabel => 'Nome da marca';

  @override
  String get rashPresent => 'Assadura presente';

  @override
  String get rashPresentHint => 'Vermelhidão, irritação ou assadura';

  @override
  String get rashCreamUsed => 'Creme para assadura usado';

  @override
  String get rashCreamCustomLabel => 'Nome do creme / pomada';

  @override
  String get rashFollowUpTitle => '⚠️ Acompanhamento da assadura';

  @override
  String get rashFollowUpQuestion => 'A última fralda tinha assadura registrada. Melhorou?';

  @override
  String get rashImproved => 'Sim, melhorou';

  @override
  String get rashNoChange => 'Nenhuma mudança / piorou';

  @override
  String get addFeeding => 'Adicionar mamada';

  @override
  String get editFeeding => 'Editar mamada';

  @override
  String feedLabel(int number) {
    return 'Mamada $number';
  }

  @override
  String get feedModeBottle => 'Mamadeira';

  @override
  String get feedModeSuckle => 'Mamar no peito';

  @override
  String get feedAmountMl => 'Quantidade (ml)';

  @override
  String get feedType => 'Tipo';

  @override
  String get feedBreastMilk => 'Leite materno';

  @override
  String get feedFormula => 'Fórmula infantil';

  @override
  String get feedFormulaBrand => 'Marca da fórmula';

  @override
  String get feedFormulaBrandCustom => 'Nome da marca da fórmula';

  @override
  String get feedDurationMinutes => 'Duração (minutos)';

  @override
  String get addAnotherFeed => 'Adicionar outra mamada';

  @override
  String get bottleBreastMilk => 'Mamadeira — leite materno';

  @override
  String get bottleFormula => 'Mamadeira — fórmula';

  @override
  String get breastfeedingSuckle => 'Amamentação (no peito)';

  @override
  String get logSleep => 'Registrar sono';

  @override
  String get editSleep => 'Editar sono';

  @override
  String get sleepStart => 'Início do sono';

  @override
  String get sleepWakeUp => 'Despertar';

  @override
  String sleepDuration(String duration) {
    return 'Duração: $duration';
  }

  @override
  String get sleepInvalidTimes => 'Horários inválidos';

  @override
  String get sleepWrapsNextDay => '(termina no dia seguinte)';

  @override
  String get sleepNotes => 'Anotações (opcional)';

  @override
  String get sleepNotesHint => 'ex. inquieto, acordou brevemente...';

  @override
  String get sleepNoNotes => 'Nenhuma anotação';

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
  String get tempSeverityLow => 'Temperatura baixa — monitore';

  @override
  String get tempSeverityNormal => 'Temperatura normal';

  @override
  String get tempSeverityElevated => 'Ligeiramente elevada — monitore de perto';

  @override
  String get tempSeverityFever => 'Febre — consulte seu médico';

  @override
  String get tempReference => 'Referência de temperatura';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ Sempre consulte seu pediatra em caso de febre em bebês com menos de 3 meses.';

  @override
  String get tempLow => 'Baixa';

  @override
  String get tempNormal => 'Normal';

  @override
  String get tempElevated => 'Elevada';

  @override
  String get tempFever => 'Febre';

  @override
  String get tempLatest => 'Última temperatura';

  @override
  String get tempSummary => 'Resumo das temperaturas';

  @override
  String get tempFeverThreshold => 'Limite de febre';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dias',
      one: '1 dia',
      zero: 'nenhum dia',
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
    return '+$amount de ganho';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount de perda';
  }

  @override
  String weightPrevious(String weight) {
    return 'Anterior: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'Último registro: $weight em $date';
  }

  @override
  String get weightLatest => 'Último peso';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount no período';
  }

  @override
  String get tummyTimeLog => 'Registrar tempo de bruços';

  @override
  String get tummyTimeEdit => 'Editar tempo de bruços';

  @override
  String get tummyTimeStart => 'Horário de início';

  @override
  String get tummyTimeEnd => 'Horário de término';

  @override
  String get tummyTimeTip => 'O tempo de bruços fortalece os músculos do pescoço e dos ombros.';

  @override
  String get medicationLog => 'Registrar medicamento';

  @override
  String get medicationEdit => 'Editar medicamento';

  @override
  String get medicationName => 'Nome do medicamento *';

  @override
  String get medicationDose => 'Dose';

  @override
  String get medicationUnit => 'Unidade';

  @override
  String get medicationCommon => 'Medicamentos comuns';

  @override
  String get medicationWarning => 'Sempre siga as instruções de dosagem de acordo com o peso/idade. Não exceda a frequência recomendada.';

  @override
  String get medicationNotes => 'Anotações (opcional)';

  @override
  String get medicationNotesHint => 'ex. motivo, reação...';

  @override
  String get doctorVisitLog => 'Consulta médica';

  @override
  String get doctorVisitEdit => 'Editar consulta médica';

  @override
  String get doctorName => 'Nome do médico / clínica';

  @override
  String get doctorVisitReason => 'Motivo da consulta';

  @override
  String get doctorVisitMeasurements => 'Medições (opcional)';

  @override
  String get doctorVisitNotes => 'Anotações';

  @override
  String get doctorVisitNotesHint => 'ex. vacinas administradas, recomendações do médico...';

  @override
  String get measurementWeightKg => 'Peso (kg)';

  @override
  String get measurementWeightLbs => 'Peso (lbs)';

  @override
  String get measurementHeightCm => 'Comprimento / altura (cm)';

  @override
  String get measurementHeadCm => 'Perímetro cefálico (cm)';

  @override
  String get dailyNoteLog => 'Nota diária';

  @override
  String get dailyNoteEdit => 'Editar nota';

  @override
  String get dailyNoteTitle => 'Título (opcional)';

  @override
  String get dailyNoteText => 'Nota';

  @override
  String get dailyNoteHint => 'O que aconteceu hoje? Primeira vez rolando? Manhã irritada?';

  @override
  String get dailyNoteTags => 'Tags rápidas';

  @override
  String get pumpingLog => 'Registrar sessão de ordenha';

  @override
  String get pumpingEdit => 'Editar sessão de ordenha';

  @override
  String get pumpingLeft => 'Seio esquerdo (ml)';

  @override
  String get pumpingRight => 'Seio direito (ml)';

  @override
  String get pumpingTotal => 'Total ordenhado';

  @override
  String get pumpingDuration => 'Duração (minutos)';

  @override
  String get pumpingStored => 'Armazenado / congelado';

  @override
  String get pumpingNotes => 'Anotações (opcional)';

  @override
  String get pumpingSessionTitle => 'Ordenha';

  @override
  String pumpingTotalMl(int ml) {
    return 'Total de $ml ml';
  }

  @override
  String get bathLog => 'Registrar banho';

  @override
  String get bathEdit => 'Editar banho';

  @override
  String get bathType => 'Tipo de banho';

  @override
  String get bathTypeSponge => 'Banho de esponja';

  @override
  String get bathTypeTub => 'Banho de banheira';

  @override
  String get bathTypeShower => 'Chuveiro';

  @override
  String get bathNotes => 'Anotações (opcional)';

  @override
  String get bathProducts => 'Produtos usados (opcional)';

  @override
  String get vaccineTitle => 'Vacinação';

  @override
  String get vaccineTabGiven => 'Administradas';

  @override
  String get vaccineTabSchedule => 'Cronograma';

  @override
  String get vaccineLog => 'Registrar vacina';

  @override
  String get vaccineEdit => 'Editar vacina';

  @override
  String get vaccineName => 'Nome da vacina';

  @override
  String get vaccineBrand => 'Marca / fabricante (opcional)';

  @override
  String get vaccineDate => 'Data da administração';

  @override
  String get vaccineDose => 'Número da dose (opcional)';

  @override
  String get vaccineSite => 'Local da injeção (opcional)';

  @override
  String get vaccineNotes => 'Anotações / reações';

  @override
  String vaccineDue(String age) {
    return 'Prevista aos $age';
  }

  @override
  String get vaccineGiven => 'Administrada';

  @override
  String get vaccineNoGiven => 'Nenhuma vacina registrada ainda.';

  @override
  String get vaccineMarkGiven => 'Marcar como administrada';

  @override
  String get whoChartTitle => 'Curvas de Crescimento da OMS';

  @override
  String get whoWeightForAge => 'Peso por idade';

  @override
  String get whoHeightForAge => 'Comprimento/altura por idade';

  @override
  String get whoHeadForAge => 'Perímetro cefálico por idade';

  @override
  String get whoGenderBoy => 'Menino';

  @override
  String get whoGenderGirl => 'Menina';

  @override
  String get whoNoData => 'Nenhuma medição registrada ainda.\nRegistre o peso a partir das entradas de um dia para ver o gráfico.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'Seu bebê';

  @override
  String whoAgeMonths(int n) {
    return '$n meses';
  }

  @override
  String get whoNoBirthDate => 'Defina a data de nascimento do bebê no perfil para ver gráficos baseados na idade.';

  @override
  String get notifTitle => 'Lembretes';

  @override
  String get notifFeedingReminder => 'Lembrete de mamada';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'Lembrar-me após $hours hora(s) se nenhuma mamada for registrada';
  }

  @override
  String get notifDiaperReminder => 'Lembrete de fralda';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'Lembrar-me após $hours hora(s) se nenhuma fralda for registrada';
  }

  @override
  String get notifMedicationReminder => 'Lembrete de medicamento';

  @override
  String get notifEnabled => 'Notificações ativadas';

  @override
  String get notifDisabled => 'Notificações desativadas';

  @override
  String get notifPermissionRequired => 'Ative as notificações nas configurações do seu dispositivo.';

  @override
  String get exportTitle => 'Exportar e fazer backup';

  @override
  String get exportJson => 'Exportar como JSON';

  @override
  String get exportPdf => 'Exportar como PDF';

  @override
  String get exportPdfDesc => 'Resumo legível para o seu pediatra';

  @override
  String get exportGoogleDrive => 'Fazer backup no Google Drive';

  @override
  String get exportGenerating => 'Gerando relatório...';

  @override
  String get milestoneTitle => 'Marcos';

  @override
  String get milestoneTabAchieved => 'Alcançados';

  @override
  String get milestoneTabUpcoming => 'Próximos';

  @override
  String get milestoneCustomAdd => 'Marco personalizado';

  @override
  String get milestoneDeleteTitle => 'Excluir marco?';

  @override
  String get milestoneEdit => 'Editar marco';

  @override
  String get milestoneAdd => 'Adicionar marco';

  @override
  String get milestoneName => 'Nome do marco *';

  @override
  String get milestoneDate => 'Data de alcance';

  @override
  String get milestoneNotes => 'Anotações (opcional)';

  @override
  String get milestoneNotesHint => 'Qualquer detalhe que valha a pena lembrar...';

  @override
  String get milestoneNoAchieved => 'Nenhum marco registrado ainda.';

  @override
  String get milestoneAllDone => 'Todos os marcos predefinidos foram alcançados! 🎉';

  @override
  String get milestoneFirstSmile => '😊 Primeiro sorriso';

  @override
  String get milestoneFirstLaugh => '😂 Primeira risada';

  @override
  String get milestoneFirstTooth => '🦷 Primeiro dente';

  @override
  String get milestoneRolledBackTummy => '🔄 Rolou de costas para a barriga';

  @override
  String get milestoneRolledTummyBack => '🔄 Rolou da barriga para as costas';

  @override
  String get milestoneSatUnsupported => '🧸 Sentou sem apoio';

  @override
  String get milestoneStartedCrawling => '🐣 Começou a engatinhar';

  @override
  String get milestonePulledToStand => '🏋️ Levantou-se segurando';

  @override
  String get milestoneFirstSteps => '👣 Primeiros passos';

  @override
  String get milestoneFirstWord => '💬 Primeira palavra';

  @override
  String get milestoneFirstSolidFood => '🥣 Primeira comida sólida';

  @override
  String get milestoneFirstHaircut => '✂️ Primeiro corte de cabelo';

  @override
  String get milestoneSleptThroughNight => '🌙 Dormiu a noite toda';

  @override
  String get milestoneWavedBye => '👋 Acenou tchau';

  @override
  String get milestoneClappedHands => '👏 Bateu palmas';

  @override
  String get milestoneFirstBirthday => '🎂 Primeiro aniversário';

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get settingsAppearance => 'Aparência';

  @override
  String get settingsDarkMode => 'Modo escuro';

  @override
  String get settingsDarkActive => 'Tema escuro ativo';

  @override
  String get settingsLightActive => 'Tema claro ativo';

  @override
  String get settingsUnits => 'Unidades';

  @override
  String get settingsWeightUnit => 'Unidade de peso';

  @override
  String get settingsTempUnit => 'Unidade de temperatura';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsNotifications => 'Notificações e lembretes';

  @override
  String get settingsExport => 'Exportar e fazer backup';

  @override
  String get settingsTips => 'Dicas';

  @override
  String get tipSwitchBabies => 'Alternar bebês';

  @override
  String get tipSwitchBabiesDesc => 'Toque no avatar do bebê no topo para alternar ou adicionar um perfil de bebê.';

  @override
  String get tipSwipeDelete => 'Deslize para a esquerda para excluir';

  @override
  String get tipSwipeDeleteDesc => 'Funciona nos blocos de dia e em entradas individuais.';

  @override
  String get tipTapToEdit => 'Toque em qualquer entrada para editá-la';

  @override
  String get tipMultipleFeeds => 'Registrar múltiplas mamadas';

  @override
  String get tipMultipleFeedsDesc => 'No formulário de mamada, toque em \"Adicionar outra mamada\" para registrar peito + mamadeira de uma só vez.';

  @override
  String get tipExportData => 'Exportar dados';

  @override
  String get tipExportDataDesc => 'Use o ícone de compartilhar na Tela Inicial para exportar todos os dados como JSON.';

  @override
  String get babiesTitle => 'Bebês';

  @override
  String get addBaby => 'Adicionar bebê';

  @override
  String get editProfile => 'Editar perfil';

  @override
  String get babyNameRequired => 'Nome *';

  @override
  String get babyDobOptional => 'Data de nascimento (opcional)';

  @override
  String babyBornOn(String date) {
    return 'Nascido em $date';
  }

  @override
  String get genderUnknown => 'Desconhecido';

  @override
  String get genderBoy => 'Menino';

  @override
  String get genderGirl => 'Menina';

  @override
  String get cannotDeleteOnlyProfile => 'Não é possível excluir o único perfil de bebê.';

  @override
  String deleteProfileTitle(String name) {
    return 'Excluir $name?';
  }

  @override
  String get deleteProfileContent => 'Todos os dados deste bebê serão excluídos permanentemente.';

  @override
  String get graphsTitle => 'Gráficos';

  @override
  String get graphsTabDaily => 'Diário';

  @override
  String get graphsTabGrowth => 'Crescimento';

  @override
  String get graphsTabHealth => 'Saúde';

  @override
  String get graphsTabWho => 'Curvas OMS';

  @override
  String get graphsTotalFeeds => 'Total de mamadas';

  @override
  String get graphsAvgPerDay => 'Média/dia';

  @override
  String get graphsTotalDiapers => 'Fraldas';

  @override
  String get graphsTotalMilk => 'Total de leite';

  @override
  String get graphsTotalSleep => 'Total de sono';

  @override
  String get graphsAvgSleep => 'Média de sono/dia';

  @override
  String get graphsFeedsPerDay => 'Mamadas por dia';

  @override
  String get graphsDiapersPerDay => 'Fraldas por dia';

  @override
  String get graphsMilkPerDay => 'Leite por dia (ml)';

  @override
  String get graphsSleepPerDay => 'Sono por dia (horas)';

  @override
  String get graphsWeightOverTime => 'Peso ao longo do tempo';

  @override
  String get graphsTempOverTime => 'Temperatura ao longo do tempo';

  @override
  String graphsMaxLabel(String value) {
    return 'Máx: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Mín: $value';
  }

  @override
  String get graphsNoWeightData => 'Ainda não há entradas de peso.\nRegistre o peso a partir das entradas de um dia.';

  @override
  String get graphsNoTempData => 'Ainda não há entradas de temperatura.\nRegistre a temperatura a partir de um dia.';

  @override
  String get timeLabel => 'Hora';

  @override
  String get noColourRecorded => 'Nenhuma cor registrada';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dias',
      one: '1 dia',
      zero: 'recém-nascido',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count meses',
      one: '1 mês',
      zero: 'menos de 1 mês',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years ano(s) $months mês(es)';
  }
}
