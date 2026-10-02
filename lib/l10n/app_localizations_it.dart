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
  String get exportJson => 'Esporta backup';

  @override
  String get exportJsonDesc => 'Tutti i dati e le foto in un unico file .zip';

  @override
  String get exportPdf => 'Esporta come PDF';

  @override
  String get exportPdfDesc => 'Riepilogo leggibile per il tuo pediatra';

  @override
  String get importJson => 'Ripristina backup';

  @override
  String get importJsonDesc => 'Da un backup .zip (o da una vecchia esportazione .json)';

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
  String get settingsVolumeUnit => 'Unità di volume del latte';

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
  String get tipExportDataDesc => 'Usa l’icona di condivisione nella Home per salvare tutti i dati e le foto in un unico file.';

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
  String get graphsMilkPerDayMl => 'Latte al giorno (ml)';

  @override
  String get graphsMilkPerDayOz => 'Latte al giorno (oz)';

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
  String get summaryMilkLabelMl => 'Latte ml';

  @override
  String get summaryMilkLabelOz => 'Latte oz';

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
  String get medicationEditTitle => 'Modifica farmaco';

  @override
  String get medicationLogTitle => 'Registra farmaco';

  @override
  String get medicationYourCourses => 'Le tue terapie';

  @override
  String get medicationManageCourses => 'Gestisci terapie';

  @override
  String get medicationNameRequired => 'Nome del farmaco *';

  @override
  String get medicationDosageWarning => 'Segui sempre il dosaggio indicato per peso/età. Non superare la frequenza consigliata.';

  @override
  String get medicationNotesOptional => 'Note (facoltative)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuti fa',
      one: '1 minuto fa',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ore fa',
      one: '1 ora fa',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni fa',
      one: '1 giorno fa',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'Ultima somministrazione $ago';
  }

  @override
  String get medicationNeverGiven => 'Non ancora somministrato';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dosi oggi',
      one: '1 dose oggi',
      zero: 'Nessuna dose oggi',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'La prossima dose non è prevista prima di $hours h dall’ultima';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'Già raggiunto il limite di $max/giorno per questa terapia';
  }

  @override
  String get medicationEditCourse => 'Modifica terapia';

  @override
  String get medicationNewCourse => 'Nuova terapia';

  @override
  String get medicationReasonOptional => 'Motivo (facoltativo)';

  @override
  String get medicationIntervalHoursOptional => 'Ripeti ogni (ore, facoltativo)';

  @override
  String get medicationMaxPerDayOptional => 'Dosi max/giorno (facoltativo)';

  @override
  String get medicationRemindNextDose => 'Avvisami quando è ora della prossima dose';

  @override
  String medicationEndCourseTitle(String name) {
    return 'Terminare $name?';
  }

  @override
  String get medicationEndCoursePrompt => 'Com’è andata?';

  @override
  String get medicationDeleteCourseTitle => 'Eliminare questa terapia?';

  @override
  String get medicationResultWorked => 'Ha funzionato';

  @override
  String get medicationResultPartlyWorked => 'Ha funzionato in parte';

  @override
  String get medicationResultDidntWork => 'Non ha funzionato';

  @override
  String get medicationResultSideEffects => 'Effetti collaterali';

  @override
  String get medicationResultNone => 'Non valutato';

  @override
  String get medicationsTitle => 'Farmaci';

  @override
  String medicationActiveTab(int count) {
    return 'In corso ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'Concluse ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'Nessuna terapia in corso.\nIniziane una con il pulsante +.';

  @override
  String get medicationNoPastCourses => 'Ancora nessuna terapia conclusa.';

  @override
  String medicationTimesGiven(int count) {
    return 'Dato $count×';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'Ultima: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'Prossima $time';
  }

  @override
  String get medicationEndCourse => 'Termina terapia';

  @override
  String feedLastSideHint(String side) {
    return 'L’ultima volta: $side';
  }

  @override
  String get feedSideLeft => 'Sinistro';

  @override
  String get feedSideRight => 'Destro';

  @override
  String get feedSideBoth => 'Entrambi';

  @override
  String get feedSideLeftMinutes => 'Sinistro (min)';

  @override
  String get feedSideRightMinutes => 'Destro (min)';

  @override
  String get timeAgoJustNow => 'Proprio ora';

  @override
  String get timeUntilOverdue => 'In ritardo';

  @override
  String timeUntilMinutes(int count) {
    return 'tra $count min';
  }

  @override
  String timeUntilHours(int count) {
    return 'tra $count h';
  }

  @override
  String timeUntilDays(int count) {
    return 'tra $count g';
  }

  @override
  String get timerDiscardTitle => 'Annullare questo timer?';

  @override
  String get timerDiscard => 'Annulla timer';

  @override
  String timerFeedingRunning(String side) {
    return 'Poppata · $side';
  }

  @override
  String get timerSleepRunning => 'Timer del sonno attivo';

  @override
  String get timerSwitchSide => 'Cambia lato';

  @override
  String get timerStop => 'Ferma';

  @override
  String get sinceLastFeed => 'Ultima poppata';

  @override
  String get sinceLastDiaper => 'Ultimo pannolino';

  @override
  String get sinceAwake => 'Sveglio';

  @override
  String get sinceAsleep => 'Dorme';

  @override
  String nextDoseDue(String name) {
    return '$name da dare';
  }

  @override
  String get weighConditionNaked => 'Nudo';

  @override
  String get weighConditionDiaper => 'Solo pannolino';

  @override
  String get weighConditionLightClothes => 'Vestiti leggeri';

  @override
  String get weighConditionDressed => 'Vestito';

  @override
  String get weighCondition => 'Pesato con';

  @override
  String get growthMeasurementsOptional => 'Altre misure (facoltative)';

  @override
  String get growthHeightCm => 'Altezza (cm)';

  @override
  String get growthHeadCm => 'Circonferenza cranica (cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'L’ultima volta è stato pesato: $condition — la differenza potrebbe non essere solo crescita';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm cm';
  }

  @override
  String growthHeadValue(String cm) {
    return 'Testa $cm cm';
  }

  @override
  String get growthHeightOverTime => 'Altezza nel tempo';

  @override
  String get growthHeadOverTime => 'Circonferenza cranica nel tempo';

  @override
  String get graphsRecentWeighIns => 'Pesate recenti';

  @override
  String get solidsAmountFewSpoons => 'Qualche cucchiaino';

  @override
  String get solidsAmountHalf => 'Mezza porzione';

  @override
  String get solidsAmountFull => 'Porzione intera';

  @override
  String get solidsAmountTaste => 'Solo un assaggio';

  @override
  String get solidsReactionMild => 'Reazione lieve';

  @override
  String get solidsReactionAllergic => 'Reazione allergica';

  @override
  String get solidsReactionNone => 'Nessuna reazione';

  @override
  String get solidsEditTitle => 'Modifica pappa';

  @override
  String get solidsLogTitle => 'Registra pappa';

  @override
  String get solidsFoodsLabel => 'Alimenti';

  @override
  String get solidsAddFoodHint => 'Aggiungi un alimento';

  @override
  String get solidsAmount => 'Quantità';

  @override
  String get solidsLiked => 'Gli è piaciuto?';

  @override
  String get solidsReaction => 'Reazione';

  @override
  String get solidsNotesOptional => 'Note (facoltative)';

  @override
  String get foodsTitle => 'Alimenti provati';

  @override
  String get foodsEmpty => 'Nessuna pappa registrata.';

  @override
  String get foodsAllergensNotYet => 'Allergeni comuni non ancora introdotti';

  @override
  String foodsTriedCount(int count) {
    return '$count alimenti provati';
  }

  @override
  String foodsFirstTried(String date) {
    return 'Prima volta: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'Pappa';

  @override
  String get feedAmountOz => 'Quantità (oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'Avvisami $interval dopo l’ultima poppata';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'Avvisami $interval dopo l’ultimo pannolino';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'Ogni $interval';
  }

  @override
  String get notifIntervalTitle => 'Intervallo del promemoria';

  @override
  String get notifIntervalHours => 'Ore';

  @override
  String get notifIntervalMinutes => 'Minuti';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'Almeno $minutes minuti';
  }

  @override
  String get settingsFeeding => 'Alimentazione';

  @override
  String get settingsTrackBottles => 'Registra i biberon';

  @override
  String get settingsTrackBottlesDesc => 'Scegli quale biberon è stato usato e quanto è stato preparato rispetto a quanto bevuto';

  @override
  String get bottlesTitle => 'I miei biberon';

  @override
  String get bottlesEmpty => 'Nessun biberon.\nAggiungi i biberon che usi per poterne scegliere uno quando registri una poppata.';

  @override
  String get bottleAdd => 'Aggiungi biberon';

  @override
  String get bottleEdit => 'Modifica biberon';

  @override
  String get bottleLabel => 'Etichetta / numero (es. #3)';

  @override
  String get bottleBrand => 'Marca / tipo (facoltativo)';

  @override
  String get bottleCapacity => 'Capacità (facoltativa)';

  @override
  String get bottleNipple => 'Misura / flusso della tettarella (facoltativo)';

  @override
  String get bottleMaterial => 'Materiale';

  @override
  String get bottleRetired => 'Ritirato';

  @override
  String get bottleRetire => 'Ritira';

  @override
  String get bottleUnretire => 'Usa di nuovo';

  @override
  String bottleDeleteTitle(String name) {
    return 'Eliminare $name?';
  }

  @override
  String get bottleDeleteBody => 'Le poppate passate mantengono le quantità ma non mostreranno più questo biberon. Per nasconderlo dall’elenco mantenendo la cronologia, usa invece Ritira.';

  @override
  String get feedPrepared => 'Preparato';

  @override
  String get feedDrank => 'Bevuto';

  @override
  String feedLeftover(String amount) {
    return '$amount avanzati';
  }

  @override
  String get feedDrankMoreThanPrepared => 'Più di quanto preparato?';

  @override
  String get feedWhichBottle => 'Quale biberon?';

  @override
  String get feedNoBottlesYet => 'Nessun biberon: aggiungili in Impostazioni → I miei biberon.';

  @override
  String get photoPrivacyTitle => 'Le tue foto restano su questo telefono';

  @override
  String get photoPrivacyBody => 'Le foto vengono salvate solo all’interno di questa app su questo dispositivo. L’app non ha accesso a internet, quindi nulla viene mai caricato o condiviso, a meno che tu non esporti un backup.\n\nAndroid potrebbe chiedere l’accesso alla fotocamera la prima volta che scatti una foto.';

  @override
  String get photoPrivacyContinue => 'Continua';

  @override
  String get photoTakePhoto => 'Scatta una foto';

  @override
  String get photoChooseFromGallery => 'Scegli dalla galleria';

  @override
  String get photoCaption => 'Didascalia';

  @override
  String get photoCompare => 'Prima vs ultima';

  @override
  String get photoAddOtherDay => 'Aggiungi per un altro giorno';

  @override
  String get photoEmpty => 'Ancora nessuna foto.\nScatta una foto al giorno e guarda crescere il tuo bambino.';

  @override
  String get photoToday => 'Foto di oggi';

  @override
  String get photoAddToday => 'Aggiungi la foto di oggi';

  @override
  String get photoReplace => 'Sostituisci';

  @override
  String get photoDeleteTitle => 'Eliminare questa foto?';

  @override
  String get ageBeforeBirth => 'Prima della nascita';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni',
      one: '1 giorno',
      zero: 'Giorno della nascita',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months m $days g';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years a $months m';
  }

  @override
  String get navMemories => 'Ricordi';

  @override
  String get memoriesTabPhotos => 'Foto';

  @override
  String get milestoneNoAchievedHint => 'Tocca «Prossime» per registrarne una predefinita,\noppure usa il pulsante qui sotto per una personalizzata.';

  @override
  String get skinTitle => 'Problemi della pelle';

  @override
  String get skinNew => 'Nuovo problema della pelle';

  @override
  String get skinEdit => 'Modifica problema della pelle';

  @override
  String skinTabActive(int count) {
    return 'In corso ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'Guariti ($count)';
  }

  @override
  String get skinEmptyActive => 'Nessun problema della pelle monitorato.\nTocca + per iniziare: puoi aggiungere una foto ogni giorno per mostrare al medico come cambia.';

  @override
  String get skinEmptyHealed => 'Ancora nulla di guarito.';

  @override
  String get skinUpdateDue => 'Da aggiornare oggi';

  @override
  String skinSince(String date) {
    return 'Dal $date';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni',
      one: '1 giorno',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return 'Guarito il $date';
  }

  @override
  String skinReminderAt(String time) {
    return 'Promemoria giornaliero alle $time';
  }

  @override
  String get skinSeverityTrend => 'Gravità nel tempo';

  @override
  String get skinNoUpdates => 'Nessun aggiornamento. Aggiungi quello di oggi per iniziare la cronologia.';

  @override
  String get skinExportPdf => 'Esporta per il medico (PDF)';

  @override
  String get skinMarkHealed => 'Segna come guarito';

  @override
  String get skinReopen => 'Segna di nuovo come attivo';

  @override
  String get skinUpdateToday => 'Aggiungi l’aggiornamento di oggi';

  @override
  String get skinEditToday => 'Modifica l’aggiornamento di oggi';

  @override
  String skinDeleteTitle(String name) {
    return 'Eliminare $name e tutti i suoi aggiornamenti?';
  }

  @override
  String get skinDeleteUpdateTitle => 'Eliminare questo aggiornamento?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'Trattamento: $treatment';
  }

  @override
  String get skinName => 'Problema *';

  @override
  String get skinBodyArea => 'In quale parte del corpo?';

  @override
  String get skinBegan => 'Iniziato il';

  @override
  String get skinRemindDaily => 'Ricordami di aggiornarlo ogni giorno';

  @override
  String get skinReminderTime => 'Ora del promemoria';

  @override
  String get skinUpdateTitle => 'Aggiornamento della pelle';

  @override
  String get skinSeverity => 'Com’è oggi?';

  @override
  String get skinSeverity0 => '0 · Scomparso';

  @override
  String get skinSeverity1 => '1 · Lieve';

  @override
  String get skinSeverity2 => '2 · Moderato';

  @override
  String get skinSeverity3 => '3 · Grave';

  @override
  String get skinSeverity4 => '4 · Molto grave';

  @override
  String get skinTreatment => 'Trattamento (facoltativo)';

  @override
  String get skinTreatmentHint => 'es. crema idratante, idrocortisone 1%';

  @override
  String get skinAddPhoto => 'Aggiungi una foto';

  @override
  String get skinCardNone => 'Monitora giorno per giorno un’irritazione, un eczema o un altro problema della pelle, con foto per il medico';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count da aggiornare oggi',
      one: '1 da aggiornare oggi',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'Preparazione del backup…';

  @override
  String get backupFailed => 'Impossibile creare il backup.';

  @override
  String get backupSavedTo => 'Backup salvato in:';

  @override
  String get backupShareSubject => 'Backup di Baby Tracker';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Include $count foto.',
      one: 'Include 1 foto.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'Poppata';

  @override
  String get widgetStopFeed => 'Ferma poppata';

  @override
  String get widgetDiaper => 'Pannolino';

  @override
  String get widgetSleep => 'Sonno';

  @override
  String get widgetWakeUp => 'Sveglio';

  @override
  String widgetFeedingFor(String duration) {
    return 'In poppata da $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'Mangiato $ago';
  }

  @override
  String get widgetNoFeedsYet => 'Ancora nessuna poppata';

  @override
  String widgetChangedAgo(String ago) {
    return 'Cambiato $ago';
  }

  @override
  String get widgetNoDiapersYet => 'Ancora nessun pannolino';

  @override
  String widgetAsleepFor(String duration) {
    return 'Dorme da $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'Sveglio $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Prima ferma il timer del sonno';

  @override
  String get widgetStopFeedFirst => 'Prima ferma il timer della poppata';

  @override
  String quickAddTitle(String name) {
    return 'Aggiungi per $name';
  }

  @override
  String get quickAddOpenApp => 'Apri l’app';

  @override
  String get foodPeanut => 'Arachide';

  @override
  String get foodEgg => 'Uovo';

  @override
  String get foodDairy => 'Latticini';

  @override
  String get foodWheat => 'Grano';

  @override
  String get foodSoy => 'Soia';

  @override
  String get foodFish => 'Pesce';

  @override
  String get foodShellfish => 'Crostacei';

  @override
  String get foodTreeNuts => 'Frutta a guscio';

  @override
  String get foodSesame => 'Sesamo';

  @override
  String get foodBanana => 'Banana';

  @override
  String get foodAvocado => 'Avocado';

  @override
  String get foodSweetPotato => 'Patata dolce';

  @override
  String get foodRiceCereal => 'Crema di riso';

  @override
  String get foodOatmeal => 'Avena';

  @override
  String get foodCarrot => 'Carota';

  @override
  String get foodApple => 'Mela';

  @override
  String get foodPea => 'Pisello';

  @override
  String get symptomRash => 'Eruzione';

  @override
  String get symptomHives => 'Orticaria';

  @override
  String get symptomVomiting => 'Vomito';

  @override
  String get symptomDiarrhea => 'Diarrea';

  @override
  String get symptomSwelling => 'Gonfiore';

  @override
  String get doseUnitDrops => 'gocce';

  @override
  String get doseUnitTablets => 'compresse';

  @override
  String get bottleMaterialPlastic => 'Plastica';

  @override
  String get bottleMaterialGlass => 'Vetro';

  @override
  String get bottleMaterialSilicone => 'Silicone';

  @override
  String get bottleMaterialSteel => 'Acciaio inox';

  @override
  String get visitReasonRoutine => 'Controllo di routine';

  @override
  String get visitReasonSick => 'Malattia';

  @override
  String get visitReasonVaccination => 'Vaccinazione';

  @override
  String get visitReasonSpecialist => 'Specialista';

  @override
  String get visitReasonFollowUp => 'Controllo successivo';

  @override
  String get visitReasonOther => 'Altro';

  @override
  String get pooColourPale => 'Pallido';

  @override
  String get noteTagHappyDay => 'Giornata felice';

  @override
  String get noteTagSleptWell => 'Ha dormito bene';

  @override
  String get noteTagFussy => 'Irrequieto';

  @override
  String get noteTagNotWell => 'Non stava bene';

  @override
  String get noteTagFirstTime => 'Prima volta!';

  @override
  String get noteTagTeething => 'Dentizione';

  @override
  String get noteTagGrowthSpurt => 'Scatto di crescita';

  @override
  String get noteTagMilestone => 'Tappa';

  @override
  String get tummyTimeNotesHint => 'es. gli è piaciuto, irrequieto...';

  @override
  String get skinSuggestEczema => 'Eczema';

  @override
  String get skinSuggestDiaperRash => 'Dermatite da pannolino';

  @override
  String get skinSuggestCradleCap => 'Crosta lattea';

  @override
  String get skinSuggestBabyAcne => 'Acne neonatale';

  @override
  String get skinSuggestHeatRash => 'Sudamina';

  @override
  String get skinSuggestDrySkin => 'Pelle secca';

  @override
  String get bodyFace => 'Viso';

  @override
  String get bodyScalp => 'Cuoio capelluto';

  @override
  String get bodyNeck => 'Collo';

  @override
  String get bodyChest => 'Petto';

  @override
  String get bodyBack => 'Schiena';

  @override
  String get bodyArms => 'Braccia';

  @override
  String get bodyHands => 'Mani';

  @override
  String get bodyDiaperArea => 'Zona del pannolino';

  @override
  String get bodyLegs => 'Gambe';

  @override
  String get bodyFeet => 'Piedi';

  @override
  String get medSuggestGripeWater => 'Gripe water';

  @override
  String get medSuggestVitaminD => 'Vitamina D';

  @override
  String get medSuggestIronDrops => 'Gocce di ferro';

  @override
  String get medSuggestAntibiotic => 'Antibiotico';

  @override
  String get medSuggestProbiotic => 'Probiotico';

  @override
  String vaccinePageTitle(String name) {
    return '$name — Vaccinazioni';
  }

  @override
  String get vaccineDeleteTitle => 'Eliminare il vaccino registrato?';

  @override
  String get vaccineSiteHint => 'es. coscia sinistra';

  @override
  String get vaccineNotesHint => 'es. febbre lieve, irrequietezza, nessuna reazione...';

  @override
  String get vaccineNoGivenHint => 'Usa il pulsante + o tocca «Segna come fatto» nella scheda Calendario.';

  @override
  String get vaccineAgeBirth => 'Nascita';

  @override
  String vaccineAgeMonths(String range) {
    return '$range mesi';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range mesi (ogni anno)';
  }

  @override
  String get whoTabHeight => 'Altezza';

  @override
  String get whoTabHead => 'Testa';

  @override
  String get whoChartFor => 'Curva per:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 mesi)';
  }

  @override
  String get whoNoDataPoints => 'Ancora nessun dato. Registra le misure per vedere il tuo bambino sulla curva.';

  @override
  String get whoLatestMeasurement => 'Ultima misurazione';

  @override
  String whoApproxPercentile(String value) {
    return 'Percentile approssimativo: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return 'tra $low e $high';
  }

  @override
  String whoMonthsOld(String months) {
    return '$months mesi';
  }

  @override
  String get whoDisclaimer => 'Queste curve sono solo informative. Chiedi sempre al tuo pediatra di interpretarle.';

  @override
  String get whoMedian => 'P50 (mediana)';

  @override
  String get notifChannelName => 'Promemoria di Baby Tracker';

  @override
  String get notifChannelDesc => 'Promemoria per poppate, pannolini, farmaci e controlli della pelle';

  @override
  String get notifFeedTitle => 'È ora di mangiare!';

  @override
  String notifFeedBody(String interval) {
    return 'Nessuna poppata registrata nelle ultime $interval.';
  }

  @override
  String get notifDiaperTitle => 'Controlla il pannolino!';

  @override
  String notifDiaperBody(String interval) {
    return 'Nessun cambio pannolino registrato nelle ultime $interval.';
  }

  @override
  String notifDoseTitle(String name) {
    return 'Dose da dare: $name';
  }

  @override
  String notifDoseBody(String name) {
    return 'È ora della prossima dose di $name.';
  }

  @override
  String notifSkinTitle(String name) {
    return 'Controllo della pelle: $name';
  }

  @override
  String get notifSkinBody => 'Aggiungi l’aggiornamento di oggi (e una foto, se vuoi).';

  @override
  String get timerFeedingNotif => 'Timer della poppata attivo';

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
  String get settingsRtlActive => 'Layout da destra a sinistra attivo';

  @override
  String get measurementHeightIn => 'Lunghezza / altezza (in)';

  @override
  String get measurementHeadIn => 'Circonferenza cranica (in)';

  @override
  String get growthHeightIn => 'Altezza (in)';

  @override
  String get growthHeadIn => 'Circonferenza cranica (in)';

  @override
  String growthHeightValueIn(String value) {
    return '$value in';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'Testa $value in';
  }

  @override
  String get settingsLengthUnitNote => 'Le lunghezze seguono l’unità di peso (cm con kg, pollici con lbs)';

  @override
  String get formulaStoreBrand => 'Marca del supermercato';

  @override
  String get pooShade1 => 'Bianco gesso';

  @override
  String get pooShade2 => 'Grigio chiaro';

  @override
  String get pooShade3 => 'Grigio argilla';

  @override
  String get pooShade4 => 'Crema';

  @override
  String get pooShade5 => 'Beige scuro';

  @override
  String get pooShade6 => 'Giallo-verde pallido';

  @override
  String get pooShade7 => 'Giallo senape';

  @override
  String get pooShade8 => 'Marrone';

  @override
  String get pooShade9 => 'Verde';

  @override
  String get vaccineScheduleNote => 'Basato sul calendario dei CDC degli Stati Uniti. Il calendario del tuo paese può essere diverso: segui il consiglio del medico.';

  @override
  String get settingsAbout => 'Informazioni';

  @override
  String get aboutTitle => 'Informazioni e licenze';

  @override
  String aboutVersion(String version) {
    return 'Versione $version';
  }

  @override
  String get aboutLicenseLine => 'Software libero rilasciato con la GNU General Public License v3.0 o successiva. Puoi usarlo, studiarlo, condividerlo e modificarlo.';

  @override
  String get aboutSourceCode => 'Codice sorgente';

  @override
  String get aboutDisclaimerTitle => 'Non è un parere medico';

  @override
  String get aboutDisclaimerBody => 'Simple Baby Tracker è un diario per i tuoi appunti personali. Non è un dispositivo medico e non diagnostica, cura né monitora alcuna condizione. Curve di crescita, intervalli di temperatura, promemoria dei farmaci e note sul colore delle feci sono solo informazioni generali e possono essere incomplete o errate. Segui sempre il consiglio del medico o del farmacista e contattali, o chiama i soccorsi, se sei preoccupato per il tuo bambino.';

  @override
  String get aboutPrivacyTitle => 'I tuoi dati restano su questo telefono';

  @override
  String get aboutPrivacyBody => 'L’app non ha accesso a internet, né account, pubblicità o statistiche. Registrazioni e foto sono salvate solo su questo dispositivo. Nulla esce da qui, a meno che tu non esporti un backup e lo condivida tu stesso.';

  @override
  String get aboutCreditsTitle => 'Crediti';

  @override
  String get aboutCreditsBody => 'Icone: create con Claude Design.\nFont: Inter e Quicksand (SIL Open Font License 1.1).\nCurve di crescita: standard di crescita OMS (who.int).\nCalendario vaccinale: basato sul calendario dei CDC degli Stati Uniti.\nRealizzata con Flutter.';

  @override
  String get aboutLicencesButton => 'Licenze open source';
}
