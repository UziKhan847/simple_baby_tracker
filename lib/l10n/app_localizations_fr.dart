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
  String get cannotUndo => 'Cette action est irréversible';

  @override
  String get noData => 'Aucune donnée';

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
  String get rashRecorded => 'Érythème enregistré';

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
  String get tipMultipleFeeds => 'Enregistrer plusieurs tétées';

  @override
  String get tipMultipleFeedsDesc => 'Dans le formulaire, appuyez sur « Ajouter une autre tétée » pour enregistrer allaitement et biberon en une fois';

  @override
  String get tipExportData => 'Exporter les données';

  @override
  String get tipExportDataDesc => 'Utilisez l\'icône de partage sur l\'accueil pour exporter toutes les données au format JSON';

  @override
  String get tipTapToEdit => 'Appuyez sur n\'importe quelle entrée pour la modifier';

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
  String get noDetails => 'Aucun détail';

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
