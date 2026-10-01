// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Baby Tracker';

  @override
  String get navHome => 'Home';

  @override
  String get navGraphs => 'Grafici';

  @override
  String get navMilestones => 'Tappe';

  @override
  String get navSettings => 'Impostazioni';

  @override
  String get actionCancel => 'Annulla';

  @override
  String get actionSave => 'Salva';

  @override
  String get actionUpdate => 'Aggiorna';

  @override
  String get actionDelete => 'Elimina';

  @override
  String get actionAdd => 'Aggiungi';

  @override
  String get actionEdit => 'Modifica';

  @override
  String get actionClose => 'Chiudi';

  @override
  String get actionExport => 'Esporta dati';

  @override
  String get actionAddDay => 'Aggiungi giorno';

  @override
  String get actionLog => 'Registra';

  @override
  String get cannotUndo => 'Questa operazione non può essere annullata.';

  @override
  String get noData => 'Nessun dato';

  @override
  String get noNotes => 'Nessuna nota';

  @override
  String get noDetails => 'Nessun dettaglio';

  @override
  String get optional => '(opzionale)';

  @override
  String get homeTitle => 'Tracker';

  @override
  String get feedsToday => 'Poppate oggi';

  @override
  String get diapersToday => 'Pannolini oggi';

  @override
  String get sleepToday => 'Sonno oggi';

  @override
  String todayLabel(String date) {
    return 'Oggi — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eventi',
      one: '1 evento',
      zero: 'nessun evento',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Eliminare il giorno?';

  @override
  String deleteDayContent(String date) {
    return 'Eliminare $date e tutte le sue voci? Questa operazione non può essere annullata.';
  }

  @override
  String get rashRecorded => 'Eruzione cutanea registrata';

  @override
  String get noEntriesYet => 'Ancora nessuna voce';

  @override
  String get addEntry => 'Aggiungi voce';

  @override
  String get deleteEntryTitle => 'Eliminare la voce?';

  @override
  String get entryTypeDiaper => 'Cambio pannolino';

  @override
  String get entryTypeFeeding => 'Poppata';

  @override
  String get entryTypeSleep => 'Sonno';

  @override
  String get entryTypeTemperature => 'Temperatura';

  @override
  String get entryTypeWeight => 'Peso';

  @override
  String get entryTypeTummyTime => 'Tummy time';

  @override
  String get entryTypeMedication => 'Farmaco';

  @override
  String get entryTypeDoctorVisit => 'Visita dal medico';

  @override
  String get entryTypeNote => 'Nota giornaliera / diario';

  @override
  String get entryTypePumping => 'Sessione di estrazione';

  @override
  String get entryTypeBath => 'Bagnetto';

  @override
  String get diaperPeePoo => 'Pannolino — pipì + cacca';

  @override
  String get diaperPee => 'Pannolino — pipì';

  @override
  String get diaperPoo => 'Pannolino — cacca';

  @override
  String get diaperChange => 'Cambia pannolino';

  @override
  String get editDiaper => 'Modifica pannolino';

  @override
  String get diaperContents => 'Contenuto';

  @override
  String get diaperNone => 'Niente';

  @override
  String get diaperPeeLabel => 'Pipì';

  @override
  String get diaperPooLabel => 'Cacca';

  @override
  String get diaperBoth => 'Entrambi';

  @override
  String get diaperConsistency => 'Consistenza';

  @override
  String get consistencyHard => 'Dura / a pallini';

  @override
  String get consistencyHardHint => 'Stitichezza';

  @override
  String get consistencyFirm => 'Soda';

  @override
  String get consistencyFirmHint => 'Leggermente soda';

  @override
  String get consistencyNormal => 'Normale';

  @override
  String get consistencyNormalHint => 'Salutare';

  @override
  String get consistencySoft => 'Morbida';

  @override
  String get consistencySoftHint => 'Leggermente morbida';

  @override
  String get consistencyLoose => 'Liquida / pastosa';

  @override
  String get consistencyLooseHint => 'Monitorare';

  @override
  String get consistencyWatery => 'Acquosa';

  @override
  String get consistencyWateryHint => 'Diarrea';

  @override
  String get warnConstipation => 'Segni di stitichezza — monitorare attentamente';

  @override
  String get warnDiarrhea => 'Segni di diarrea — monitorare attentamente';

  @override
  String get pooColourLabel => 'Colore (tocca per selezionare)';

  @override
  String get pooColourAbnormal => '⚠️ Anormale (pallido)';

  @override
  String get pooColourNormal => '✅ Normale';

  @override
  String pooColourSelected(String label) {
    return 'Selezionato: $label';
  }

  @override
  String get diaperSize => 'Taglia del pannolino';

  @override
  String get diaperBrand => 'Marca';

  @override
  String get diaperBrandCustomLabel => 'Nome della marca';

  @override
  String get rashPresent => 'Eruzione cutanea presente';

  @override
  String get rashPresentHint => 'Rossore, irritazione o eruzione da pannolino';

  @override
  String get rashCreamUsed => 'Crema per eruzione usata';

  @override
  String get rashCreamCustomLabel => 'Nome della crema / unguento';

  @override
  String get rashFollowUpTitle => '⚠️ Follow-up dell\'eruzione';

  @override
  String get rashFollowUpQuestion => 'L\'ultimo pannolino aveva un\'eruzione registrata. È migliorata?';

  @override
  String get rashImproved => 'Sì, migliorata';

  @override
  String get rashNoChange => 'Nessun cambiamento / peggiorata';

  @override
  String get addFeeding => 'Aggiungi poppata';

  @override
  String get editFeeding => 'Modifica poppata';

  @override
  String feedLabel(int number) {
    return 'Poppata $number';
  }

  @override
  String get feedModeBottle => 'Biberon';

  @override
  String get feedModeSuckle => 'Allattamento';

  @override
  String get feedAmountMl => 'Quantità (ml)';

  @override
  String get feedType => 'Tipo';

  @override
  String get feedBreastMilk => 'Latte materno';

  @override
  String get feedFormula => 'Latte artificiale';

  @override
  String get feedFormulaBrand => 'Marca del latte artificiale';

  @override
  String get feedFormulaBrandCustom => 'Nome della marca del latte artificiale';

  @override
  String get feedDurationMinutes => 'Durata (minuti)';

  @override
  String get addAnotherFeed => 'Aggiungi altra poppata';

  @override
  String get bottleBreastMilk => 'Biberon — latte materno';

  @override
  String get bottleFormula => 'Biberon — latte artificiale';

  @override
  String get breastfeedingSuckle => 'Allattamento al seno';

  @override
  String get logSleep => 'Registra sonno';

  @override
  String get editSleep => 'Modifica sonno';

  @override
  String get sleepStart => 'Inizio sonno';

  @override
  String get sleepWakeUp => 'Risveglio';

  @override
  String sleepDuration(String duration) {
    return 'Durata: $duration';
  }

  @override
  String get sleepInvalidTimes => 'Orari non validi';

  @override
  String get sleepWrapsNextDay => '(termina il giorno successivo)';

  @override
  String get sleepNotes => 'Note (opzionale)';

  @override
  String get sleepNotesHint => 'es. irrequieto, si è svegliato brevemente...';

  @override
  String get sleepNoNotes => 'Nessuna nota';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}h ${m}m';
  }

  @override
  String get logTemperature => 'Registra temperatura';

  @override
  String get editTemperature => 'Modifica temperatura';

  @override
  String get temperatureLabel => 'Temperatura';

  @override
  String get tempSeverityLow => 'Temperatura bassa — monitorare';

  @override
  String get tempSeverityNormal => 'Temperatura normale';

  @override
  String get tempSeverityElevated => 'Leggermente elevata — monitorare attentamente';

  @override
  String get tempSeverityFever => 'Febbre — consultare il medico';

  @override
  String get tempReference => 'Riferimento temperature';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ Per febbre nei neonati sotto i 3 mesi, consultare sempre il pediatra.';

  @override
  String get tempLow => 'Bassa';

  @override
  String get tempNormal => 'Normale';

  @override
  String get tempElevated => 'Elevata';

  @override
  String get tempFever => 'Febbre';

  @override
  String get tempLatest => 'Ultima temperatura';

  @override
  String get tempSummary => 'Riepilogo temperature';

  @override
  String get tempFeverThreshold => 'Soglia febbre';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni',
      one: '1 giorno',
      zero: 'nessun giorno',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'Registra peso';

  @override
  String get editWeight => 'Modifica peso';

  @override
  String get weightLabel => 'Peso';

  @override
  String weightGain(String amount) {
    return '+$amount di aumento';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount di perdita';
  }

  @override
  String weightPrevious(String weight) {
    return 'Precedente: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'Ultimo rilevamento: $weight il $date';
  }

  @override
  String get weightLatest => 'Ultimo peso';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount nel periodo';
  }

  @override
  String get tummyTimeLog => 'Registra tummy time';

  @override
  String get tummyTimeEdit => 'Modifica tummy time';

  @override
  String get tummyTimeStart => 'Ora di inizio';

  @override
  String get tummyTimeEnd => 'Ora di fine';

  @override
  String get tummyTimeTip => 'Il tummy time rafforza i muscoli del collo e delle spalle.';

  @override
  String get medicationLog => 'Registra farmaco';

  @override
  String get medicationEdit => 'Modifica farmaco';

  @override
  String get medicationName => 'Nome del farmaco *';

  @override
  String get medicationDose => 'Dose';

  @override
  String get medicationUnit => 'Unità';

  @override
  String get medicationCommon => 'Farmaci comuni';

  @override
  String get medicationWarning => 'Seguire sempre le istruzioni di dosaggio in base al peso/età. Non superare la frequenza raccomandata.';

  @override
  String get medicationNotes => 'Note (opzionale)';

  @override
  String get medicationNotesHint => 'es. motivo, reazione...';

  @override
  String get doctorVisitLog => 'Visita dal medico';

  @override
  String get doctorVisitEdit => 'Modifica visita';

  @override
  String get doctorName => 'Nome del medico / clinica';

  @override
  String get doctorVisitReason => 'Motivo della visita';

  @override
  String get doctorVisitMeasurements => 'Misurazioni (opzionale)';

  @override
  String get doctorVisitNotes => 'Note';

  @override
  String get doctorVisitNotesHint => 'es. vaccinazioni effettuate, raccomandazioni del medico...';

  @override
  String get measurementWeightKg => 'Peso (kg)';

  @override
  String get measurementWeightLbs => 'Peso (lbs)';

  @override
  String get measurementHeightCm => 'Lunghezza / altezza (cm)';

  @override
  String get measurementHeadCm => 'Circonferenza cranica (cm)';

  @override
  String get dailyNoteLog => 'Nota giornaliera';

  @override
  String get dailyNoteEdit => 'Modifica nota';

  @override
  String get dailyNoteTitle => 'Titolo (opzionale)';

  @override
  String get dailyNoteText => 'Nota';

  @override
  String get dailyNoteHint => 'Cosa è successo oggi? Primo rotolamento? Mattinata agitata?';

  @override
  String get dailyNoteTags => 'Tag rapidi';

  @override
  String get pumpingLog => 'Registra sessione di estrazione';

  @override
  String get pumpingEdit => 'Modifica sessione di estrazione';

  @override
  String get pumpingLeft => 'Seno sinistro (ml)';

  @override
  String get pumpingRight => 'Seno destro (ml)';

  @override
  String get pumpingTotal => 'Totale estratto';

  @override
  String get pumpingDuration => 'Durata (minuti)';

  @override
  String get pumpingStored => 'Conservato / congelato';

  @override
  String get pumpingNotes => 'Note (opzionale)';

  @override
  String get pumpingSessionTitle => 'Estrazione';

  @override
  String pumpingTotalMl(int ml) {
    return '$ml ml totali';
  }

  @override
  String get bathLog => 'Registra bagnetto';

  @override
  String get bathEdit => 'Modifica bagnetto';

  @override
  String get bathType => 'Tipo di bagno';

  @override
  String get bathTypeSponge => 'Bagno con spugna';

  @override
  String get bathTypeTub => 'Bagno in vasca';

  @override
  String get bathTypeShower => 'Doccia';

  @override
  String get bathNotes => 'Note (opzionale)';

  @override
  String get bathProducts => 'Prodotti usati (opzionale)';

  @override
  String get vaccineTitle => 'Vaccinazioni';

  @override
  String get vaccineTabGiven => 'Somministrati';

  @override
  String get vaccineTabSchedule => 'Calendario';

  @override
  String get vaccineLog => 'Registra vaccino';

  @override
  String get vaccineEdit => 'Modifica vaccino';

  @override
  String get vaccineName => 'Nome del vaccino';

  @override
  String get vaccineBrand => 'Marca / produttore (opzionale)';

  @override
  String get vaccineDate => 'Data di somministrazione';

  @override
  String get vaccineDose => 'Numero dose (opzionale)';

  @override
  String get vaccineSite => 'Sito di iniezione (opzionale)';

  @override
  String get vaccineNotes => 'Note / reazioni';

  @override
  String vaccineDue(String age) {
    return 'Previsto a $age';
  }

  @override
  String get vaccineGiven => 'Somministrato';

  @override
  String get vaccineNoGiven => 'Nessun vaccino registrato finora.';

  @override
  String get vaccineMarkGiven => 'Segna come somministrato';

  @override
  String get whoChartTitle => 'Curve di crescita WHO';

  @override
  String get whoWeightForAge => 'Peso per età';

  @override
  String get whoHeightForAge => 'Lunghezza/altezza per età';

  @override
  String get whoHeadForAge => 'Circonferenza cranica per età';

  @override
  String get whoGenderBoy => 'Maschio';

  @override
  String get whoGenderGirl => 'Femmina';

  @override
  String get whoNoData => 'Nessuna misurazione registrata.\nRegistra un peso dalle voci del giorno per vedere il grafico.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'Il tuo bambino';

  @override
  String whoAgeMonths(int n) {
    return '$n mesi';
  }

  @override
  String get whoNoBirthDate => 'Imposta la data di nascita del bambino nel profilo per vedere i grafici basati sull\'età.';

  @override
  String get notifTitle => 'Promemoria';

  @override
  String get notifFeedingReminder => 'Promemoria poppata';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'Ricordamelo dopo $hours ore se nessuna poppata viene registrata';
  }

  @override
  String get notifDiaperReminder => 'Promemoria pannolino';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'Ricordamelo dopo $hours ore se nessun pannolino viene registrato';
  }

  @override
  String get notifMedicationReminder => 'Promemoria farmaco';

  @override
  String get notifEnabled => 'Notifiche attivate';

  @override
  String get notifDisabled => 'Notifiche disattivate';

  @override
  String get notifPermissionRequired => 'Attiva le notifiche nelle impostazioni del dispositivo.';

  @override
  String get exportTitle => 'Esporta e backup';

  @override
  String get exportJson => 'Esporta come JSON';

  @override
  String get exportJsonDesc => 'Dati grezzi per il backup';

  @override
  String get exportPdf => 'Esporta come PDF';

  @override
  String get exportPdfDesc => 'Riepilogo leggibile per il tuo pediatra';

  @override
  String get importJson => 'Importa da JSON';

  @override
  String get importJsonDesc => 'Ripristina da un file di backup';

  @override
  String get importDialogTitle => 'Importare i dati?';

  @override
  String get importDialogBody => 'Unisci aggiunge le voci del file ai tuoi dati esistenti. Sostituisci tutto elimina prima i tuoi dati esistenti.';

  @override
  String get importMerge => 'Unisci';

  @override
  String get importReplaceAll => 'Sostituisci tutto';

  @override
  String get importSuccess => 'Importazione completata';

  @override
  String get importInvalidFile => 'Questo non sembra un file di esportazione di Baby Tracker.';

  @override
  String get exportGoogleDrive => 'Esegui backup su Google Drive';

  @override
  String get exportGenerating => 'Generazione report...';

  @override
  String get milestoneTitle => 'Tappe';

  @override
  String get milestoneTabAchieved => 'Raggiunte';

  @override
  String get milestoneTabUpcoming => 'In arrivo';

  @override
  String get milestoneCustomAdd => 'Tappa personalizzata';

  @override
  String get milestoneDeleteTitle => 'Eliminare la tappa?';

  @override
  String get milestoneEdit => 'Modifica tappa';

  @override
  String get milestoneAdd => 'Aggiungi tappa';

  @override
  String get milestoneName => 'Nome della tappa *';

  @override
  String get milestoneDate => 'Data di raggiungimento';

  @override
  String get milestoneNotes => 'Note (opzionale)';

  @override
  String get milestoneNotesHint => 'Qualsiasi dettaglio degno di nota...';

  @override
  String get milestoneNoAchieved => 'Nessuna tappa registrata finora.';

  @override
  String get milestoneAllDone => 'Tutte le tappe preimpostate raggiunte!';

  @override
  String get milestoneFirstSmile => 'Primo sorriso';

  @override
  String get milestoneFirstLaugh => 'Prima risata';

  @override
  String get milestoneFirstTooth => 'Primo dente';

  @override
  String get milestoneRolledBackTummy => 'Si è girato dalla schiena alla pancia';

  @override
  String get milestoneRolledTummyBack => 'Si è girato dalla pancia alla schiena';

  @override
  String get milestoneSatUnsupported => 'Seduto senza supporto';

  @override
  String get milestoneStartedCrawling => 'Ha iniziato a strisciare';

  @override
  String get milestonePulledToStand => 'Si è sollevato in piedi';

  @override
  String get milestoneFirstSteps => 'Primi passi';

  @override
  String get milestoneFirstWord => 'Prima parola';

  @override
  String get milestoneFirstSolidFood => 'Primo alimento solido';

  @override
  String get milestoneFirstHaircut => 'Primo taglio di capelli';

  @override
  String get milestoneSleptThroughNight => 'Ha dormito tutta la notte';

  @override
  String get milestoneWavedBye => 'Ha salutato con la mano';

  @override
  String get milestoneClappedHands => 'Ha battuto le mani';

  @override
  String get milestoneFirstBirthday => 'Primo compleanno';

  @override
  String get settingsTitle => 'Impostazioni';

  @override
  String get settingsAppearance => 'Aspetto';

  @override
  String get settingsDarkMode => 'Modalità scura';

  @override
  String get settingsDarkActive => 'Tema scuro attivo';

  @override
  String get settingsLightActive => 'Tema chiaro attivo';

  @override
  String get settingsUnits => 'Unità';

  @override
  String get settingsWeightUnit => 'Unità di peso';

  @override
  String get settingsTempUnit => 'Unità di temperatura';

  @override
  String get settingsVolumeUnit => 'Milk volume unit';

  @override
  String get settingsLanguage => 'Lingua';

  @override
  String get settingsNotifications => 'Notifiche e promemoria';

  @override
  String get settingsExport => 'Esporta e backup';

  @override
  String get settingsTips => 'Suggerimenti';

  @override
  String get tipSwitchBabies => 'Cambia bambino';

  @override
  String get tipSwitchBabiesDesc => 'Tocca l\'avatar del bambino in alto per cambiare o aggiungere un profilo.';

  @override
  String get tipSwipeDelete => 'Scorri a sinistra per eliminare';

  @override
  String get tipSwipeDeleteDesc => 'Funziona sui tile dei giorni e sulle singole voci.';

  @override
  String get tipTapToEdit => 'Tocca qualsiasi voce per modificarla';

  @override
  String get tipMultipleFeeds => 'Registra poppate multiple';

  @override
  String get tipMultipleFeedsDesc => 'Nel modulo poppata, tocca \"Aggiungi altra poppata\" per registrare allattamento + biberon in un colpo solo.';

  @override
  String get tipExportData => 'Esporta dati';

  @override
  String get tipExportDataDesc => 'Usa l\'icona di condivisione su Home per esportare tutti i dati come JSON.';

  @override
  String get babiesTitle => 'Bambini';

  @override
  String get addBaby => 'Aggiungi bambino';

  @override
  String get editProfile => 'Modifica profilo';

  @override
  String get babyNameRequired => 'Nome *';

  @override
  String get babyDobOptional => 'Data di nascita (opzionale)';

  @override
  String babyBornOn(String date) {
    return 'Nato il $date';
  }

  @override
  String get genderUnknown => 'Sconosciuto';

  @override
  String get genderBoy => 'Maschio';

  @override
  String get genderGirl => 'Femmina';

  @override
  String get cannotDeleteOnlyProfile => 'Impossibile eliminare l\'unico profilo bambino.';

  @override
  String deleteProfileTitle(String name) {
    return 'Eliminare $name?';
  }

  @override
  String get deleteProfileContent => 'Tutti i dati di questo bambino verranno eliminati definitivamente.';

  @override
  String get graphsTitle => 'Grafici';

  @override
  String get graphsTabDaily => 'Giornaliero';

  @override
  String get graphsTabGrowth => 'Crescita';

  @override
  String get graphsTabHealth => 'Salute';

  @override
  String get graphsTabWho => 'Curve WHO';

  @override
  String get graphsTotalFeeds => 'Totale poppate';

  @override
  String get graphsAvgPerDay => 'Media/giorno';

  @override
  String get graphsTotalDiapers => 'Pannolini';

  @override
  String get graphsTotalMilk => 'Totale latte';

  @override
  String get graphsTotalSleep => 'Totale sonno';

  @override
  String get graphsAvgSleep => 'Media sonno/giorno';

  @override
  String get graphsFeedsPerDay => 'Poppate per giorno';

  @override
  String get graphsDiapersPerDay => 'Pannolini per giorno';

  @override
  String get graphsMilkPerDay => 'Latte per giorno (ml)';

  @override
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

  @override
  String get graphsSleepPerDay => 'Sonno per giorno (ore)';

  @override
  String get graphsWeightOverTime => 'Peso nel tempo';

  @override
  String get graphsTempOverTime => 'Temperatura nel tempo';

  @override
  String graphsMaxLabel(String value) {
    return 'Max: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Min: $value';
  }

  @override
  String get graphsNoWeightData => 'Ancora nessuna voce di peso.\nRegistra un peso dalle voci del giorno.';

  @override
  String get graphsNoTempData => 'Ancora nessuna voce di temperatura.\nRegistra una temperatura da un giorno.';

  @override
  String get timeLabel => 'Ora';

  @override
  String get noColourRecorded => 'Nessun colore registrato';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni',
      one: '1 giorno',
      zero: 'neonato',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mesi',
      one: '1 mese',
      zero: 'meno di 1 mese',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years anni $months mesi';
  }

  @override
  String medicationLabel(String name) {
    return 'Farmaco: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'Visita';

  @override
  String doctorVisitLabel(String reason) {
    return 'Visita dal medico — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 Nota';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'Dott.: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'Nessun medico registrato';

  @override
  String get summaryPoosLabel => 'Cacca';

  @override
  String get summaryPeesLabel => 'Pipì';

  @override
  String get summaryMilkLabel => 'Latte ml';

  @override
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

  @override
  String get summaryBreastLabel => 'Allatt. min';

  @override
  String get summarySleepLabel => 'Sonno';

  @override
  String get settingsOledMode => 'OLED (nero puro)';

  @override
  String get settingsOledModeDesc => 'Usa sfondi neri puri per risparmiare batteria sugli schermi OLED';

  @override
  String get settingsImmersiveMode => 'Modalità immersiva';

  @override
  String get settingsImmersiveModeDesc => 'Nascondi le barre di stato e di navigazione del sistema';

  @override
  String get navVaccinationsEntry => 'Vaccinazioni';

  @override
  String get whoChartsEntry => 'Grafici di crescita OMS';

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
    return 'Woke $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Stop the sleep timer first';

  @override
  String get widgetStopFeedFirst => 'Stop the feeding timer first';

  @override
  String quickAddTitle(String name) {
    return 'Add for $name';
  }

  @override
  String get quickAddOpenApp => 'Open the app';
}
