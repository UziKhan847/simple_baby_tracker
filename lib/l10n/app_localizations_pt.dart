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
  String get cannotUndo => 'Esta ação não pode ser desfeita';

  @override
  String get noData => 'Sem dados';

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
      zero: 'Nenhum evento',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Excluir este dia?';

  @override
  String deleteDayContent(String date) {
    return 'Remover $date e todas as suas entradas? Esta ação não pode ser desfeita';
  }

  @override
  String get noEntriesYet => 'Nenhuma entrada ainda';

  @override
  String get addEntry => 'Adicionar entrada';

  @override
  String get deleteEntryTitle => 'Excluir esta entrada?';

  @override
  String get entryTypeDiaper => 'Troca de fralda';

  @override
  String get entryTypeFeeding => 'Mamada';

  @override
  String get entryTypeSleep => 'Sono';

  @override
  String get entryTypeTemperature => 'Temperatura';

  @override
  String get entryTypeWeight => 'Peso';

  @override
  String get diaperPeePoo => 'Fralda — xixi e cocô';

  @override
  String get diaperPee => 'Fralda — só xixi';

  @override
  String get diaperPoo => 'Fralda — só cocô';

  @override
  String get diaperChange => 'Troca de fralda';

  @override
  String get editDiaper => 'Editar fralda';

  @override
  String get diaperContents => 'Conteúdo';

  @override
  String get diaperNone => 'Nada';

  @override
  String get diaperPeeLabel => 'Xixi';

  @override
  String get diaperPooLabel => 'Cocô';

  @override
  String get diaperBoth => 'Ambos';

  @override
  String get diaperConsistency => 'Consistência';

  @override
  String get consistencyHard => 'Dura / Em bolinhas';

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
  String get consistencySoft => 'Macia';

  @override
  String get consistencySoftHint => 'Ligeiramente macia';

  @override
  String get consistencyLoose => 'Pastosa / Semilíquida';

  @override
  String get consistencyLooseHint => 'Observar';

  @override
  String get consistencyWatery => 'Líquida / Aquosa';

  @override
  String get consistencyWateryHint => 'Diarreia';

  @override
  String get warnConstipation => 'Sinais de constipação — observar de perto';

  @override
  String get warnDiarrhea => 'Sinais de diarreia — observar de perto';

  @override
  String get pooColourLabel => 'Cor (toque para selecionar)';

  @override
  String get pooColourAbnormal => '⚠️ Anormal (pálida)';

  @override
  String get pooColourNormal => '✅ Normal';

  @override
  String pooColourSelected(String label) {
    return 'Selecionada: $label';
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
  String get rashPresentHint => 'Vermelhidão, irritação ou dermatite de fralda';

  @override
  String get rashCreamUsed => 'Creme aplicado';

  @override
  String get rashCreamCustomLabel => 'Nome do creme / pomada';

  @override
  String get rashFollowUpTitle => '⚠️ Acompanhamento da assadura';

  @override
  String get rashFollowUpQuestion => 'A última fralda registrou assadura. Houve melhora?';

  @override
  String get rashImproved => 'Sim, melhorou';

  @override
  String get rashNoChange => 'Sem mudança / Piorou';

  @override
  String get rashRecorded => 'Assadura registrada';

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
  String get feedModeSuckle => 'Peito';

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
  String get feedFormulaBrandCustom => 'Nome da marca';

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
  String get sleepNotes => 'Notas (opcional)';

  @override
  String get sleepNotesHint => 'Exemplo: agitado, acordou brevemente...';

  @override
  String get sleepNoNotes => 'Sem notas';

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
  String get tempSeverityLow => 'Temperatura baixa — observar';

  @override
  String get tempSeverityNormal => 'Temperatura normal';

  @override
  String get tempSeverityElevated => 'Levemente elevada — observar de perto';

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
  String get tempFeverWarning => '⚠️ Consulte sempre o pediatra em caso de febre em bebês com menos de 3 meses';

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
  String get tempFeverThreshold => 'Limiar de febre';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dias',
      one: '1 dia',
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
    return '+$amount ganho';
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
    return 'Último registro: $weight em $date';
  }

  @override
  String get weightLatest => 'Último peso';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount no período';
  }

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
  String get settingsTips => 'Dicas';

  @override
  String get tipSwitchBabies => 'Trocar de bebê';

  @override
  String get tipSwitchBabiesDesc => 'Toque no avatar do bebê no topo para trocar ou adicionar um perfil';

  @override
  String get tipSwipeDelete => 'Deslize para a esquerda para excluir';

  @override
  String get tipSwipeDeleteDesc => 'Funciona nos cartões de dia e nas entradas individuais';

  @override
  String get tipMultipleFeeds => 'Registrar várias mamadas';

  @override
  String get tipMultipleFeedsDesc => 'No formulário, toque em \"Adicionar outra mamada\" para registrar peito e mamadeira de uma vez';

  @override
  String get tipExportData => 'Exportar dados';

  @override
  String get tipExportDataDesc => 'Use o ícone de compartilhar no Início para exportar todos os dados em JSON';

  @override
  String get tipTapToEdit => 'Toque em qualquer entrada para editá-la';

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
  String get genderUnknown => 'Não informado';

  @override
  String get genderBoy => 'Menino';

  @override
  String get genderGirl => 'Menina';

  @override
  String get cannotDeleteOnlyProfile => 'Não é possível excluir o único perfil de bebê';

  @override
  String deleteProfileTitle(String name) {
    return 'Excluir $name?';
  }

  @override
  String get deleteProfileContent => 'Todos os dados deste bebê serão excluídos permanentemente';

  @override
  String get graphsTitle => 'Gráficos';

  @override
  String get graphsTabDaily => 'Diário';

  @override
  String get graphsTabGrowth => 'Crescimento';

  @override
  String get graphsTabHealth => 'Saúde';

  @override
  String get graphsTotalFeeds => 'Total de mamadas';

  @override
  String get graphsAvgPerDay => 'Média/dia';

  @override
  String get graphsTotalDiapers => 'Fraldas';

  @override
  String get graphsTotalMilk => 'Leite total';

  @override
  String get graphsTotalSleep => 'Sono total';

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
    return 'Máximo: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Mínimo: $value';
  }

  @override
  String get graphsNoWeightData => 'Ainda não há registros de peso\nRegistre o peso nas entradas de um dia';

  @override
  String get graphsNoTempData => 'Ainda não há registros de temperatura\nRegistre a temperatura em um dia';

  @override
  String get timeLabel => 'Horário';

  @override
  String get noColourRecorded => 'Nenhuma cor registrada';

  @override
  String get noDetails => 'Sem detalhes';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dias',
      one: '1 dia',
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
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years ano(s) $months mês(es)';
  }
}
