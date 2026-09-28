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
  String get navMilestones => 'Milestones';

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
  String get actionLog => 'Log';

  @override
  String get cannotUndo => 'This cannot be undone.';

  @override
  String get noData => 'No data';

  @override
  String get noNotes => 'No notes';

  @override
  String get noDetails => 'No details';

  @override
  String get optional => '(optional)';

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
  String get rashRecorded => 'Rash recorded';

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
  String get exportJsonDesc => 'Raw data for backup';

  @override
  String get exportPdf => 'Export as PDF';

  @override
  String get exportPdfDesc => 'Human-readable summary for your paediatrician';

  @override
  String get importJson => 'Import from JSON';

  @override
  String get importJsonDesc => 'Restore from a backup file';

  @override
  String get importDialogTitle => 'Import data?';

  @override
  String get importDialogBody => 'Merge adds the file\'s entries alongside your existing data. Replace all deletes your existing data first.';

  @override
  String get importMerge => 'Merge';

  @override
  String get importReplaceAll => 'Replace all';

  @override
  String get importSuccess => 'Import complete';

  @override
  String get importInvalidFile => 'This doesn\'t look like a Baby Tracker export file.';

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
  String get settingsVolumeUnit => 'Milk volume unit';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get settingsNotifications => 'Notifications & reminders';

  @override
  String get settingsExport => 'Export & backup';

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
  String get tipTapToEdit => 'Tap any entry to edit it';

  @override
  String get tipMultipleFeeds => 'Log multiple feeds';

  @override
  String get tipMultipleFeedsDesc => 'In the feeding form, tap \"Add another feed\" to log breastfeed + bottle in one go.';

  @override
  String get tipExportData => 'Export data';

  @override
  String get tipExportDataDesc => 'Use the share icon on Home to export all data as JSON.';

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
  String get graphsTabWho => 'WHO Charts';

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
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

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

  @override
  String medicationLabel(String name) {
    return 'Medication: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'Visit';

  @override
  String doctorVisitLabel(String reason) {
    return 'Doctor visit — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 Note';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'Dr: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'No doctor recorded';

  @override
  String get summaryPoosLabel => 'Poos';

  @override
  String get summaryPeesLabel => 'Pees';

  @override
  String get summaryMilkLabel => 'Milk ml';

  @override
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

  @override
  String get summaryBreastLabel => 'Breast m';

  @override
  String get summarySleepLabel => 'Sleep';

  @override
  String get settingsOledMode => 'OLED (true black)';

  @override
  String get settingsOledModeDesc => 'Use pure black backgrounds to save battery on OLED screens';

  @override
  String get settingsImmersiveMode => 'Immersive mode';

  @override
  String get settingsImmersiveModeDesc => 'Hide system status and navigation bars';

  @override
  String get navVaccinationsEntry => 'Vaccinations';

  @override
  String get whoChartsEntry => 'WHO growth charts';

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
