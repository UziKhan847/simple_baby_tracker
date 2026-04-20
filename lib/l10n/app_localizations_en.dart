// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Baby Tracker';

  @override
  String get navHome => 'Home';

  @override
  String get navGraphs => 'Graphs';

  @override
  String get navSettings => 'Settings';

  @override
  String get actionCancel => 'Cancel';

  @override
  String get actionSave => 'Save';

  @override
  String get actionUpdate => 'Update';

  @override
  String get actionDelete => 'Delete';

  @override
  String get actionAdd => 'Add';

  @override
  String get actionEdit => 'Edit';

  @override
  String get actionClose => 'Close';

  @override
  String get actionExport => 'Export data';

  @override
  String get actionAddDay => 'Add day';

  @override
  String get cannotUndo => 'This cannot be undone.';

  @override
  String get noData => 'No data';

  @override
  String get homeTitle => 'Tracker';

  @override
  String get feedsToday => 'Feeds today';

  @override
  String get diapersToday => 'Diapers today';

  @override
  String get sleepToday => 'Sleep today';

  @override
  String todayLabel(String date) {
    return 'Today — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count events',
      one: '1 event',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Delete day?';

  @override
  String deleteDayContent(String date) {
    return 'Remove $date and all its entries? This cannot be undone.';
  }

  @override
  String get noEntriesYet => 'No entries yet';

  @override
  String get addEntry => 'Add entry';

  @override
  String get deleteEntryTitle => 'Delete entry?';

  @override
  String get entryTypeDiaper => 'Diaper change';

  @override
  String get entryTypeFeeding => 'Feeding';

  @override
  String get entryTypeSleep => 'Sleep';

  @override
  String get entryTypeTemperature => 'Temperature';

  @override
  String get entryTypeWeight => 'Weight';

  @override
  String get diaperPeePoo => 'Diaper — pee + poo';

  @override
  String get diaperPee => 'Diaper — pee';

  @override
  String get diaperPoo => 'Diaper — poo';

  @override
  String get diaperChange => 'Diaper change';

  @override
  String get editDiaper => 'Edit diaper';

  @override
  String get diaperContents => 'Contents';

  @override
  String get diaperNone => 'None';

  @override
  String get diaperPeeLabel => 'Pee';

  @override
  String get diaperPooLabel => 'Poo';

  @override
  String get diaperBoth => 'Both';

  @override
  String get diaperConsistency => 'Consistency';

  @override
  String get consistencyHard => 'Hard / Pellets';

  @override
  String get consistencyHardHint => 'Constipation';

  @override
  String get consistencyFirm => 'Firm';

  @override
  String get consistencyFirmHint => 'Slightly firm';

  @override
  String get consistencyNormal => 'Normal';

  @override
  String get consistencyNormalHint => 'Healthy';

  @override
  String get consistencySoft => 'Soft';

  @override
  String get consistencySoftHint => 'Slightly soft';

  @override
  String get consistencyLoose => 'Loose / Mushy';

  @override
  String get consistencyLooseHint => 'Monitor';

  @override
  String get consistencyWatery => 'Watery';

  @override
  String get consistencyWateryHint => 'Diarrhea';

  @override
  String get warnConstipation => 'Signs of constipation — monitor closely';

  @override
  String get warnDiarrhea => 'Signs of diarrhea — monitor closely';

  @override
  String get pooColourLabel => 'Colour (tap to select)';

  @override
  String get pooColourAbnormal => '⚠️ Abnormal (pale)';

  @override
  String get pooColourNormal => '✅ Normal';

  @override
  String pooColourSelected(String label) {
    return 'Selected: $label';
  }

  @override
  String get diaperSize => 'Diaper size';

  @override
  String get diaperBrand => 'Brand';

  @override
  String get diaperBrandCustomLabel => 'Brand name';

  @override
  String get rashPresent => 'Rash present';

  @override
  String get rashPresentHint => 'Redness, irritation or nappy rash';

  @override
  String get rashCreamUsed => 'Rash cream used';

  @override
  String get rashCreamCustomLabel => 'Cream / ointment name';

  @override
  String get rashFollowUpTitle => '⚠️ Rash follow-up';

  @override
  String get rashFollowUpQuestion => 'The last diaper had a rash recorded. Did it improve?';

  @override
  String get rashImproved => 'Yes, improved';

  @override
  String get rashNoChange => 'No change / worse';

  @override
  String get rashRecorded => 'Rash recorded';

  @override
  String get addFeeding => 'Add feeding';

  @override
  String get editFeeding => 'Edit feeding';

  @override
  String feedLabel(int number) {
    return 'Feed $number';
  }

  @override
  String get feedModeBottle => 'Bottle';

  @override
  String get feedModeSuckle => 'Suckle';

  @override
  String get feedAmountMl => 'Amount (ml)';

  @override
  String get feedType => 'Type';

  @override
  String get feedBreastMilk => 'Breast milk';

  @override
  String get feedFormula => 'Formula';

  @override
  String get feedFormulaBrand => 'Formula brand';

  @override
  String get feedFormulaBrandCustom => 'Formula brand name';

  @override
  String get feedDurationMinutes => 'Duration (minutes)';

  @override
  String get addAnotherFeed => 'Add another feed';

  @override
  String get bottleBreastMilk => 'Bottle — breast milk';

  @override
  String get bottleFormula => 'Bottle — formula';

  @override
  String get breastfeedingSuckle => 'Breastfeeding (suckle)';

  @override
  String get logSleep => 'Log sleep';

  @override
  String get editSleep => 'Edit sleep';

  @override
  String get sleepStart => 'Sleep start';

  @override
  String get sleepWakeUp => 'Wake up';

  @override
  String sleepDuration(String duration) {
    return 'Duration: $duration';
  }

  @override
  String get sleepInvalidTimes => 'Invalid times';

  @override
  String get sleepWrapsNextDay => '(end wraps to next day)';

  @override
  String get sleepNotes => 'Notes (optional)';

  @override
  String get sleepNotesHint => 'e.g. restless, woke briefly...';

  @override
  String get sleepNoNotes => 'No notes';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}h ${m}m';
  }

  @override
  String get logTemperature => 'Log temperature';

  @override
  String get editTemperature => 'Edit temperature';

  @override
  String get temperatureLabel => 'Temperature';

  @override
  String get tempSeverityLow => 'Low temperature — monitor';

  @override
  String get tempSeverityNormal => 'Normal temperature';

  @override
  String get tempSeverityElevated => 'Slightly elevated — monitor closely';

  @override
  String get tempSeverityFever => 'Fever — consult your doctor';

  @override
  String get tempReference => 'Temperature reference';

  @override
  String get tempRefLow => '< 36.0 °C / 96.8 °F';

  @override
  String get tempRefNormal => '36.0 – 37.4 °C / 96.8 – 99.3 °F';

  @override
  String get tempRefElevated => '37.5 – 38.4 °C / 99.5 – 101.1 °F';

  @override
  String get tempRefFever => '≥ 38.5 °C / 101.3 °F';

  @override
  String get tempFeverWarning => '⚠️ Always consult your paediatrician for fever in infants under 3 months.';

  @override
  String get tempLow => 'Low';

  @override
  String get tempNormal => 'Normal';

  @override
  String get tempElevated => 'Elevated';

  @override
  String get tempFever => 'Fever';

  @override
  String get tempLatest => 'Latest temperature';

  @override
  String get tempSummary => 'Temperature summary';

  @override
  String get tempFeverThreshold => 'Fever threshold';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'Log weight';

  @override
  String get editWeight => 'Edit weight';

  @override
  String get weightLabel => 'Weight';

  @override
  String weightGain(String amount) {
    return '+$amount gain';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount loss';
  }

  @override
  String weightPrevious(String weight) {
    return 'Previous: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'Last recorded: $weight on $date';
  }

  @override
  String get weightLatest => 'Latest weight';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount over period';
  }

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsAppearance => 'Appearance';

  @override
  String get settingsDarkMode => 'Dark mode';

  @override
  String get settingsDarkActive => 'Dark theme active';

  @override
  String get settingsLightActive => 'Light theme active';

  @override
  String get settingsUnits => 'Units';

  @override
  String get settingsWeightUnit => 'Weight unit';

  @override
  String get settingsTempUnit => 'Temperature unit';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get settingsTips => 'Tips';

  @override
  String get tipSwitchBabies => 'Switch babies';

  @override
  String get tipSwitchBabiesDesc => 'Tap the baby avatar at the top to switch or add a baby profile.';

  @override
  String get tipSwipeDelete => 'Swipe left to delete';

  @override
  String get tipSwipeDeleteDesc => 'Works on day tiles and individual entries.';

  @override
  String get tipMultipleFeeds => 'Log multiple feeds';

  @override
  String get tipMultipleFeedsDesc => 'In the feeding form, tap \"Add another feed\" to log breastfeed + bottle in one go.';

  @override
  String get tipExportData => 'Export data';

  @override
  String get tipExportDataDesc => 'Use the share icon on Home to export all data as JSON.';

  @override
  String get tipTapToEdit => 'Tap any entry to edit it';

  @override
  String get babiesTitle => 'Babies';

  @override
  String get addBaby => 'Add baby';

  @override
  String get editProfile => 'Edit profile';

  @override
  String get babyNameRequired => 'Name *';

  @override
  String get babyDobOptional => 'Date of birth (optional)';

  @override
  String babyBornOn(String date) {
    return 'Born $date';
  }

  @override
  String get genderUnknown => 'Unknown';

  @override
  String get genderBoy => 'Boy';

  @override
  String get genderGirl => 'Girl';

  @override
  String get cannotDeleteOnlyProfile => 'Can\'t delete the only baby profile.';

  @override
  String deleteProfileTitle(String name) {
    return 'Delete $name?';
  }

  @override
  String get deleteProfileContent => 'All data for this baby will be permanently deleted.';

  @override
  String get graphsTitle => 'Graphs';

  @override
  String get graphsTabDaily => 'Daily';

  @override
  String get graphsTabGrowth => 'Growth';

  @override
  String get graphsTabHealth => 'Health';

  @override
  String get graphsTotalFeeds => 'Total feeds';

  @override
  String get graphsAvgPerDay => 'Avg/day';

  @override
  String get graphsTotalDiapers => 'Diapers';

  @override
  String get graphsTotalMilk => 'Total milk';

  @override
  String get graphsTotalSleep => 'Total sleep';

  @override
  String get graphsAvgSleep => 'Avg sleep/day';

  @override
  String get graphsFeedsPerDay => 'Feeds per day';

  @override
  String get graphsDiapersPerDay => 'Diapers per day';

  @override
  String get graphsMilkPerDay => 'Milk per day (ml)';

  @override
  String get graphsSleepPerDay => 'Sleep per day (hours)';

  @override
  String get graphsWeightOverTime => 'Weight over time';

  @override
  String get graphsTempOverTime => 'Temperature over time';

  @override
  String graphsMaxLabel(String value) {
    return 'Max: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Min: $value';
  }

  @override
  String get graphsNoWeightData => 'No weight entries yet.\nLog weight from a day\'s entries.';

  @override
  String get graphsNoTempData => 'No temperature entries yet.\nLog temperature from a day.';

  @override
  String get timeLabel => 'Time';

  @override
  String get noColourRecorded => 'No colour recorded';

  @override
  String get noDetails => 'No details';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days old',
      one: '1 day old',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count months old',
      one: '1 month old',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '${years}yr ${months}mo old';
  }
}
