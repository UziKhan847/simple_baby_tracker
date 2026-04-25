// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Suivi Bébé';

  @override
  String get navHome => 'Accueil';

  @override
  String get navGraphs => 'Graphiques';

  @override
  String get navMilestones => 'Milestones';

  @override
  String get navSettings => 'Paramètres';

  @override
  String get actionCancel => 'Annuler';

  @override
  String get actionSave => 'Enregistrer';

  @override
  String get actionUpdate => 'Mettre à jour';

  @override
  String get actionDelete => 'Supprimer';

  @override
  String get actionAdd => 'Ajouter';

  @override
  String get actionEdit => 'Modifier';

  @override
  String get actionClose => 'Fermer';

  @override
  String get actionExport => 'Exporter les données';

  @override
  String get actionAddDay => 'Ajouter un jour';

  @override
  String get actionLog => 'Log';

  @override
  String get cannotUndo => 'Cette action est irréversible';

  @override
  String get noData => 'Aucune donnée';

  @override
  String get noNotes => 'No notes';

  @override
  String get noDetails => 'Aucun détail';

  @override
  String get optional => '(optional)';

  @override
  String get homeTitle => 'Suivi';

  @override
  String get feedsToday => 'Tétées aujourd\'hui';

  @override
  String get diapersToday => 'Couches aujourd\'hui';

  @override
  String get sleepToday => 'Sommeil aujourd\'hui';

  @override
  String todayLabel(String date) {
    return 'Aujourd\'hui — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count événements',
      one: '1 événement',
      zero: 'Aucun événement',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Supprimer ce jour ?';

  @override
  String deleteDayContent(String date) {
    return 'Supprimer $date et toutes ses entrées ? Cette action est irréversible';
  }

  @override
  String get rashRecorded => 'Érythème enregistré';

  @override
  String get noEntriesYet => 'Aucune entrée pour l\'instant';

  @override
  String get addEntry => 'Ajouter une entrée';

  @override
  String get deleteEntryTitle => 'Supprimer cette entrée ?';

  @override
  String get entryTypeDiaper => 'Change de couche';

  @override
  String get entryTypeFeeding => 'Tétée';

  @override
  String get entryTypeSleep => 'Sommeil';

  @override
  String get entryTypeTemperature => 'Température';

  @override
  String get entryTypeWeight => 'Poids';

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
  String get diaperPeePoo => 'Couche — pipi et caca';

  @override
  String get diaperPee => 'Couche — pipi seulement';

  @override
  String get diaperPoo => 'Couche — caca seulement';

  @override
  String get diaperChange => 'Change de couche';

  @override
  String get editDiaper => 'Modifier la couche';

  @override
  String get diaperContents => 'Contenu';

  @override
  String get diaperNone => 'Rien';

  @override
  String get diaperPeeLabel => 'Pipi';

  @override
  String get diaperPooLabel => 'Caca';

  @override
  String get diaperBoth => 'Les deux';

  @override
  String get diaperConsistency => 'Consistance';

  @override
  String get consistencyHard => 'Dure / Granuleuse';

  @override
  String get consistencyHardHint => 'Constipation';

  @override
  String get consistencyFirm => 'Ferme';

  @override
  String get consistencyFirmHint => 'Légèrement ferme';

  @override
  String get consistencyNormal => 'Normale';

  @override
  String get consistencyNormalHint => 'Saine';

  @override
  String get consistencySoft => 'Molle';

  @override
  String get consistencySoftHint => 'Légèrement molle';

  @override
  String get consistencyLoose => 'Pâteuse / Semi-liquide';

  @override
  String get consistencyLooseHint => 'À surveiller';

  @override
  String get consistencyWatery => 'Liquide';

  @override
  String get consistencyWateryHint => 'Diarrhée';

  @override
  String get warnConstipation => 'Signes de constipation — surveiller de près';

  @override
  String get warnDiarrhea => 'Signes de diarrhée — surveiller de près';

  @override
  String get pooColourLabel => 'Couleur (appuyez pour choisir)';

  @override
  String get pooColourAbnormal => '⚠️ Anormale (pâle)';

  @override
  String get pooColourNormal => '✅ Normale';

  @override
  String pooColourSelected(String label) {
    return 'Sélectionnée : $label';
  }

  @override
  String get diaperSize => 'Taille de couche';

  @override
  String get diaperBrand => 'Marque';

  @override
  String get diaperBrandCustomLabel => 'Nom de la marque';

  @override
  String get rashPresent => 'Érythème présent';

  @override
  String get rashPresentHint => 'Rougeur, irritation ou érythème fessier';

  @override
  String get rashCreamUsed => 'Crème appliquée';

  @override
  String get rashCreamCustomLabel => 'Nom de la crème / pommade';

  @override
  String get rashFollowUpTitle => '⚠️ Suivi de l\'érythème';

  @override
  String get rashFollowUpQuestion => 'Un érythème a été noté à la dernière couche. Y a-t-il amélioration ?';

  @override
  String get rashImproved => 'Oui, amélioration';

  @override
  String get rashNoChange => 'Pas de changement / Aggravation';

  @override
  String get addFeeding => 'Ajouter une tétée';

  @override
  String get editFeeding => 'Modifier la tétée';

  @override
  String feedLabel(int number) {
    return 'Tétée $number';
  }

  @override
  String get feedModeBottle => 'Biberon';

  @override
  String get feedModeSuckle => 'Sein';

  @override
  String get feedAmountMl => 'Quantité (ml)';

  @override
  String get feedType => 'Type';

  @override
  String get feedBreastMilk => 'Lait maternel';

  @override
  String get feedFormula => 'Lait infantile';

  @override
  String get feedFormulaBrand => 'Marque du lait';

  @override
  String get feedFormulaBrandCustom => 'Nom de la marque';

  @override
  String get feedDurationMinutes => 'Durée (minutes)';

  @override
  String get addAnotherFeed => 'Ajouter une autre tétée';

  @override
  String get bottleBreastMilk => 'Biberon — lait maternel';

  @override
  String get bottleFormula => 'Biberon — lait infantile';

  @override
  String get breastfeedingSuckle => 'Allaitement (au sein)';

  @override
  String get logSleep => 'Enregistrer le sommeil';

  @override
  String get editSleep => 'Modifier le sommeil';

  @override
  String get sleepStart => 'Début du sommeil';

  @override
  String get sleepWakeUp => 'Réveil';

  @override
  String sleepDuration(String duration) {
    return 'Durée : $duration';
  }

  @override
  String get sleepInvalidTimes => 'Horaires invalides';

  @override
  String get sleepWrapsNextDay => '(se termine le lendemain)';

  @override
  String get sleepNotes => 'Notes (optionnel)';

  @override
  String get sleepNotesHint => 'Exemple : agité, bref réveil...';

  @override
  String get sleepNoNotes => 'Aucune note';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}h ${m}min';
  }

  @override
  String get logTemperature => 'Enregistrer la température';

  @override
  String get editTemperature => 'Modifier la température';

  @override
  String get temperatureLabel => 'Température';

  @override
  String get tempSeverityLow => 'Température basse — surveiller';

  @override
  String get tempSeverityNormal => 'Température normale';

  @override
  String get tempSeverityElevated => 'Légèrement élevée — surveiller de près';

  @override
  String get tempSeverityFever => 'Fièvre — consultez votre médecin';

  @override
  String get tempReference => 'Référence de température';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ Consultez toujours votre pédiatre en cas de fièvre chez un nourrisson de moins de 3 mois';

  @override
  String get tempLow => 'Basse';

  @override
  String get tempNormal => 'Normale';

  @override
  String get tempElevated => 'Élevée';

  @override
  String get tempFever => 'Fièvre';

  @override
  String get tempLatest => 'Dernière température';

  @override
  String get tempSummary => 'Résumé des températures';

  @override
  String get tempFeverThreshold => 'Seuil de fièvre';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours',
      one: '1 jour',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'Enregistrer le poids';

  @override
  String get editWeight => 'Modifier le poids';

  @override
  String get weightLabel => 'Poids';

  @override
  String weightGain(String amount) {
    return '+$amount de gain';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount de perte';
  }

  @override
  String weightPrevious(String weight) {
    return 'Précédent : $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'Dernier enregistrement : $weight le $date';
  }

  @override
  String get weightLatest => 'Dernier poids';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount sur la période';
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
  String get settingsTitle => 'Paramètres';

  @override
  String get settingsAppearance => 'Apparence';

  @override
  String get settingsDarkMode => 'Mode sombre';

  @override
  String get settingsDarkActive => 'Thème sombre actif';

  @override
  String get settingsLightActive => 'Thème clair actif';

  @override
  String get settingsUnits => 'Unités';

  @override
  String get settingsWeightUnit => 'Unité de poids';

  @override
  String get settingsTempUnit => 'Unité de température';

  @override
  String get settingsLanguage => 'Langue';

  @override
  String get settingsNotifications => 'Notifications & reminders';

  @override
  String get settingsExport => 'Export & backup';

  @override
  String get settingsTips => 'Conseils';

  @override
  String get tipSwitchBabies => 'Changer de bébé';

  @override
  String get tipSwitchBabiesDesc => 'Appuyez sur l\'avatar du bébé en haut pour changer ou ajouter un profil';

  @override
  String get tipSwipeDelete => 'Glissez à gauche pour supprimer';

  @override
  String get tipSwipeDeleteDesc => 'Fonctionne sur les cartes de jour et les entrées individuelles';

  @override
  String get tipTapToEdit => 'Appuyez sur n\'importe quelle entrée pour la modifier';

  @override
  String get tipMultipleFeeds => 'Enregistrer plusieurs tétées';

  @override
  String get tipMultipleFeedsDesc => 'Dans le formulaire, appuyez sur « Ajouter une autre tétée » pour enregistrer allaitement et biberon en une fois';

  @override
  String get tipExportData => 'Exporter les données';

  @override
  String get tipExportDataDesc => 'Utilisez l\'icône de partage sur l\'accueil pour exporter toutes les données au format JSON';

  @override
  String get babiesTitle => 'Bébés';

  @override
  String get addBaby => 'Ajouter un bébé';

  @override
  String get editProfile => 'Modifier le profil';

  @override
  String get babyNameRequired => 'Prénom *';

  @override
  String get babyDobOptional => 'Date de naissance (optionnelle)';

  @override
  String babyBornOn(String date) {
    return 'Né(e) le $date';
  }

  @override
  String get genderUnknown => 'Non spécifié';

  @override
  String get genderBoy => 'Garçon';

  @override
  String get genderGirl => 'Fille';

  @override
  String get cannotDeleteOnlyProfile => 'Impossible de supprimer le seul profil de bébé';

  @override
  String deleteProfileTitle(String name) {
    return 'Supprimer $name ?';
  }

  @override
  String get deleteProfileContent => 'Toutes les données de ce bébé seront définitivement supprimées';

  @override
  String get graphsTitle => 'Graphiques';

  @override
  String get graphsTabDaily => 'Quotidien';

  @override
  String get graphsTabGrowth => 'Croissance';

  @override
  String get graphsTabHealth => 'Santé';

  @override
  String get graphsTabWho => 'WHO Charts';

  @override
  String get graphsTotalFeeds => 'Total tétées';

  @override
  String get graphsAvgPerDay => 'Moy./jour';

  @override
  String get graphsTotalDiapers => 'Couches';

  @override
  String get graphsTotalMilk => 'Lait total';

  @override
  String get graphsTotalSleep => 'Sommeil total';

  @override
  String get graphsAvgSleep => 'Sommeil moy./jour';

  @override
  String get graphsFeedsPerDay => 'Tétées par jour';

  @override
  String get graphsDiapersPerDay => 'Couches par jour';

  @override
  String get graphsMilkPerDay => 'Lait par jour (ml)';

  @override
  String get graphsSleepPerDay => 'Sommeil par jour (heures)';

  @override
  String get graphsWeightOverTime => 'Poids dans le temps';

  @override
  String get graphsTempOverTime => 'Température dans le temps';

  @override
  String graphsMaxLabel(String value) {
    return 'Maximum : $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Minimum : $value';
  }

  @override
  String get graphsNoWeightData => 'Aucune entrée de poids pour l\'instant\nEnregistrez le poids depuis les entrées d\'un jour';

  @override
  String get graphsNoTempData => 'Aucune entrée de température pour l\'instant\nEnregistrez la température depuis un jour';

  @override
  String get timeLabel => 'Heure';

  @override
  String get noColourRecorded => 'Aucune couleur enregistrée';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours',
      one: '1 jour',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mois',
      one: '1 mois',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years an(s) $months mois';
  }
}
