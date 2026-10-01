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
  String get exportJsonDesc => 'Dados brutos para cópia de segurança';

  @override
  String get exportPdf => 'Exportar como PDF';

  @override
  String get exportPdfDesc => 'Resumo legível para o seu pediatra';

  @override
  String get importJson => 'Importar de JSON';

  @override
  String get importJsonDesc => 'Restaurar a partir de um ficheiro de cópia de segurança';

  @override
  String get importDialogTitle => 'Importar dados?';

  @override
  String get importDialogBody => 'Mesclar adiciona as entradas do ficheiro aos seus dados existentes. Substituir tudo apaga primeiro os seus dados existentes.';

  @override
  String get importMerge => 'Mesclar';

  @override
  String get importReplaceAll => 'Substituir tudo';

  @override
  String get importSuccess => 'Importação concluída';

  @override
  String get importInvalidFile => 'Isto não parece um ficheiro de exportação do Baby Tracker.';

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
  String get milestoneAllDone => 'Todos os marcos predefinidos foram alcançados!';

  @override
  String get milestoneFirstSmile => 'Primeiro sorriso';

  @override
  String get milestoneFirstLaugh => 'Primeira risada';

  @override
  String get milestoneFirstTooth => 'Primeiro dente';

  @override
  String get milestoneRolledBackTummy => 'Rolou de costas para a barriga';

  @override
  String get milestoneRolledTummyBack => 'Rolou da barriga para as costas';

  @override
  String get milestoneSatUnsupported => 'Sentou sem apoio';

  @override
  String get milestoneStartedCrawling => 'Começou a engatinhar';

  @override
  String get milestonePulledToStand => 'Levantou-se segurando';

  @override
  String get milestoneFirstSteps => 'Primeiros passos';

  @override
  String get milestoneFirstWord => 'Primeira palavra';

  @override
  String get milestoneFirstSolidFood => 'Primeira comida sólida';

  @override
  String get milestoneFirstHaircut => 'Primeiro corte de cabelo';

  @override
  String get milestoneSleptThroughNight => 'Dormiu a noite toda';

  @override
  String get milestoneWavedBye => 'Acenou tchau';

  @override
  String get milestoneClappedHands => 'Bateu palmas';

  @override
  String get milestoneFirstBirthday => 'Primeiro aniversário';

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
  String get settingsVolumeUnit => 'Milk volume unit';

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
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

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

  @override
  String medicationLabel(String name) {
    return 'Medicamento: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'Consulta';

  @override
  String doctorVisitLabel(String reason) {
    return 'Consulta médica — $reason';
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
  String get doctorVisitNoDoctorRecorded => 'Nenhum médico registrado';

  @override
  String get summaryPoosLabel => 'Cocô';

  @override
  String get summaryPeesLabel => 'Xixi';

  @override
  String get summaryMilkLabel => 'Leite ml';

  @override
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

  @override
  String get summaryBreastLabel => 'Amament. min';

  @override
  String get summarySleepLabel => 'Sono';

  @override
  String get settingsOledMode => 'OLED (preto puro)';

  @override
  String get settingsOledModeDesc => 'Use fundos pretos puros para economizar bateria em telas OLED';

  @override
  String get settingsImmersiveMode => 'Modo imersivo';

  @override
  String get settingsImmersiveModeDesc => 'Ocultar as barras de status e navegação do sistema';

  @override
  String get navVaccinationsEntry => 'Vacinação';

  @override
  String get whoChartsEntry => 'Gráficos de crescimento da OMS';

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
