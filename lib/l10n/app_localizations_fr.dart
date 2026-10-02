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
  String get exportJson => 'Exporter une sauvegarde';

  @override
  String get exportJsonDesc => 'Toutes les données et photos dans un fichier .zip';

  @override
  String get exportPdf => 'Exporter en PDF';

  @override
  String get exportPdfDesc => 'Résumé lisible pour votre pédiatre';

  @override
  String get importJson => 'Restaurer une sauvegarde';

  @override
  String get importJsonDesc => 'Depuis une sauvegarde .zip (ou un ancien export .json)';

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
  String get milestoneAllDone => 'Toutes les étapes prédéfinies sont atteintes !';

  @override
  String get milestoneFirstSmile => 'Premier sourire';

  @override
  String get milestoneFirstLaugh => 'Premier rire';

  @override
  String get milestoneFirstTooth => 'Première dent';

  @override
  String get milestoneRolledBackTummy => 'S\'est retourné du dos vers le ventre';

  @override
  String get milestoneRolledTummyBack => 'S\'est retourné du ventre vers le dos';

  @override
  String get milestoneSatUnsupported => 'S\'est assis sans soutien';

  @override
  String get milestoneStartedCrawling => 'A commencé à ramper';

  @override
  String get milestonePulledToStand => 'S\'est levé en s\'accrochant';

  @override
  String get milestoneFirstSteps => 'Premiers pas';

  @override
  String get milestoneFirstWord => 'Premier mot';

  @override
  String get milestoneFirstSolidFood => 'Première nourriture solide';

  @override
  String get milestoneFirstHaircut => 'Première coupe de cheveux';

  @override
  String get milestoneSleptThroughNight => 'A dormi toute la nuit';

  @override
  String get milestoneWavedBye => 'A fait au revoir de la main';

  @override
  String get milestoneClappedHands => 'A applaudi';

  @override
  String get milestoneFirstBirthday => 'Premier anniversaire';

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
  String get settingsVolumeUnit => 'Unité de volume de lait';

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
  String get tipExportDataDesc => 'Utilisez l’icône de partage sur l’Accueil pour sauvegarder toutes les données et photos dans un seul fichier.';

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
  String get graphsMilkPerDayMl => 'Lait par jour (ml)';

  @override
  String get graphsMilkPerDayOz => 'Lait par jour (oz)';

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
  String get summaryMilkLabelMl => 'Lait ml';

  @override
  String get summaryMilkLabelOz => 'Lait oz';

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
  String get medicationEditTitle => 'Modifier le médicament';

  @override
  String get medicationLogTitle => 'Enregistrer un médicament';

  @override
  String get medicationYourCourses => 'Vos traitements';

  @override
  String get medicationManageCourses => 'Gérer les traitements';

  @override
  String get medicationNameRequired => 'Nom du médicament *';

  @override
  String get medicationDosageWarning => 'Respectez toujours la posologie selon le poids/l’âge. Ne dépassez pas la fréquence recommandée.';

  @override
  String get medicationNotesOptional => 'Notes (facultatif)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'il y a $count minutes',
      one: 'il y a 1 minute',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'il y a $count heures',
      one: 'il y a 1 heure',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'il y a $count jours',
      one: 'il y a 1 jour',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'Dernière prise $ago';
  }

  @override
  String get medicationNeverGiven => 'Pas encore donné';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count doses aujourd’hui',
      one: '1 dose aujourd’hui',
      zero: 'Aucune dose aujourd’hui',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'La prochaine dose n’est prévue que $hours h après la précédente';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'La limite de $max/jour pour ce traitement est déjà atteinte';
  }

  @override
  String get medicationEditCourse => 'Modifier le traitement';

  @override
  String get medicationNewCourse => 'Nouveau traitement';

  @override
  String get medicationReasonOptional => 'Motif (facultatif)';

  @override
  String get medicationIntervalHoursOptional => 'Répéter toutes les (heures, facultatif)';

  @override
  String get medicationMaxPerDayOptional => 'Doses max./jour (facultatif)';

  @override
  String get medicationRemindNextDose => 'Me rappeler quand la prochaine dose est due';

  @override
  String medicationEndCourseTitle(String name) {
    return 'Arrêter $name ?';
  }

  @override
  String get medicationEndCoursePrompt => 'Comment ça s’est passé ?';

  @override
  String get medicationDeleteCourseTitle => 'Supprimer ce traitement ?';

  @override
  String get medicationResultWorked => 'Efficace';

  @override
  String get medicationResultPartlyWorked => 'En partie efficace';

  @override
  String get medicationResultDidntWork => 'Inefficace';

  @override
  String get medicationResultSideEffects => 'Effets secondaires';

  @override
  String get medicationResultNone => 'Non évalué';

  @override
  String get medicationsTitle => 'Médicaments';

  @override
  String medicationActiveTab(int count) {
    return 'En cours ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'Terminés ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'Aucun traitement en cours.\nCommencez-en un avec le bouton +.';

  @override
  String get medicationNoPastCourses => 'Aucun traitement terminé pour l’instant.';

  @override
  String medicationTimesGiven(int count) {
    return 'Donné $count×';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'Dernière : $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'Prochaine $time';
  }

  @override
  String get medicationEndCourse => 'Arrêter le traitement';

  @override
  String feedLastSideHint(String side) {
    return 'La dernière fois : $side';
  }

  @override
  String get feedSideLeft => 'Gauche';

  @override
  String get feedSideRight => 'Droit';

  @override
  String get feedSideBoth => 'Les deux';

  @override
  String get feedSideLeftMinutes => 'Gauche (min)';

  @override
  String get feedSideRightMinutes => 'Droit (min)';

  @override
  String get timeAgoJustNow => 'À l’instant';

  @override
  String get timeUntilOverdue => 'En retard';

  @override
  String timeUntilMinutes(int count) {
    return 'dans $count min';
  }

  @override
  String timeUntilHours(int count) {
    return 'dans $count h';
  }

  @override
  String timeUntilDays(int count) {
    return 'dans $count j';
  }

  @override
  String get timerDiscardTitle => 'Abandonner ce minuteur ?';

  @override
  String get timerDiscard => 'Abandonner';

  @override
  String timerFeedingRunning(String side) {
    return 'Tétée · $side';
  }

  @override
  String get timerSleepRunning => 'Minuteur de sommeil en cours';

  @override
  String get timerSwitchSide => 'Changer de côté';

  @override
  String get timerStop => 'Arrêter';

  @override
  String get sinceLastFeed => 'Dernier repas';

  @override
  String get sinceLastDiaper => 'Dernière couche';

  @override
  String get sinceAwake => 'Éveillé';

  @override
  String get sinceAsleep => 'Endormi';

  @override
  String nextDoseDue(String name) {
    return '$name à donner';
  }

  @override
  String get weighConditionNaked => 'Nu';

  @override
  String get weighConditionDiaper => 'Couche seulement';

  @override
  String get weighConditionLightClothes => 'Vêtements légers';

  @override
  String get weighConditionDressed => 'Habillé';

  @override
  String get weighCondition => 'Pesé avec';

  @override
  String get growthMeasurementsOptional => 'Autres mesures (facultatif)';

  @override
  String get growthHeightCm => 'Taille (cm)';

  @override
  String get growthHeadCm => 'Périmètre crânien (cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'La dernière pesée était : $condition — la différence n’est peut-être pas que de la croissance';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm cm';
  }

  @override
  String growthHeadValue(String cm) {
    return 'Tête $cm cm';
  }

  @override
  String get growthHeightOverTime => 'Évolution de la taille';

  @override
  String get growthHeadOverTime => 'Évolution du périmètre crânien';

  @override
  String get graphsRecentWeighIns => 'Pesées récentes';

  @override
  String get solidsAmountFewSpoons => 'Quelques cuillères';

  @override
  String get solidsAmountHalf => 'Demi-portion';

  @override
  String get solidsAmountFull => 'Portion complète';

  @override
  String get solidsAmountTaste => 'Juste goûté';

  @override
  String get solidsReactionMild => 'Réaction légère';

  @override
  String get solidsReactionAllergic => 'Réaction allergique';

  @override
  String get solidsReactionNone => 'Aucune réaction';

  @override
  String get solidsEditTitle => 'Modifier un repas solide';

  @override
  String get solidsLogTitle => 'Enregistrer un repas solide';

  @override
  String get solidsFoodsLabel => 'Aliments';

  @override
  String get solidsAddFoodHint => 'Ajouter un aliment';

  @override
  String get solidsAmount => 'Quantité';

  @override
  String get solidsLiked => 'A-t-il aimé ?';

  @override
  String get solidsReaction => 'Réaction';

  @override
  String get solidsNotesOptional => 'Notes (facultatif)';

  @override
  String get foodsTitle => 'Aliments goûtés';

  @override
  String get foodsEmpty => 'Aucun aliment solide enregistré.';

  @override
  String get foodsAllergensNotYet => 'Allergènes courants pas encore introduits';

  @override
  String foodsTriedCount(int count) {
    return '$count aliments goûtés';
  }

  @override
  String foodsFirstTried(String date) {
    return 'Première fois : $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'Aliment solide';

  @override
  String get feedAmountOz => 'Quantité (oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'Me rappeler $interval après le dernier repas';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'Me rappeler $interval après la dernière couche';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'Toutes les $interval';
  }

  @override
  String get notifIntervalTitle => 'Intervalle de rappel';

  @override
  String get notifIntervalHours => 'Heures';

  @override
  String get notifIntervalMinutes => 'Minutes';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'Au moins $minutes minutes';
  }

  @override
  String get settingsFeeding => 'Alimentation';

  @override
  String get settingsTrackBottles => 'Suivre les biberons';

  @override
  String get settingsTrackBottlesDesc => 'Choisir le biberon utilisé, et la quantité préparée et bue';

  @override
  String get bottlesTitle => 'Mes biberons';

  @override
  String get bottlesEmpty => 'Aucun biberon.\nAjoutez ceux que vous utilisez pour pouvoir en choisir un en enregistrant un repas.';

  @override
  String get bottleAdd => 'Ajouter un biberon';

  @override
  String get bottleEdit => 'Modifier le biberon';

  @override
  String get bottleLabel => 'Étiquette / numéro (ex. #3)';

  @override
  String get bottleBrand => 'Marque / type (facultatif)';

  @override
  String get bottleCapacity => 'Contenance (facultatif)';

  @override
  String get bottleNipple => 'Taille / débit de la tétine (facultatif)';

  @override
  String get bottleMaterial => 'Matière';

  @override
  String get bottleRetired => 'Retiré';

  @override
  String get bottleRetire => 'Retirer';

  @override
  String get bottleUnretire => 'Réutiliser';

  @override
  String bottleDeleteTitle(String name) {
    return 'Supprimer $name ?';
  }

  @override
  String get bottleDeleteBody => 'Les repas passés gardent leurs quantités mais n’afficheront plus ce biberon. Pour le masquer de la liste tout en gardant l’historique, utilisez plutôt Retirer.';

  @override
  String get feedPrepared => 'Préparé';

  @override
  String get feedDrank => 'Bu';

  @override
  String feedLeftover(String amount) {
    return '$amount restant';
  }

  @override
  String get feedDrankMoreThanPrepared => 'Plus que ce qui a été préparé ?';

  @override
  String get feedWhichBottle => 'Quel biberon ?';

  @override
  String get feedNoBottlesYet => 'Aucun biberon — ajoutez-les dans Réglages → Mes biberons.';

  @override
  String get photoPrivacyTitle => 'Vos photos restent sur ce téléphone';

  @override
  String get photoPrivacyBody => 'Les photos sont enregistrées uniquement dans cette appli, sur cet appareil. L’appli n’a pas accès à Internet : rien n’est jamais envoyé ni partagé, sauf si vous exportez vous-même une sauvegarde.\n\nAndroid peut demander l’accès à l’appareil photo la première fois que vous prenez une photo.';

  @override
  String get photoPrivacyContinue => 'Continuer';

  @override
  String get photoTakePhoto => 'Prendre une photo';

  @override
  String get photoChooseFromGallery => 'Choisir dans la galerie';

  @override
  String get photoCaption => 'Légende';

  @override
  String get photoCompare => 'Première vs dernière';

  @override
  String get photoAddOtherDay => 'Ajouter pour un autre jour';

  @override
  String get photoEmpty => 'Aucune photo.\nPrenez une photo par jour et regardez votre bébé grandir.';

  @override
  String get photoToday => 'Photo du jour';

  @override
  String get photoAddToday => 'Ajouter la photo du jour';

  @override
  String get photoReplace => 'Remplacer';

  @override
  String get photoDeleteTitle => 'Supprimer cette photo ?';

  @override
  String get ageBeforeBirth => 'Avant la naissance';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours',
      one: '1 jour',
      zero: 'Jour de naissance',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months mois $days j';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years an(s) $months mois';
  }

  @override
  String get navMemories => 'Souvenirs';

  @override
  String get memoriesTabPhotos => 'Photos';

  @override
  String get milestoneNoAchievedHint => 'Touchez « À venir » pour enregistrer une étape prédéfinie,\nou utilisez le bouton ci-dessous pour une étape personnalisée.';

  @override
  String get skinTitle => 'Problèmes de peau';

  @override
  String get skinNew => 'Nouveau problème de peau';

  @override
  String get skinEdit => 'Modifier le problème de peau';

  @override
  String skinTabActive(int count) {
    return 'En cours ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'Guéris ($count)';
  }

  @override
  String get skinEmptyActive => 'Aucun problème de peau suivi.\nTouchez + pour en commencer un — vous pouvez ajouter une photo chaque jour pour montrer au médecin son évolution.';

  @override
  String get skinEmptyHealed => 'Rien de guéri pour l’instant.';

  @override
  String get skinUpdateDue => 'À mettre à jour aujourd’hui';

  @override
  String skinSince(String date) {
    return 'Depuis le $date';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours',
      one: '1 jour',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return 'Guéri le $date';
  }

  @override
  String skinReminderAt(String time) {
    return 'Rappel quotidien à $time';
  }

  @override
  String get skinSeverityTrend => 'Évolution de la gravité';

  @override
  String get skinNoUpdates => 'Aucune mise à jour. Ajoutez celle d’aujourd’hui pour commencer le suivi.';

  @override
  String get skinExportPdf => 'Exporter pour le médecin (PDF)';

  @override
  String get skinMarkHealed => 'Marquer comme guéri';

  @override
  String get skinReopen => 'Remettre en cours';

  @override
  String get skinUpdateToday => 'Ajouter la mise à jour du jour';

  @override
  String get skinEditToday => 'Modifier la mise à jour du jour';

  @override
  String skinDeleteTitle(String name) {
    return 'Supprimer $name et toutes ses mises à jour ?';
  }

  @override
  String get skinDeleteUpdateTitle => 'Supprimer cette mise à jour ?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'Traitement : $treatment';
  }

  @override
  String get skinName => 'Problème *';

  @override
  String get skinBodyArea => 'À quel endroit du corps ?';

  @override
  String get skinBegan => 'Début le';

  @override
  String get skinRemindDaily => 'Me rappeler de le mettre à jour chaque jour';

  @override
  String get skinReminderTime => 'Heure du rappel';

  @override
  String get skinUpdateTitle => 'Mise à jour de la peau';

  @override
  String get skinSeverity => 'À quoi ça ressemble ?';

  @override
  String get skinSeverity0 => '0 · Disparu';

  @override
  String get skinSeverity1 => '1 · Léger';

  @override
  String get skinSeverity2 => '2 · Modéré';

  @override
  String get skinSeverity3 => '3 · Important';

  @override
  String get skinSeverity4 => '4 · Très important';

  @override
  String get skinTreatment => 'Traitement (facultatif)';

  @override
  String get skinTreatmentHint => 'ex. crème hydratante, hydrocortisone 1 %';

  @override
  String get skinAddPhoto => 'Ajouter une photo';

  @override
  String get skinCardNone => 'Suivez jour après jour une éruption, un eczéma ou un autre problème de peau, avec des photos pour le médecin';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count doivent être mis à jour aujourd’hui',
      one: '1 doit être mis à jour aujourd’hui',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'Préparation de la sauvegarde…';

  @override
  String get backupFailed => 'Impossible de créer la sauvegarde.';

  @override
  String get backupSavedTo => 'Sauvegarde enregistrée dans :';

  @override
  String get backupShareSubject => 'Sauvegarde Baby Tracker';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Contient $count photos.',
      one: 'Contient 1 photo.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'Repas';

  @override
  String get widgetStopFeed => 'Fin du repas';

  @override
  String get widgetDiaper => 'Couche';

  @override
  String get widgetSleep => 'Sommeil';

  @override
  String get widgetWakeUp => 'Réveillé';

  @override
  String widgetFeedingFor(String duration) {
    return 'Tétée depuis $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'Mangé $ago';
  }

  @override
  String get widgetNoFeedsYet => 'Aucun repas';

  @override
  String widgetChangedAgo(String ago) {
    return 'Changé $ago';
  }

  @override
  String get widgetNoDiapersYet => 'Aucune couche';

  @override
  String widgetAsleepFor(String duration) {
    return 'Dort depuis $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'Réveillé $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Arrêtez d’abord le minuteur de sommeil';

  @override
  String get widgetStopFeedFirst => 'Arrêtez d’abord le minuteur de repas';

  @override
  String quickAddTitle(String name) {
    return 'Ajouter pour $name';
  }

  @override
  String get quickAddOpenApp => 'Ouvrir l’appli';

  @override
  String get foodPeanut => 'Arachide';

  @override
  String get foodEgg => 'Œuf';

  @override
  String get foodDairy => 'Produits laitiers';

  @override
  String get foodWheat => 'Blé';

  @override
  String get foodSoy => 'Soja';

  @override
  String get foodFish => 'Poisson';

  @override
  String get foodShellfish => 'Crustacés';

  @override
  String get foodTreeNuts => 'Fruits à coque';

  @override
  String get foodSesame => 'Sésame';

  @override
  String get foodBanana => 'Banane';

  @override
  String get foodAvocado => 'Avocat';

  @override
  String get foodSweetPotato => 'Patate douce';

  @override
  String get foodRiceCereal => 'Céréales de riz';

  @override
  String get foodOatmeal => 'Flocons d’avoine';

  @override
  String get foodCarrot => 'Carotte';

  @override
  String get foodApple => 'Pomme';

  @override
  String get foodPea => 'Petit pois';

  @override
  String get symptomRash => 'Éruption';

  @override
  String get symptomHives => 'Urticaire';

  @override
  String get symptomVomiting => 'Vomissements';

  @override
  String get symptomDiarrhea => 'Diarrhée';

  @override
  String get symptomSwelling => 'Gonflement';

  @override
  String get doseUnitDrops => 'gouttes';

  @override
  String get doseUnitTablets => 'comprimés';

  @override
  String get bottleMaterialPlastic => 'Plastique';

  @override
  String get bottleMaterialGlass => 'Verre';

  @override
  String get bottleMaterialSilicone => 'Silicone';

  @override
  String get bottleMaterialSteel => 'Inox';

  @override
  String get visitReasonRoutine => 'Visite de routine';

  @override
  String get visitReasonSick => 'Maladie';

  @override
  String get visitReasonVaccination => 'Vaccination';

  @override
  String get visitReasonSpecialist => 'Spécialiste';

  @override
  String get visitReasonFollowUp => 'Suivi';

  @override
  String get visitReasonOther => 'Autre';

  @override
  String get pooColourPale => 'Pâle';

  @override
  String get noteTagHappyDay => 'Journée joyeuse';

  @override
  String get noteTagSleptWell => 'A bien dormi';

  @override
  String get noteTagFussy => 'Grognon';

  @override
  String get noteTagNotWell => 'Pas en forme';

  @override
  String get noteTagFirstTime => 'Première fois !';

  @override
  String get noteTagTeething => 'Poussée dentaire';

  @override
  String get noteTagGrowthSpurt => 'Pic de croissance';

  @override
  String get noteTagMilestone => 'Étape clé';

  @override
  String get tummyTimeNotesHint => 'ex. a aimé, grognon...';

  @override
  String get skinSuggestEczema => 'Eczéma';

  @override
  String get skinSuggestDiaperRash => 'Érythème fessier';

  @override
  String get skinSuggestCradleCap => 'Croûtes de lait';

  @override
  String get skinSuggestBabyAcne => 'Acné du nourrisson';

  @override
  String get skinSuggestHeatRash => 'Bourbouille';

  @override
  String get skinSuggestDrySkin => 'Peau sèche';

  @override
  String get bodyFace => 'Visage';

  @override
  String get bodyScalp => 'Cuir chevelu';

  @override
  String get bodyNeck => 'Cou';

  @override
  String get bodyChest => 'Poitrine';

  @override
  String get bodyBack => 'Dos';

  @override
  String get bodyArms => 'Bras';

  @override
  String get bodyHands => 'Mains';

  @override
  String get bodyDiaperArea => 'Zone de la couche';

  @override
  String get bodyLegs => 'Jambes';

  @override
  String get bodyFeet => 'Pieds';

  @override
  String get medSuggestGripeWater => 'Gripe water';

  @override
  String get medSuggestVitaminD => 'Vitamine D';

  @override
  String get medSuggestIronDrops => 'Gouttes de fer';

  @override
  String get medSuggestAntibiotic => 'Antibiotique';

  @override
  String get medSuggestProbiotic => 'Probiotique';

  @override
  String vaccinePageTitle(String name) {
    return '$name — Vaccinations';
  }

  @override
  String get vaccineDeleteTitle => 'Supprimer ce vaccin ?';

  @override
  String get vaccineSiteHint => 'ex. cuisse gauche';

  @override
  String get vaccineNotesHint => 'ex. légère fièvre, grognon, aucune réaction...';

  @override
  String get vaccineNoGivenHint => 'Utilisez le bouton + ou touchez « Marquer comme fait » dans l’onglet Calendrier.';

  @override
  String get vaccineAgeBirth => 'Naissance';

  @override
  String vaccineAgeMonths(String range) {
    return '$range mois';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range mois (chaque année)';
  }

  @override
  String get whoTabHeight => 'Taille';

  @override
  String get whoTabHead => 'Tête';

  @override
  String get whoChartFor => 'Courbe pour :';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 mois)';
  }

  @override
  String get whoNoDataPoints => 'Aucune donnée. Enregistrez des mesures pour voir votre bébé sur la courbe.';

  @override
  String get whoLatestMeasurement => 'Dernière mesure';

  @override
  String whoApproxPercentile(String value) {
    return 'Percentile approximatif : $value';
  }

  @override
  String whoBetween(String low, String high) {
    return 'entre $low et $high';
  }

  @override
  String whoMonthsOld(String months) {
    return '$months mois';
  }

  @override
  String get whoDisclaimer => 'Ces courbes sont fournies à titre indicatif. Demandez toujours à votre pédiatre de les interpréter.';

  @override
  String get whoMedian => 'P50 (médiane)';

  @override
  String get notifChannelName => 'Rappels Baby Tracker';

  @override
  String get notifChannelDesc => 'Rappels pour les repas, couches, médicaments et contrôles de la peau';

  @override
  String get notifFeedTitle => 'C’est l’heure du repas !';

  @override
  String notifFeedBody(String interval) {
    return 'Aucun repas enregistré depuis $interval.';
  }

  @override
  String get notifDiaperTitle => 'Vérifiez la couche !';

  @override
  String notifDiaperBody(String interval) {
    return 'Aucun change enregistré depuis $interval.';
  }

  @override
  String notifDoseTitle(String name) {
    return 'Dose à donner : $name';
  }

  @override
  String notifDoseBody(String name) {
    return 'C’est l’heure de la prochaine dose de $name.';
  }

  @override
  String notifSkinTitle(String name) {
    return 'Contrôle de la peau : $name';
  }

  @override
  String get notifSkinBody => 'Ajoutez la mise à jour du jour (et une photo si vous voulez).';

  @override
  String get timerFeedingNotif => 'Minuteur de repas en cours';

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
  String get settingsRtlActive => 'Mise en page de droite à gauche active';

  @override
  String get measurementHeightIn => 'Longueur / taille (in)';

  @override
  String get measurementHeadIn => 'Périmètre crânien (in)';

  @override
  String get growthHeightIn => 'Taille (in)';

  @override
  String get growthHeadIn => 'Périmètre crânien (in)';

  @override
  String growthHeightValueIn(String value) {
    return '$value in';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'Tête $value in';
  }

  @override
  String get settingsLengthUnitNote => 'Les longueurs suivent l’unité de poids (cm avec kg, pouces avec lbs)';

  @override
  String get formulaStoreBrand => 'Marque distributeur';

  @override
  String get pooShade1 => 'Blanc crayeux';

  @override
  String get pooShade2 => 'Gris clair';

  @override
  String get pooShade3 => 'Gris argile';

  @override
  String get pooShade4 => 'Crème';

  @override
  String get pooShade5 => 'Beige foncé';

  @override
  String get pooShade6 => 'Jaune-vert pâle';

  @override
  String get pooShade7 => 'Jaune moutarde';

  @override
  String get pooShade8 => 'Marron';

  @override
  String get pooShade9 => 'Vert';

  @override
  String get vaccineScheduleNote => 'D’après le calendrier des CDC américains. Le calendrier de votre pays peut différer — suivez l’avis de votre médecin.';

  @override
  String get settingsAbout => 'À propos';

  @override
  String get aboutTitle => 'À propos et licences';

  @override
  String aboutVersion(String version) {
    return 'Version $version';
  }

  @override
  String get aboutLicenseLine => 'Logiciel libre publié sous la licence publique générale GNU v3.0 ou ultérieure. Vous pouvez l’utiliser, l’étudier, le partager et le modifier.';

  @override
  String get aboutSourceCode => 'Code source';

  @override
  String get aboutDisclaimerTitle => 'Pas un avis médical';

  @override
  String get aboutDisclaimerBody => 'Simple Baby Tracker est un journal pour vos propres notes. Ce n’est pas un dispositif médical : il ne diagnostique, ne traite ni ne surveille aucune affection. Les courbes de croissance, les plages de température, les rappels de médicaments et les remarques sur la couleur des selles sont des informations générales, qui peuvent être incomplètes ou erronées. Suivez toujours l’avis de votre médecin ou pharmacien, et contactez-les, ou les urgences, si vous êtes inquiet pour votre bébé.';

  @override
  String get aboutPrivacyTitle => 'Vos données restent sur ce téléphone';

  @override
  String get aboutPrivacyBody => 'L’appli n’a pas accès à Internet, ni compte, ni publicité, ni statistiques. Les entrées et photos sont stockées uniquement sur cet appareil. Rien n’en sort, sauf si vous exportez une sauvegarde et la partagez vous-même.';

  @override
  String get aboutCreditsTitle => 'Crédits';

  @override
  String get aboutCreditsBody => 'Icônes : créées avec Claude Design.\nPolices : Inter et Quicksand (SIL Open Font License 1.1).\nCourbes de croissance : normes de croissance de l’enfant de l’OMS (who.int).\nCalendrier vaccinal : d’après le calendrier des CDC américains.\nRéalisé avec Flutter.';

  @override
  String get aboutLicencesButton => 'Licences open source';
}
