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
  String get exportJson => 'Exportar backup';

  @override
  String get exportJsonDesc => 'Todos os dados e fotos em um arquivo .zip';

  @override
  String get exportPdf => 'Exportar como PDF';

  @override
  String get exportPdfDesc => 'Resumo legível para o seu pediatra';

  @override
  String get importJson => 'Restaurar backup';

  @override
  String get importJsonDesc => 'De um backup .zip (ou de uma exportação .json antiga)';

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
  String get settingsVolumeUnit => 'Unidade de volume do leite';

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
  String get tipExportDataDesc => 'Use o ícone de compartilhar no Início para salvar todos os dados e fotos em um único arquivo.';

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
  String get graphsMilkPerDayMl => 'Leite por dia (ml)';

  @override
  String get graphsMilkPerDayOz => 'Leite por dia (oz)';

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
  String get summaryMilkLabelMl => 'Leite ml';

  @override
  String get summaryMilkLabelOz => 'Leite oz';

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
  String get medicationEditTitle => 'Editar medicamento';

  @override
  String get medicationLogTitle => 'Registrar medicamento';

  @override
  String get medicationYourCourses => 'Seus tratamentos';

  @override
  String get medicationManageCourses => 'Gerenciar tratamentos';

  @override
  String get medicationNameRequired => 'Nome do medicamento *';

  @override
  String get medicationDosageWarning => 'Siga sempre a dosagem indicada para peso/idade. Não ultrapasse a frequência recomendada.';

  @override
  String get medicationNotesOptional => 'Observações (opcional)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'há $count minutos',
      one: 'há 1 minuto',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'há $count horas',
      one: 'há 1 hora',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'há $count dias',
      one: 'há 1 dia',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'Última dose $ago';
  }

  @override
  String get medicationNeverGiven => 'Ainda não dado';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count doses hoje',
      one: '1 dose hoje',
      zero: 'Nenhuma dose hoje',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'A próxima dose só deve ser dada $hours h após a última';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'O limite de $max/dia deste tratamento já foi atingido';
  }

  @override
  String get medicationEditCourse => 'Editar tratamento';

  @override
  String get medicationNewCourse => 'Novo tratamento';

  @override
  String get medicationReasonOptional => 'Motivo (opcional)';

  @override
  String get medicationIntervalHoursOptional => 'Repetir a cada (horas, opcional)';

  @override
  String get medicationMaxPerDayOptional => 'Máx. de doses/dia (opcional)';

  @override
  String get medicationRemindNextDose => 'Me avisar quando for a hora da próxima dose';

  @override
  String medicationEndCourseTitle(String name) {
    return 'Encerrar $name?';
  }

  @override
  String get medicationEndCoursePrompt => 'Como foi?';

  @override
  String get medicationDeleteCourseTitle => 'Excluir este tratamento?';

  @override
  String get medicationResultWorked => 'Funcionou';

  @override
  String get medicationResultPartlyWorked => 'Funcionou em parte';

  @override
  String get medicationResultDidntWork => 'Não funcionou';

  @override
  String get medicationResultSideEffects => 'Efeitos colaterais';

  @override
  String get medicationResultNone => 'Sem avaliação';

  @override
  String get medicationsTitle => 'Medicamentos';

  @override
  String medicationActiveTab(int count) {
    return 'Ativos ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'Anteriores ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'Nenhum tratamento ativo.\nComece um com o botão +.';

  @override
  String get medicationNoPastCourses => 'Ainda não há tratamentos anteriores.';

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
    return 'Próxima $time';
  }

  @override
  String get medicationEndCourse => 'Encerrar tratamento';

  @override
  String feedLastSideHint(String side) {
    return 'Da última vez: $side';
  }

  @override
  String get feedSideLeft => 'Esquerdo';

  @override
  String get feedSideRight => 'Direito';

  @override
  String get feedSideBoth => 'Ambos';

  @override
  String get feedSideLeftMinutes => 'Esquerdo (min)';

  @override
  String get feedSideRightMinutes => 'Direito (min)';

  @override
  String get timeAgoJustNow => 'Agora mesmo';

  @override
  String get timeUntilOverdue => 'Atrasado';

  @override
  String timeUntilMinutes(int count) {
    return 'em $count min';
  }

  @override
  String timeUntilHours(int count) {
    return 'em $count h';
  }

  @override
  String timeUntilDays(int count) {
    return 'em $count d';
  }

  @override
  String get timerDiscardTitle => 'Descartar este cronômetro?';

  @override
  String get timerDiscard => 'Descartar';

  @override
  String timerFeedingRunning(String side) {
    return 'Mamada · $side';
  }

  @override
  String get timerSleepRunning => 'Cronômetro de sono ativo';

  @override
  String get timerSwitchSide => 'Trocar de lado';

  @override
  String get timerStop => 'Parar';

  @override
  String get sinceLastFeed => 'Última mamada';

  @override
  String get sinceLastDiaper => 'Última fralda';

  @override
  String get sinceAwake => 'Acordado';

  @override
  String get sinceAsleep => 'Dormindo';

  @override
  String nextDoseDue(String name) {
    return 'Hora de $name';
  }

  @override
  String get weighConditionNaked => 'Sem roupa';

  @override
  String get weighConditionDiaper => 'Só de fralda';

  @override
  String get weighConditionLightClothes => 'Roupa leve';

  @override
  String get weighConditionDressed => 'Vestido';

  @override
  String get weighCondition => 'Pesado com';

  @override
  String get growthMeasurementsOptional => 'Outras medidas (opcional)';

  @override
  String get growthHeightCm => 'Altura (cm)';

  @override
  String get growthHeadCm => 'Perímetro cefálico (cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'Da última vez foi pesado: $condition — a diferença pode não ser só crescimento';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm cm';
  }

  @override
  String growthHeadValue(String cm) {
    return 'Cabeça $cm cm';
  }

  @override
  String get growthHeightOverTime => 'Altura ao longo do tempo';

  @override
  String get growthHeadOverTime => 'Perímetro cefálico ao longo do tempo';

  @override
  String get graphsRecentWeighIns => 'Pesagens recentes';

  @override
  String get solidsAmountFewSpoons => 'Algumas colheres';

  @override
  String get solidsAmountHalf => 'Meia porção';

  @override
  String get solidsAmountFull => 'Porção inteira';

  @override
  String get solidsAmountTaste => 'Só provou';

  @override
  String get solidsReactionMild => 'Reação leve';

  @override
  String get solidsReactionAllergic => 'Reação alérgica';

  @override
  String get solidsReactionNone => 'Sem reação';

  @override
  String get solidsEditTitle => 'Editar papinha';

  @override
  String get solidsLogTitle => 'Registrar papinha';

  @override
  String get solidsFoodsLabel => 'Alimentos';

  @override
  String get solidsAddFoodHint => 'Adicionar um alimento';

  @override
  String get solidsAmount => 'Quantidade';

  @override
  String get solidsLiked => 'Gostou?';

  @override
  String get solidsReaction => 'Reação';

  @override
  String get solidsNotesOptional => 'Observações (opcional)';

  @override
  String get foodsTitle => 'Alimentos provados';

  @override
  String get foodsEmpty => 'Nenhuma papinha registrada ainda.';

  @override
  String get foodsAllergensNotYet => 'Alérgenos comuns ainda não introduzidos';

  @override
  String foodsTriedCount(int count) {
    return '$count alimentos provados';
  }

  @override
  String foodsFirstTried(String date) {
    return 'Primeira vez: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'Alimento sólido';

  @override
  String get feedAmountOz => 'Quantidade (oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'Me avisar $interval depois da última mamada';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'Me avisar $interval depois da última fralda';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'A cada $interval';
  }

  @override
  String get notifIntervalTitle => 'Intervalo do lembrete';

  @override
  String get notifIntervalHours => 'Horas';

  @override
  String get notifIntervalMinutes => 'Minutos';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'No mínimo $minutes minutos';
  }

  @override
  String get settingsFeeding => 'Alimentação';

  @override
  String get settingsTrackBottles => 'Registrar mamadeiras';

  @override
  String get settingsTrackBottlesDesc => 'Escolher qual mamadeira foi usada e quanto foi preparado e bebido';

  @override
  String get bottlesTitle => 'Minhas mamadeiras';

  @override
  String get bottlesEmpty => 'Nenhuma mamadeira ainda.\nAdicione as que você usa para poder escolher uma ao registrar uma mamada.';

  @override
  String get bottleAdd => 'Adicionar mamadeira';

  @override
  String get bottleEdit => 'Editar mamadeira';

  @override
  String get bottleLabel => 'Etiqueta / número (ex.: #3)';

  @override
  String get bottleBrand => 'Marca / tipo (opcional)';

  @override
  String get bottleCapacity => 'Capacidade (opcional)';

  @override
  String get bottleNipple => 'Tamanho / fluxo do bico (opcional)';

  @override
  String get bottleMaterial => 'Material';

  @override
  String get bottleRetired => 'Aposentada';

  @override
  String get bottleRetire => 'Aposentar';

  @override
  String get bottleUnretire => 'Usar de novo';

  @override
  String bottleDeleteTitle(String name) {
    return 'Excluir $name?';
  }

  @override
  String get bottleDeleteBody => 'As mamadas anteriores mantêm as quantidades, mas deixarão de mostrar esta mamadeira. Para escondê-la da lista e manter o histórico, use Aposentar.';

  @override
  String get feedPrepared => 'Preparado';

  @override
  String get feedDrank => 'Bebeu';

  @override
  String feedLeftover(String amount) {
    return 'Sobraram $amount';
  }

  @override
  String get feedDrankMoreThanPrepared => 'Mais do que foi preparado?';

  @override
  String get feedWhichBottle => 'Qual mamadeira?';

  @override
  String get feedNoBottlesYet => 'Nenhuma mamadeira ainda — adicione em Configurações → Minhas mamadeiras.';

  @override
  String get photoPrivacyTitle => 'Suas fotos ficam neste celular';

  @override
  String get photoPrivacyBody => 'As fotos são salvas somente dentro deste app, neste aparelho. O app não tem acesso à internet, então nada é enviado ou compartilhado, a não ser que você mesmo exporte um backup.\n\nO Android pode pedir acesso à câmera na primeira vez que você tirar uma foto.';

  @override
  String get photoPrivacyContinue => 'Continuar';

  @override
  String get photoTakePhoto => 'Tirar uma foto';

  @override
  String get photoChooseFromGallery => 'Escolher da galeria';

  @override
  String get photoCaption => 'Legenda';

  @override
  String get photoCompare => 'Primeira x mais recente';

  @override
  String get photoAddOtherDay => 'Adicionar para outro dia';

  @override
  String get photoEmpty => 'Nenhuma foto ainda.\nTire uma foto por dia e veja seu bebê crescer.';

  @override
  String get photoToday => 'Foto de hoje';

  @override
  String get photoAddToday => 'Adicionar a foto de hoje';

  @override
  String get photoReplace => 'Substituir';

  @override
  String get photoDeleteTitle => 'Excluir esta foto?';

  @override
  String get ageBeforeBirth => 'Antes do nascimento';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dias',
      one: '1 dia',
      zero: 'Dia do nascimento',
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
  String get navMemories => 'Memórias';

  @override
  String get memoriesTabPhotos => 'Fotos';

  @override
  String get milestoneNoAchievedHint => 'Toque em \"Próximos\" para registrar um marco sugerido,\nou use o botão abaixo para um personalizado.';

  @override
  String get skinTitle => 'Problemas de pele';

  @override
  String get skinNew => 'Novo problema de pele';

  @override
  String get skinEdit => 'Editar problema de pele';

  @override
  String skinTabActive(int count) {
    return 'Ativos ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'Curados ($count)';
  }

  @override
  String get skinEmptyActive => 'Nenhum problema de pele sendo acompanhado.\nToque em + para começar — você pode adicionar uma foto por dia para mostrar ao médico como está mudando.';

  @override
  String get skinEmptyHealed => 'Nada curado ainda.';

  @override
  String get skinUpdateDue => 'Atualizar hoje';

  @override
  String skinSince(String date) {
    return 'Desde $date';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dias',
      one: '1 dia',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return 'Curado em $date';
  }

  @override
  String skinReminderAt(String time) {
    return 'Lembrete diário às $time';
  }

  @override
  String get skinSeverityTrend => 'Gravidade ao longo do tempo';

  @override
  String get skinNoUpdates => 'Nenhuma atualização ainda. Adicione a de hoje para começar o histórico.';

  @override
  String get skinExportPdf => 'Exportar para o médico (PDF)';

  @override
  String get skinMarkHealed => 'Marcar como curado';

  @override
  String get skinReopen => 'Marcar como ativo de novo';

  @override
  String get skinUpdateToday => 'Adicionar atualização de hoje';

  @override
  String get skinEditToday => 'Editar atualização de hoje';

  @override
  String skinDeleteTitle(String name) {
    return 'Excluir $name e todas as atualizações?';
  }

  @override
  String get skinDeleteUpdateTitle => 'Excluir esta atualização?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'Tratamento: $treatment';
  }

  @override
  String get skinName => 'Problema *';

  @override
  String get skinBodyArea => 'Em que parte do corpo?';

  @override
  String get skinBegan => 'Começou em';

  @override
  String get skinRemindDaily => 'Lembrar de atualizar todo dia';

  @override
  String get skinReminderTime => 'Horário do lembrete';

  @override
  String get skinUpdateTitle => 'Atualização da pele';

  @override
  String get skinSeverity => 'Como está?';

  @override
  String get skinSeverity0 => '0 · Limpa';

  @override
  String get skinSeverity1 => '1 · Leve';

  @override
  String get skinSeverity2 => '2 · Moderado';

  @override
  String get skinSeverity3 => '3 · Grave';

  @override
  String get skinSeverity4 => '4 · Muito grave';

  @override
  String get skinTreatment => 'Tratamento (opcional)';

  @override
  String get skinTreatmentHint => 'ex.: hidratante, hidrocortisona 1%';

  @override
  String get skinAddPhoto => 'Adicionar uma foto';

  @override
  String get skinCardNone => 'Acompanhe dia a dia uma assadura, eczema ou outro problema de pele, com fotos para o médico';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count precisam da atualização de hoje',
      one: '1 precisa da atualização de hoje',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'Preparando backup…';

  @override
  String get backupFailed => 'Não foi possível criar o backup.';

  @override
  String get backupSavedTo => 'Backup salvo em:';

  @override
  String get backupShareSubject => 'Backup do Baby Tracker';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Inclui $count fotos.',
      one: 'Inclui 1 foto.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'Mamada';

  @override
  String get widgetStopFeed => 'Parar mamada';

  @override
  String get widgetDiaper => 'Fralda';

  @override
  String get widgetSleep => 'Sono';

  @override
  String get widgetWakeUp => 'Acordou';

  @override
  String widgetFeedingFor(String duration) {
    return 'Mamando há $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'Mamou $ago';
  }

  @override
  String get widgetNoFeedsYet => 'Nenhuma mamada ainda';

  @override
  String widgetChangedAgo(String ago) {
    return 'Trocado $ago';
  }

  @override
  String get widgetNoDiapersYet => 'Nenhuma fralda ainda';

  @override
  String widgetAsleepFor(String duration) {
    return 'Dormindo há $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'Acordou $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Pare primeiro o cronômetro de sono';

  @override
  String get widgetStopFeedFirst => 'Pare primeiro o cronômetro da mamada';

  @override
  String quickAddTitle(String name) {
    return 'Adicionar para $name';
  }

  @override
  String get quickAddOpenApp => 'Abrir o app';

  @override
  String get foodPeanut => 'Amendoim';

  @override
  String get foodEgg => 'Ovo';

  @override
  String get foodDairy => 'Laticínios';

  @override
  String get foodWheat => 'Trigo';

  @override
  String get foodSoy => 'Soja';

  @override
  String get foodFish => 'Peixe';

  @override
  String get foodShellfish => 'Frutos do mar';

  @override
  String get foodTreeNuts => 'Castanhas';

  @override
  String get foodSesame => 'Gergelim';

  @override
  String get foodBanana => 'Banana';

  @override
  String get foodAvocado => 'Abacate';

  @override
  String get foodSweetPotato => 'Batata-doce';

  @override
  String get foodRiceCereal => 'Cereal de arroz';

  @override
  String get foodOatmeal => 'Aveia';

  @override
  String get foodCarrot => 'Cenoura';

  @override
  String get foodApple => 'Maçã';

  @override
  String get foodPea => 'Ervilha';

  @override
  String get symptomRash => 'Manchas na pele';

  @override
  String get symptomHives => 'Urticária';

  @override
  String get symptomVomiting => 'Vômito';

  @override
  String get symptomDiarrhea => 'Diarreia';

  @override
  String get symptomSwelling => 'Inchaço';

  @override
  String get doseUnitDrops => 'gotas';

  @override
  String get doseUnitTablets => 'comprimidos';

  @override
  String get bottleMaterialPlastic => 'Plástico';

  @override
  String get bottleMaterialGlass => 'Vidro';

  @override
  String get bottleMaterialSilicone => 'Silicone';

  @override
  String get bottleMaterialSteel => 'Aço inox';

  @override
  String get visitReasonRoutine => 'Consulta de rotina';

  @override
  String get visitReasonSick => 'Doença';

  @override
  String get visitReasonVaccination => 'Vacinação';

  @override
  String get visitReasonSpecialist => 'Especialista';

  @override
  String get visitReasonFollowUp => 'Retorno';

  @override
  String get visitReasonOther => 'Outro';

  @override
  String get pooColourPale => 'Pálido';

  @override
  String get noteTagHappyDay => 'Dia feliz';

  @override
  String get noteTagSleptWell => 'Dormiu bem';

  @override
  String get noteTagFussy => 'Agitado';

  @override
  String get noteTagNotWell => 'Não estava bem';

  @override
  String get noteTagFirstTime => 'Primeira vez!';

  @override
  String get noteTagTeething => 'Nascimento dos dentes';

  @override
  String get noteTagGrowthSpurt => 'Pico de crescimento';

  @override
  String get noteTagMilestone => 'Marco';

  @override
  String get tummyTimeNotesHint => 'ex.: gostou, agitado...';

  @override
  String get skinSuggestEczema => 'Eczema';

  @override
  String get skinSuggestDiaperRash => 'Assadura';

  @override
  String get skinSuggestCradleCap => 'Crosta láctea';

  @override
  String get skinSuggestBabyAcne => 'Acne neonatal';

  @override
  String get skinSuggestHeatRash => 'Brotoeja';

  @override
  String get skinSuggestDrySkin => 'Pele seca';

  @override
  String get bodyFace => 'Rosto';

  @override
  String get bodyScalp => 'Couro cabeludo';

  @override
  String get bodyNeck => 'Pescoço';

  @override
  String get bodyChest => 'Peito';

  @override
  String get bodyBack => 'Costas';

  @override
  String get bodyArms => 'Braços';

  @override
  String get bodyHands => 'Mãos';

  @override
  String get bodyDiaperArea => 'Área da fralda';

  @override
  String get bodyLegs => 'Pernas';

  @override
  String get bodyFeet => 'Pés';

  @override
  String get medSuggestGripeWater => 'Gripe water';

  @override
  String get medSuggestVitaminD => 'Vitamina D';

  @override
  String get medSuggestIronDrops => 'Gotas de ferro';

  @override
  String get medSuggestAntibiotic => 'Antibiótico';

  @override
  String get medSuggestProbiotic => 'Probiótico';

  @override
  String vaccinePageTitle(String name) {
    return '$name — Vacinas';
  }

  @override
  String get vaccineDeleteTitle => 'Excluir registro da vacina?';

  @override
  String get vaccineSiteHint => 'ex.: coxa esquerda';

  @override
  String get vaccineNotesHint => 'ex.: febre leve, irritação, sem reação...';

  @override
  String get vaccineNoGivenHint => 'Use o botão + ou toque em \"Marcar como aplicada\" na aba Calendário.';

  @override
  String get vaccineAgeBirth => 'Nascimento';

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
  String get whoTabHead => 'Cabeça';

  @override
  String get whoChartFor => 'Curva para:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 meses)';
  }

  @override
  String get whoNoDataPoints => 'Nenhum dado ainda. Registre medidas para ver seu bebê na curva.';

  @override
  String get whoLatestMeasurement => 'Última medição';

  @override
  String whoApproxPercentile(String value) {
    return 'Percentil aproximado: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return 'entre $low e $high';
  }

  @override
  String whoMonthsOld(String months) {
    return '$months meses';
  }

  @override
  String get whoDisclaimer => 'Estas curvas são apenas informativas. Peça sempre ao pediatra para interpretá-las.';

  @override
  String get whoMedian => 'P50 (mediana)';

  @override
  String get notifChannelName => 'Lembretes do Baby Tracker';

  @override
  String get notifChannelDesc => 'Lembretes de mamadas, fraldas, medicamentos e cuidados com a pele';

  @override
  String get notifFeedTitle => 'Hora de mamar!';

  @override
  String notifFeedBody(String interval) {
    return 'Nenhuma mamada registrada nas últimas $interval.';
  }

  @override
  String get notifDiaperTitle => 'Hora de ver a fralda!';

  @override
  String notifDiaperBody(String interval) {
    return 'Nenhuma troca de fralda registrada nas últimas $interval.';
  }

  @override
  String notifDoseTitle(String name) {
    return 'Hora da dose: $name';
  }

  @override
  String notifDoseBody(String name) {
    return 'Está na hora da próxima dose de $name.';
  }

  @override
  String notifSkinTitle(String name) {
    return 'Pele: $name';
  }

  @override
  String get notifSkinBody => 'Adicione a atualização de hoje (e uma foto, se quiser).';

  @override
  String get timerFeedingNotif => 'Cronômetro de mamada ativo';

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
  String get settingsRtlActive => 'Layout da direita para a esquerda ativo';

  @override
  String get measurementHeightIn => 'Comprimento / altura (in)';

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
    return 'Cabeça $value in';
  }

  @override
  String get settingsLengthUnitNote => 'O comprimento segue a unidade de peso (cm com kg, polegadas com lbs)';

  @override
  String get formulaStoreBrand => 'Marca própria';

  @override
  String get pooShade1 => 'Branco giz';

  @override
  String get pooShade2 => 'Cinza claro';

  @override
  String get pooShade3 => 'Cinza argila';

  @override
  String get pooShade4 => 'Creme';

  @override
  String get pooShade5 => 'Bege escuro';

  @override
  String get pooShade6 => 'Amarelo-esverdeado pálido';

  @override
  String get pooShade7 => 'Amarelo mostarda';

  @override
  String get pooShade8 => 'Marrom';

  @override
  String get pooShade9 => 'Verde';

  @override
  String get vaccineScheduleNote => 'Baseado no calendário do CDC dos EUA. O calendário do seu país pode ser diferente — siga a orientação do seu médico.';

  @override
  String get settingsAbout => 'Sobre';

  @override
  String get aboutTitle => 'Sobre e licenças';

  @override
  String aboutVersion(String version) {
    return 'Versão $version';
  }

  @override
  String get aboutLicenseLine => 'Software livre lançado sob a Licença Pública Geral GNU v3.0 ou posterior. Você pode usá-lo, estudá-lo, compartilhá-lo e modificá-lo.';

  @override
  String get aboutSourceCode => 'Código-fonte';

  @override
  String get aboutDisclaimerTitle => 'Não é orientação médica';

  @override
  String get aboutDisclaimerBody => 'O Simple Baby Tracker é um diário para os seus próprios registros. Não é um dispositivo médico e não diagnostica, trata nem monitora nenhuma condição. Curvas de crescimento, faixas de temperatura, lembretes de medicamentos e notas sobre a cor das fezes são apenas informações gerais e podem estar incompletas ou erradas. Siga sempre a orientação do seu médico ou farmacêutico e entre em contato com eles, ou com a emergência, se estiver preocupado com seu bebê.';

  @override
  String get aboutPrivacyTitle => 'Seus dados ficam neste celular';

  @override
  String get aboutPrivacyBody => 'O app não tem acesso à internet, conta, anúncios nem análises. Registros e fotos ficam salvos somente neste aparelho. Nada sai dele, a menos que você exporte um backup e compartilhe por conta própria.';

  @override
  String get aboutCreditsTitle => 'Créditos';

  @override
  String get aboutCreditsBody => 'Ícones: criados com o Claude Design.\nFontes: Inter e Quicksand (SIL Open Font License 1.1).\nCurvas de crescimento: Padrões de Crescimento Infantil da OMS (who.int).\nCalendário de vacinas: baseado no calendário do CDC dos EUA.\nFeito com Flutter.';

  @override
  String get aboutLicencesButton => 'Licenças de código aberto';
}
