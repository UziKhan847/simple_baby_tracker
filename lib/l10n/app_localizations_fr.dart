// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Baby Tracker';

  @override
  String get navHome => 'Accueil';

  @override
  String get navGraphs => 'Graphiques';

  @override
  String get navMilestones => 'Étapes clés';

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
  String get actionLog => 'Enregistrer';

  @override
  String get cannotUndo => 'Cette action est irréversible.';

  @override
  String get noData => 'Aucune donnée';

  @override
  String get noNotes => 'Aucune note';

  @override
  String get noDetails => 'Aucun détail';

  @override
  String get optional => '(facultatif)';

  @override
  String get homeTitle => 'Tracker';

  @override
  String get feedsToday => 'Repas aujourd\'hui';

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
      zero: 'aucun événement',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Supprimer ce jour ?';

  @override
  String deleteDayContent(String date) {
    return 'Supprimer $date et toutes ses entrées ? Cette action est irréversible.';
  }

  @override
  String get rashRecorded => 'Érythème fessier signalé';

  @override
  String get noEntriesYet => 'Aucune entrée pour le moment';

  @override
  String get addEntry => 'Ajouter une entrée';

  @override
  String get deleteEntryTitle => 'Supprimer cette entrée ?';

  @override
  String get entryTypeDiaper => 'Changer la couche';

  @override
  String get entryTypeFeeding => 'Repas';

  @override
  String get entryTypeSleep => 'Sommeil';

  @override
  String get entryTypeTemperature => 'Température';

  @override
  String get entryTypeWeight => 'Poids';

  @override
  String get entryTypeTummyTime => 'Temps sur le ventre';

  @override
  String get entryTypeMedication => 'Médicament';

  @override
  String get entryTypeDoctorVisit => 'Visite chez le médecin';

  @override
  String get entryTypeNote => 'Note quotidienne / journal';

  @override
  String get entryTypePumping => 'Session de tirage';

  @override
  String get entryTypeBath => 'Bain';

  @override
  String get diaperPeePoo => 'Couche — pipi + caca';

  @override
  String get diaperPee => 'Couche — pipi';

  @override
  String get diaperPoo => 'Couche — caca';

  @override
  String get diaperChange => 'Changer la couche';

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
  String get consistencyHard => 'Dure / petites boules';

  @override
  String get consistencyHardHint => 'Constipation';

  @override
  String get consistencyFirm => 'Ferme';

  @override
  String get consistencyFirmHint => 'Légèrement ferme';

  @override
  String get consistencyNormal => 'Normale';

  @override
  String get consistencyNormalHint => 'Sain';

  @override
  String get consistencySoft => 'Molle';

  @override
  String get consistencySoftHint => 'Légèrement molle';

  @override
  String get consistencyLoose => 'Liquide / pâteuse';

  @override
  String get consistencyLooseHint => 'À surveiller';

  @override
  String get consistencyWatery => 'Aqueuse';

  @override
  String get consistencyWateryHint => 'Diarrhée';

  @override
  String get warnConstipation => 'Signes de constipation — surveillez attentivement';

  @override
  String get warnDiarrhea => 'Signes de diarrhée — surveillez attentivement';

  @override
  String get pooColourLabel => 'Couleur (appuyez pour sélectionner)';

  @override
  String get pooColourAbnormal => '⚠️ Anormale (pâle)';

  @override
  String get pooColourNormal => '✅ Normale';

  @override
  String pooColourSelected(String label) {
    return 'Sélectionnée : $label';
  }

  @override
  String get diaperSize => 'Taille de la couche';

  @override
  String get diaperBrand => 'Marque';

  @override
  String get diaperBrandCustomLabel => 'Nom de la marque';

  @override
  String get rashPresent => 'Érythème fessier présent';

  @override
  String get rashPresentHint => 'Rougeur, irritation ou érythème fessier';

  @override
  String get rashCreamUsed => 'Crème pour érythème utilisée';

  @override
  String get rashCreamCustomLabel => 'Nom de la crème / pommade';

  @override
  String get rashFollowUpTitle => '⚠️ Suivi de l\'érythème';

  @override
  String get rashFollowUpQuestion => 'La dernière couche signalait un érythème. Y a‑t‑il amélioration ?';

  @override
  String get rashImproved => 'Oui, amélioration';

  @override
  String get rashNoChange => 'Pas de changement / aggravé';

  @override
  String get addFeeding => 'Ajouter un repas';

  @override
  String get editFeeding => 'Modifier le repas';

  @override
  String feedLabel(int number) {
    return 'Repas $number';
  }

  @override
  String get feedModeBottle => 'Biberon';

  @override
  String get feedModeSuckle => 'Téter';

  @override
  String get feedAmountMl => 'Quantité (ml)';

  @override
  String get feedType => 'Type';

  @override
  String get feedBreastMilk => 'Lait maternel';

  @override
  String get feedFormula => 'Lait infantile';

  @override
  String get feedFormulaBrand => 'Marque du lait infantile';

  @override
  String get feedFormulaBrandCustom => 'Nom de la marque du lait infantile';

  @override
  String get feedDurationMinutes => 'Durée (minutes)';

  @override
  String get addAnotherFeed => 'Ajouter un autre repas';

  @override
  String get bottleBreastMilk => 'Biberon — lait maternel';

  @override
  String get bottleFormula => 'Biberon — lait infantile';

  @override
  String get breastfeedingSuckle => 'Allaitement (téter)';

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
  String get sleepWrapsNextDay => '(se termine le jour suivant)';

  @override
  String get sleepNotes => 'Notes (facultatif)';

  @override
  String get sleepNotesHint => 'ex. agité, s\'est réveillé brièvement...';

  @override
  String get sleepNoNotes => 'Aucune note';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}h ${m}m';
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
  String get tempSeverityElevated => 'Légèrement élevée — surveiller attentivement';

  @override
  String get tempSeverityFever => 'Fièvre — consultez votre médecin';

  @override
  String get tempReference => 'Référence des températures';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ En cas de fièvre chez un nourrisson de moins de 3 mois, consultez toujours votre pédiatre.';

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
      zero: 'aucun jour',
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
  String get tummyTimeLog => 'Enregistrer le temps sur le ventre';

  @override
  String get tummyTimeEdit => 'Modifier le temps sur le ventre';

  @override
  String get tummyTimeStart => 'Heure de début';

  @override
  String get tummyTimeEnd => 'Heure de fin';

  @override
  String get tummyTimeTip => 'Le temps sur le ventre renforce les muscles du cou et des épaules.';

  @override
  String get medicationLog => 'Enregistrer un médicament';

  @override
  String get medicationEdit => 'Modifier le médicament';

  @override
  String get medicationName => 'Nom du médicament *';

  @override
  String get medicationDose => 'Dose';

  @override
  String get medicationUnit => 'Unité';

  @override
  String get medicationCommon => 'Médicaments courants';

  @override
  String get medicationWarning => 'Respectez toujours les instructions de dosage en fonction du poids/âge. Ne dépassez pas la fréquence recommandée.';

  @override
  String get medicationNotes => 'Notes (facultatif)';

  @override
  String get medicationNotesHint => 'ex. raison, réaction…';

  @override
  String get doctorVisitLog => 'Visite chez le médecin';

  @override
  String get doctorVisitEdit => 'Modifier la visite chez le médecin';

  @override
  String get doctorName => 'Nom du médecin / de la clinique';

  @override
  String get doctorVisitReason => 'Motif de la visite';

  @override
  String get doctorVisitMeasurements => 'Mesures (facultatif)';

  @override
  String get doctorVisitNotes => 'Notes';

  @override
  String get doctorVisitNotesHint => 'ex. vaccins administrés, recommandations du médecin…';

  @override
  String get measurementWeightKg => 'Poids (kg)';

  @override
  String get measurementWeightLbs => 'Poids (lbs)';

  @override
  String get measurementHeightCm => 'Taille (cm)';

  @override
  String get measurementHeadCm => 'Périmètre crânien (cm)';

  @override
  String get dailyNoteLog => 'Note quotidienne';

  @override
  String get dailyNoteEdit => 'Modifier la note';

  @override
  String get dailyNoteTitle => 'Titre (facultatif)';

  @override
  String get dailyNoteText => 'Note';

  @override
  String get dailyNoteHint => 'Que s\'est‑il passé aujourd\'hui ? Premier retournement ? Matin agitée ?';

  @override
  String get dailyNoteTags => 'Tags rapides';

  @override
  String get pumpingLog => 'Enregistrer une session de tirage';

  @override
  String get pumpingEdit => 'Modifier la session de tirage';

  @override
  String get pumpingLeft => 'Sein gauche (ml)';

  @override
  String get pumpingRight => 'Sein droit (ml)';

  @override
  String get pumpingTotal => 'Total tiré';

  @override
  String get pumpingDuration => 'Durée (minutes)';

  @override
  String get pumpingStored => 'Stocké / congelé';

  @override
  String get pumpingNotes => 'Notes (facultatif)';

  @override
  String get pumpingSessionTitle => 'Tirage';

  @override
  String pumpingTotalMl(int ml) {
    return '$ml ml au total';
  }

  @override
  String get bathLog => 'Enregistrer un bain';

  @override
  String get bathEdit => 'Modifier le bain';

  @override
  String get bathType => 'Type de bain';

  @override
  String get bathTypeSponge => 'Bain à l\'éponge';

  @override
  String get bathTypeTub => 'Bain en baignoire';

  @override
  String get bathTypeShower => 'Douche';

  @override
  String get bathNotes => 'Notes (facultatif)';

  @override
  String get bathProducts => 'Produits utilisés (facultatif)';

  @override
  String get vaccineTitle => 'Vaccinations';

  @override
  String get vaccineTabGiven => 'Administrés';

  @override
  String get vaccineTabSchedule => 'Calendrier';

  @override
  String get vaccineLog => 'Enregistrer un vaccin';

  @override
  String get vaccineEdit => 'Modifier le vaccin';

  @override
  String get vaccineName => 'Nom du vaccin';

  @override
  String get vaccineBrand => 'Marque / fabricant (facultatif)';

  @override
  String get vaccineDate => 'Date d\'administration';

  @override
  String get vaccineDose => 'Numéro de dose (facultatif)';

  @override
  String get vaccineSite => 'Site d\'injection (facultatif)';

  @override
  String get vaccineNotes => 'Notes / réactions';

  @override
  String vaccineDue(String age) {
    return 'Prévu à $age';
  }

  @override
  String get vaccineGiven => 'Administré';

  @override
  String get vaccineNoGiven => 'Aucun vaccin enregistré pour le moment.';

  @override
  String get vaccineMarkGiven => 'Marquer comme administré';

  @override
  String get whoChartTitle => 'Courbes de croissance OMS';

  @override
  String get whoWeightForAge => 'Poids pour l\'âge';

  @override
  String get whoHeightForAge => 'Taille pour l\'âge';

  @override
  String get whoHeadForAge => 'Périmètre crânien pour l\'âge';

  @override
  String get whoGenderBoy => 'Garçon';

  @override
  String get whoGenderGirl => 'Fille';

  @override
  String get whoNoData => 'Aucune mesure enregistrée pour le moment.\nEnregistrez un poids dans les entrées du jour pour voir la courbe.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'Votre bébé';

  @override
  String whoAgeMonths(int n) {
    return '$n mois';
  }

  @override
  String get whoNoBirthDate => 'Définissez la date de naissance du bébé dans le profil pour voir les courbes basées sur l\'âge.';

  @override
  String get notifTitle => 'Rappels';

  @override
  String get notifFeedingReminder => 'Rappel de repas';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'Me rappeler après $hours heure(s) si aucun repas n\'est enregistré';
  }

  @override
  String get notifDiaperReminder => 'Rappel de couche';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'Me rappeler après $hours heure(s) si aucune couche n\'est enregistrée';
  }

  @override
  String get notifMedicationReminder => 'Rappel de médicament';

  @override
  String get notifEnabled => 'Notifications activées';

  @override
  String get notifDisabled => 'Notifications désactivées';

  @override
  String get notifPermissionRequired => 'Veuillez activer les notifications dans les paramètres de votre appareil.';

  @override
  String get exportTitle => 'Export et sauvegarde';

  @override
  String get exportJson => 'Exporter en JSON';

  @override
  String get exportJsonDesc => 'Données brutes pour la sauvegarde';

  @override
  String get exportPdf => 'Exporter en PDF';

  @override
  String get exportPdfDesc => 'Résumé lisible pour votre pédiatre';

  @override
  String get importJson => 'Importer depuis JSON';

  @override
  String get importJsonDesc => 'Restaurer depuis un fichier de sauvegarde';

  @override
  String get importDialogTitle => 'Importer les données ?';

  @override
  String get importDialogBody => 'Fusionner ajoute les entrées du fichier à vos données existantes. Tout remplacer supprime d\'abord vos données existantes.';

  @override
  String get importMerge => 'Fusionner';

  @override
  String get importReplaceAll => 'Tout remplacer';

  @override
  String get importSuccess => 'Importation terminée';

  @override
  String get importInvalidFile => 'Ce fichier ne ressemble pas à un export de Baby Tracker.';

  @override
  String get exportGoogleDrive => 'Sauvegarder sur Google Drive';

  @override
  String get exportGenerating => 'Génération du rapport…';

  @override
  String get milestoneTitle => 'Étapes clés';

  @override
  String get milestoneTabAchieved => 'Atteintes';

  @override
  String get milestoneTabUpcoming => 'À venir';

  @override
  String get milestoneCustomAdd => 'Étape personnalisée';

  @override
  String get milestoneDeleteTitle => 'Supprimer cette étape ?';

  @override
  String get milestoneEdit => 'Modifier l\'étape';

  @override
  String get milestoneAdd => 'Ajouter une étape';

  @override
  String get milestoneName => 'Nom de l\'étape *';

  @override
  String get milestoneDate => 'Date d\'accomplissement';

  @override
  String get milestoneNotes => 'Notes (facultatif)';

  @override
  String get milestoneNotesHint => 'Détails à retenir…';

  @override
  String get milestoneNoAchieved => 'Aucune étape enregistrée pour le moment.';

  @override
  String get milestoneAllDone => 'Toutes les étapes prédéfinies sont atteintes ! 🎉';

  @override
  String get milestoneFirstSmile => '😊 Premier sourire';

  @override
  String get milestoneFirstLaugh => '😂 Premier rire';

  @override
  String get milestoneFirstTooth => '🦷 Première dent';

  @override
  String get milestoneRolledBackTummy => '🔄 S\'est retourné du dos vers le ventre';

  @override
  String get milestoneRolledTummyBack => '🔄 S\'est retourné du ventre vers le dos';

  @override
  String get milestoneSatUnsupported => '🧸 S\'est assis sans soutien';

  @override
  String get milestoneStartedCrawling => '🐣 A commencé à ramper';

  @override
  String get milestonePulledToStand => '🏋️ S\'est levé en s\'accrochant';

  @override
  String get milestoneFirstSteps => '👣 Premiers pas';

  @override
  String get milestoneFirstWord => '💬 Premier mot';

  @override
  String get milestoneFirstSolidFood => '🥣 Première nourriture solide';

  @override
  String get milestoneFirstHaircut => '✂️ Première coupe de cheveux';

  @override
  String get milestoneSleptThroughNight => '🌙 A dormi toute la nuit';

  @override
  String get milestoneWavedBye => '👋 A fait au revoir de la main';

  @override
  String get milestoneClappedHands => '👏 A applaudi';

  @override
  String get milestoneFirstBirthday => '🎂 Premier anniversaire';

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
  String get settingsVolumeUnit => 'Milk volume unit';

  @override
  String get settingsLanguage => 'Langue';

  @override
  String get settingsNotifications => 'Notifications et rappels';

  @override
  String get settingsExport => 'Export et sauvegarde';

  @override
  String get settingsTips => 'Astuces';

  @override
  String get tipSwitchBabies => 'Changer de bébé';

  @override
  String get tipSwitchBabiesDesc => 'Appuyez sur l\'avatar du bébé en haut pour changer ou ajouter un profil bébé.';

  @override
  String get tipSwipeDelete => 'Balayez vers la gauche pour supprimer';

  @override
  String get tipSwipeDeleteDesc => 'Fonctionne sur les vignettes des jours et les entrées individuelles.';

  @override
  String get tipTapToEdit => 'Appuyez sur une entrée pour la modifier';

  @override
  String get tipMultipleFeeds => 'Enregistrer plusieurs repas';

  @override
  String get tipMultipleFeedsDesc => 'Dans le formulaire de repas, appuyez sur « Ajouter un autre repas » pour enregistrer allaitement + biberon en une fois.';

  @override
  String get tipExportData => 'Exporter les données';

  @override
  String get tipExportDataDesc => 'Utilisez l\'icône de partage sur l\'écran d\'accueil pour exporter toutes les données en JSON.';

  @override
  String get babiesTitle => 'Bébés';

  @override
  String get addBaby => 'Ajouter un bébé';

  @override
  String get editProfile => 'Modifier le profil';

  @override
  String get babyNameRequired => 'Nom *';

  @override
  String get babyDobOptional => 'Date de naissance (facultative)';

  @override
  String babyBornOn(String date) {
    return 'Né(e) le $date';
  }

  @override
  String get genderUnknown => 'Inconnu';

  @override
  String get genderBoy => 'Garçon';

  @override
  String get genderGirl => 'Fille';

  @override
  String get cannotDeleteOnlyProfile => 'Impossible de supprimer le seul profil bébé.';

  @override
  String deleteProfileTitle(String name) {
    return 'Supprimer $name ?';
  }

  @override
  String get deleteProfileContent => 'Toutes les données de ce bébé seront définitivement supprimées.';

  @override
  String get graphsTitle => 'Graphiques';

  @override
  String get graphsTabDaily => 'Quotidien';

  @override
  String get graphsTabGrowth => 'Croissance';

  @override
  String get graphsTabHealth => 'Santé';

  @override
  String get graphsTabWho => 'Courbes OMS';

  @override
  String get graphsTotalFeeds => 'Total repas';

  @override
  String get graphsAvgPerDay => 'Moyenne / jour';

  @override
  String get graphsTotalDiapers => 'Couches';

  @override
  String get graphsTotalMilk => 'Total lait';

  @override
  String get graphsTotalSleep => 'Total sommeil';

  @override
  String get graphsAvgSleep => 'Sommeil moyen / jour';

  @override
  String get graphsFeedsPerDay => 'Repas par jour';

  @override
  String get graphsDiapersPerDay => 'Couches par jour';

  @override
  String get graphsMilkPerDay => 'Lait par jour (ml)';

  @override
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

  @override
  String get graphsSleepPerDay => 'Sommeil par jour (heures)';

  @override
  String get graphsWeightOverTime => 'Poids dans le temps';

  @override
  String get graphsTempOverTime => 'Température dans le temps';

  @override
  String graphsMaxLabel(String value) {
    return 'Max : $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Min : $value';
  }

  @override
  String get graphsNoWeightData => 'Aucune donnée de poids pour le moment.\nEnregistrez un poids dans les entrées du jour.';

  @override
  String get graphsNoTempData => 'Aucune donnée de température pour le moment.\nEnregistrez une température dans un jour.';

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
      zero: 'nouveau-né',
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
      zero: 'moins d\'un mois',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years an(s) $months mois';
  }

  @override
  String medicationLabel(String name) {
    return 'Médicament : $name';
  }

  @override
  String get doctorVisitDefaultReason => 'Visite';

  @override
  String doctorVisitLabel(String reason) {
    return 'Visite chez le médecin — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 Note';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'Dr : $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'Aucun médecin enregistré';

  @override
  String get summaryPoosLabel => 'Caca';

  @override
  String get summaryPeesLabel => 'Pipi';

  @override
  String get summaryMilkLabel => 'Lait ml';

  @override
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

  @override
  String get summaryBreastLabel => 'Allait. min';

  @override
  String get summarySleepLabel => 'Sommeil';

  @override
  String get settingsOledMode => 'OLED (noir pur)';

  @override
  String get settingsOledModeDesc => 'Utiliser un fond noir pur pour économiser la batterie sur les écrans OLED';

  @override
  String get settingsImmersiveMode => 'Mode immersif';

  @override
  String get settingsImmersiveModeDesc => 'Masquer les barres d\'état et de navigation du système';

  @override
  String get navVaccinationsEntry => 'Vaccinations';

  @override
  String get whoChartsEntry => 'Courbes de croissance OMS';

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
}
