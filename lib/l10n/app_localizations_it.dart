// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Tracker del Bambino';

  @override
  String get navHome => 'Home';

  @override
  String get navGraphs => 'Grafici';

  @override
  String get navMilestones => 'Milestones';

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
  String get actionLog => 'Log';

  @override
  String get cannotUndo => 'Questa azione non può essere annullata';

  @override
  String get noData => 'Nessun dato';

  @override
  String get noNotes => 'No notes';

  @override
  String get noDetails => 'Nessun dettaglio';

  @override
  String get optional => '(optional)';

  @override
  String get homeTitle => 'Tracker';

  @override
  String get feedsToday => 'Poppe oggi';

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
      zero: 'Nessun evento',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Eliminare questo giorno?';

  @override
  String deleteDayContent(String date) {
    return 'Eliminare $date e tutte le sue voci? Questa azione non può essere annullata';
  }

  @override
  String get rashRecorded => 'Arrossamento registrato';

  @override
  String get noEntriesYet => 'Ancora nessuna voce';

  @override
  String get addEntry => 'Aggiungi voce';

  @override
  String get deleteEntryTitle => 'Eliminare questa voce?';

  @override
  String get entryTypeDiaper => 'Cambio pannolino';

  @override
  String get entryTypeFeeding => 'Poppa';

  @override
  String get entryTypeSleep => 'Sonno';

  @override
  String get entryTypeTemperature => 'Temperatura';

  @override
  String get entryTypeWeight => 'Peso';

  @override
  String get entryTypeTummyTime => 'Tummy time';

  @override
  String get entryTypeMedication => 'Medication';

  @override
  String get entryTypeDoctorVisit => 'Doctor visit';

  @override
  String get entryTypeNote => 'Daily note / journal';

  @override
  String get entryTypePumping => 'Pumping session';

  @override
  String get entryTypeBath => 'Bath';

  @override
  String get diaperPeePoo => 'Pannolino — pipì + cacca';

  @override
  String get diaperPee => 'Pannolino — solo pipì';

  @override
  String get diaperPoo => 'Pannolino — solo cacca';

  @override
  String get diaperChange => 'Cambio pannolino';

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
  String get consistencyHard => 'Dura / A pallini';

  @override
  String get consistencyHardHint => 'Stitichezza';

  @override
  String get consistencyFirm => 'Formata';

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
  String get consistencyLoose => 'Pastosa / Semi-liquida';

  @override
  String get consistencyLooseHint => 'Da monitorare';

  @override
  String get consistencyWatery => 'Liquida / Acquosa';

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
  String get rashPresent => 'Eritema da pannolino presente';

  @override
  String get rashPresentHint => 'Rossore, irritazione o dermatite da pannolino';

  @override
  String get rashCreamUsed => 'Crema applicata';

  @override
  String get rashCreamCustomLabel => 'Nome della crema / pomata';

  @override
  String get rashFollowUpTitle => '⚠️ Follow-up dell\'eritema';

  @override
  String get rashFollowUpQuestion => 'Nell\'ultimo pannolino è stato registrato un arrossamento. È migliorato?';

  @override
  String get rashImproved => 'Sì, migliorato';

  @override
  String get rashNoChange => 'Nessun cambiamento / peggiorato';

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
  String get feedModeSuckle => 'Allattamento al seno';

  @override
  String get feedAmountMl => 'Quantità (ml)';

  @override
  String get feedType => 'Tipo';

  @override
  String get feedBreastMilk => 'Latte materno';

  @override
  String get feedFormula => 'Latte artificiale';

  @override
  String get feedFormulaBrand => 'Marca del latte';

  @override
  String get feedFormulaBrandCustom => 'Nome della marca';

  @override
  String get feedDurationMinutes => 'Durata (minuti)';

  @override
  String get addAnotherFeed => 'Aggiungi un\'altra poppata';

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
  String get sleepNotes => 'Note (opzionali)';

  @override
  String get sleepNotesHint => 'Es.: irrequieto, si è svegliato brevemente...';

  @override
  String get sleepNoNotes => 'Nessuna nota';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}h ${m}min';
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
  String get tempReference => 'Riferimento temperatura';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ In caso di febbre in neonati di età inferiore a 3 mesi, consultare sempre il pediatra';

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
  String get tempFeverThreshold => 'Soglia febbrile';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni',
      one: '1 giorno',
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
    return 'Ultima registrazione: $weight il $date';
  }

  @override
  String get weightLatest => 'Ultimo peso';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount nel periodo';
  }

  @override
  String get tummyTimeLog => 'Log tummy time';

  @override
  String get tummyTimeEdit => 'Edit tummy time';

  @override
  String get tummyTimeStart => 'Start time';

  @override
  String get tummyTimeEnd => 'End time';

  @override
  String get tummyTimeTip => 'Tummy time strengthens neck and shoulder muscles.';

  @override
  String get medicationLog => 'Log medication';

  @override
  String get medicationEdit => 'Edit medication';

  @override
  String get medicationName => 'Medication name *';

  @override
  String get medicationDose => 'Dose';

  @override
  String get medicationUnit => 'Unit';

  @override
  String get medicationCommon => 'Common medications';

  @override
  String get medicationWarning => 'Always follow dosage instructions for weight/age. Do not exceed recommended frequency.';

  @override
  String get medicationNotes => 'Notes (optional)';

  @override
  String get medicationNotesHint => 'e.g. reason, reaction...';

  @override
  String get doctorVisitLog => 'Doctor visit';

  @override
  String get doctorVisitEdit => 'Edit doctor visit';

  @override
  String get doctorName => 'Doctor / clinic name';

  @override
  String get doctorVisitReason => 'Reason for visit';

  @override
  String get doctorVisitMeasurements => 'Measurements (optional)';

  @override
  String get doctorVisitNotes => 'Notes';

  @override
  String get doctorVisitNotesHint => 'e.g. vaccinations given, doctor recommendations...';

  @override
  String get measurementWeightKg => 'Weight (kg)';

  @override
  String get measurementWeightLbs => 'Weight (lbs)';

  @override
  String get measurementHeightCm => 'Length / height (cm)';

  @override
  String get measurementHeadCm => 'Head circumference (cm)';

  @override
  String get dailyNoteLog => 'Daily note';

  @override
  String get dailyNoteEdit => 'Edit note';

  @override
  String get dailyNoteTitle => 'Title (optional)';

  @override
  String get dailyNoteText => 'Note';

  @override
  String get dailyNoteHint => 'What happened today? First time rolling? Fussy morning?';

  @override
  String get dailyNoteTags => 'Quick tags';

  @override
  String get pumpingLog => 'Log pumping session';

  @override
  String get pumpingEdit => 'Edit pumping session';

  @override
  String get pumpingLeft => 'Left breast (ml)';

  @override
  String get pumpingRight => 'Right breast (ml)';

  @override
  String get pumpingTotal => 'Total pumped';

  @override
  String get pumpingDuration => 'Duration (minutes)';

  @override
  String get pumpingStored => 'Stored / frozen';

  @override
  String get pumpingNotes => 'Notes (optional)';

  @override
  String get pumpingSessionTitle => 'Pumping';

  @override
  String pumpingTotalMl(int ml) {
    return '$ml ml total';
  }

  @override
  String get bathLog => 'Log bath';

  @override
  String get bathEdit => 'Edit bath';

  @override
  String get bathType => 'Bath type';

  @override
  String get bathTypeSponge => 'Sponge bath';

  @override
  String get bathTypeTub => 'Tub bath';

  @override
  String get bathTypeShower => 'Shower';

  @override
  String get bathNotes => 'Notes (optional)';

  @override
  String get bathProducts => 'Products used (optional)';

  @override
  String get vaccineTitle => 'Vaccinations';

  @override
  String get vaccineTabGiven => 'Given';

  @override
  String get vaccineTabSchedule => 'Schedule';

  @override
  String get vaccineLog => 'Log vaccine';

  @override
  String get vaccineEdit => 'Edit vaccine';

  @override
  String get vaccineName => 'Vaccine name';

  @override
  String get vaccineBrand => 'Brand / manufacturer (optional)';

  @override
  String get vaccineDate => 'Date given';

  @override
  String get vaccineDose => 'Dose number (optional)';

  @override
  String get vaccineSite => 'Injection site (optional)';

  @override
  String get vaccineNotes => 'Notes / reactions';

  @override
  String vaccineDue(String age) {
    return 'Due at $age';
  }

  @override
  String get vaccineGiven => 'Given';

  @override
  String get vaccineNoGiven => 'No vaccines logged yet.';

  @override
  String get vaccineMarkGiven => 'Mark as given';

  @override
  String get whoChartTitle => 'WHO Growth Charts';

  @override
  String get whoWeightForAge => 'Weight-for-age';

  @override
  String get whoHeightForAge => 'Length/Height-for-age';

  @override
  String get whoHeadForAge => 'Head circumference-for-age';

  @override
  String get whoGenderBoy => 'Boy';

  @override
  String get whoGenderGirl => 'Girl';

  @override
  String get whoNoData => 'No measurements logged yet.\nLog weight from a day\'s entries to see the chart.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'Your baby';

  @override
  String whoAgeMonths(int n) {
    return '$n mo';
  }

  @override
  String get whoNoBirthDate => 'Set baby\'s date of birth in the profile to see age-based charts.';

  @override
  String get notifTitle => 'Reminders';

  @override
  String get notifFeedingReminder => 'Feeding reminder';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'Remind me after ${hours}h if no feed logged';
  }

  @override
  String get notifDiaperReminder => 'Diaper reminder';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'Remind me after ${hours}h if no diaper logged';
  }

  @override
  String get notifMedicationReminder => 'Medication reminder';

  @override
  String get notifEnabled => 'Notifications enabled';

  @override
  String get notifDisabled => 'Notifications disabled';

  @override
  String get notifPermissionRequired => 'Please enable notifications in your device settings.';

  @override
  String get exportTitle => 'Export & backup';

  @override
  String get exportJson => 'Export as JSON';

  @override
  String get exportPdf => 'Export as PDF';

  @override
  String get exportPdfDesc => 'Human-readable summary for your paediatrician';

  @override
  String get exportGoogleDrive => 'Back up to Google Drive';

  @override
  String get exportGenerating => 'Generating report...';

  @override
  String get milestoneTitle => 'Milestones';

  @override
  String get milestoneTabAchieved => 'Achieved';

  @override
  String get milestoneTabUpcoming => 'Upcoming';

  @override
  String get milestoneCustomAdd => 'Custom milestone';

  @override
  String get milestoneDeleteTitle => 'Delete milestone?';

  @override
  String get milestoneEdit => 'Edit milestone';

  @override
  String get milestoneAdd => 'Add milestone';

  @override
  String get milestoneName => 'Milestone name *';

  @override
  String get milestoneDate => 'Date achieved';

  @override
  String get milestoneNotes => 'Notes (optional)';

  @override
  String get milestoneNotesHint => 'Any details worth remembering...';

  @override
  String get milestoneNoAchieved => 'No milestones logged yet.';

  @override
  String get milestoneAllDone => 'All preset milestones achieved! 🎉';

  @override
  String get milestoneFirstSmile => '😊 First smile';

  @override
  String get milestoneFirstLaugh => '😂 First laugh';

  @override
  String get milestoneFirstTooth => '🦷 First tooth';

  @override
  String get milestoneRolledBackTummy => '🔄 Rolled back → tummy';

  @override
  String get milestoneRolledTummyBack => '🔄 Rolled tummy → back';

  @override
  String get milestoneSatUnsupported => '🧸 Sat unsupported';

  @override
  String get milestoneStartedCrawling => '🐣 Started crawling';

  @override
  String get milestonePulledToStand => '🏋️ Pulled to stand';

  @override
  String get milestoneFirstSteps => '👣 First steps';

  @override
  String get milestoneFirstWord => '💬 First word';

  @override
  String get milestoneFirstSolidFood => '🥣 First solid food';

  @override
  String get milestoneFirstHaircut => '✂️ First haircut';

  @override
  String get milestoneSleptThroughNight => '🌙 Slept through the night';

  @override
  String get milestoneWavedBye => '👋 Waved bye-bye';

  @override
  String get milestoneClappedHands => '👏 Clapped hands';

  @override
  String get milestoneFirstBirthday => '🎂 First birthday';

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
  String get settingsUnits => 'Unità di misura';

  @override
  String get settingsWeightUnit => 'Unità di peso';

  @override
  String get settingsTempUnit => 'Unità di temperatura';

  @override
  String get settingsLanguage => 'Lingua';

  @override
  String get settingsNotifications => 'Notifications & reminders';

  @override
  String get settingsExport => 'Export & backup';

  @override
  String get settingsTips => 'Suggerimenti';

  @override
  String get tipSwitchBabies => 'Cambia bambino';

  @override
  String get tipSwitchBabiesDesc => 'Tocca l\'avatar del bambino in alto per cambiare o aggiungere un profilo';

  @override
  String get tipSwipeDelete => 'Scorri a sinistra per eliminare';

  @override
  String get tipSwipeDeleteDesc => 'Funziona sulle schede giornaliere e sulle singole voci';

  @override
  String get tipTapToEdit => 'Tocca qualsiasi voce per modificarla';

  @override
  String get tipMultipleFeeds => 'Registra più poppate';

  @override
  String get tipMultipleFeedsDesc => 'Nel modulo della poppata, tocca \"Aggiungi un\'altra poppata\" per registrare allattamento e biberon insieme';

  @override
  String get tipExportData => 'Esporta dati';

  @override
  String get tipExportDataDesc => 'Usa l\'icona di condivisione nella Home per esportare tutti i dati in JSON';

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
  String get genderUnknown => 'Non specificato';

  @override
  String get genderBoy => 'Maschio';

  @override
  String get genderGirl => 'Femmina';

  @override
  String get cannotDeleteOnlyProfile => 'Impossibile eliminare l\'unico profilo del bambino';

  @override
  String deleteProfileTitle(String name) {
    return 'Eliminare $name?';
  }

  @override
  String get deleteProfileContent => 'Tutti i dati di questo bambino saranno eliminati definitivamente';

  @override
  String get graphsTitle => 'Grafici';

  @override
  String get graphsTabDaily => 'Giornaliero';

  @override
  String get graphsTabGrowth => 'Crescita';

  @override
  String get graphsTabHealth => 'Salute';

  @override
  String get graphsTabWho => 'WHO Charts';

  @override
  String get graphsTotalFeeds => 'Totale poppate';

  @override
  String get graphsAvgPerDay => 'Media/giorno';

  @override
  String get graphsTotalDiapers => 'Pannolini';

  @override
  String get graphsTotalMilk => 'Latte totale';

  @override
  String get graphsTotalSleep => 'Sonno totale';

  @override
  String get graphsAvgSleep => 'Sonno medio/giorno';

  @override
  String get graphsFeedsPerDay => 'Poppate al giorno';

  @override
  String get graphsDiapersPerDay => 'Pannolini al giorno';

  @override
  String get graphsMilkPerDay => 'Latte al giorno (ml)';

  @override
  String get graphsSleepPerDay => 'Sonno al giorno (ore)';

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
  String get graphsNoWeightData => 'Ancora nessuna registrazione di peso\nRegistra il peso dalle voci di un giorno';

  @override
  String get graphsNoTempData => 'Ancora nessuna registrazione di temperatura\nRegistra la temperatura da un giorno';

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
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years anni $months mesi';
  }
}
