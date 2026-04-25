// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'Penjejak Bayi';

  @override
  String get navHome => 'Utama';

  @override
  String get navGraphs => 'Graf';

  @override
  String get navMilestones => 'Milestones';

  @override
  String get navSettings => 'Tetapan';

  @override
  String get actionCancel => 'Batal';

  @override
  String get actionSave => 'Simpan';

  @override
  String get actionUpdate => 'Kemas Kini';

  @override
  String get actionDelete => 'Padam';

  @override
  String get actionAdd => 'Tambah';

  @override
  String get actionEdit => 'Sunting';

  @override
  String get actionClose => 'Tutup';

  @override
  String get actionExport => 'Eksport Data';

  @override
  String get actionAddDay => 'Tambah Hari';

  @override
  String get actionLog => 'Log';

  @override
  String get cannotUndo => 'Tindakan ini tidak boleh dibatalkan';

  @override
  String get noData => 'Tiada data';

  @override
  String get noNotes => 'No notes';

  @override
  String get noDetails => 'Tiada butiran';

  @override
  String get optional => '(optional)';

  @override
  String get homeTitle => 'Penjejak';

  @override
  String get feedsToday => 'Penyusuan Hari Ini';

  @override
  String get diapersToday => 'Lampin Hari Ini';

  @override
  String get sleepToday => 'Tidur Hari Ini';

  @override
  String todayLabel(String date) {
    return 'Hari Ini — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count peristiwa',
      one: '1 peristiwa',
      zero: 'Tiada peristiwa',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Padam hari ini?';

  @override
  String deleteDayContent(String date) {
    return 'Padam $date dan semua entrinya? Tindakan ini tidak boleh dibatalkan';
  }

  @override
  String get rashRecorded => 'Ruam direkodkan';

  @override
  String get noEntriesYet => 'Tiada entri lagi';

  @override
  String get addEntry => 'Tambah Entri';

  @override
  String get deleteEntryTitle => 'Padam entri ini?';

  @override
  String get entryTypeDiaper => 'Tukar Lampin';

  @override
  String get entryTypeFeeding => 'Penyusuan';

  @override
  String get entryTypeSleep => 'Tidur';

  @override
  String get entryTypeTemperature => 'Suhu Badan';

  @override
  String get entryTypeWeight => 'Berat Badan';

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
  String get diaperPeePoo => 'Lampin — kencing + najis';

  @override
  String get diaperPee => 'Lampin — kencing sahaja';

  @override
  String get diaperPoo => 'Lampin — najis sahaja';

  @override
  String get diaperChange => 'Tukar Lampin';

  @override
  String get editDiaper => 'Sunting Lampin';

  @override
  String get diaperContents => 'Kandungan';

  @override
  String get diaperNone => 'Tiada';

  @override
  String get diaperPeeLabel => 'Kencing';

  @override
  String get diaperPooLabel => 'Najis';

  @override
  String get diaperBoth => 'Kedua-duanya';

  @override
  String get diaperConsistency => 'Tekstur';

  @override
  String get consistencyHard => 'Keras / Berketul';

  @override
  String get consistencyHardHint => 'Sembelit';

  @override
  String get consistencyFirm => 'Pejal';

  @override
  String get consistencyFirmHint => 'Agak pejal';

  @override
  String get consistencyNormal => 'Normal';

  @override
  String get consistencyNormalHint => 'Sihat';

  @override
  String get consistencySoft => 'Lembut';

  @override
  String get consistencySoftHint => 'Agak lembut';

  @override
  String get consistencyLoose => 'Berpasta / Separuh cair';

  @override
  String get consistencyLooseHint => 'Perlu perhatian';

  @override
  String get consistencyWatery => 'Berair';

  @override
  String get consistencyWateryHint => 'Cirit-birit';

  @override
  String get warnConstipation => 'Tanda sembelit — perhatikan dengan rapi';

  @override
  String get warnDiarrhea => 'Tanda cirit-birit — perhatikan dengan rapi';

  @override
  String get pooColourLabel => 'Warna (sentuh untuk pilih)';

  @override
  String get pooColourAbnormal => '⚠️ Tidak normal (pucat)';

  @override
  String get pooColourNormal => '✅ Normal';

  @override
  String pooColourSelected(String label) {
    return 'Dipilih: $label';
  }

  @override
  String get diaperSize => 'Saiz Lampin';

  @override
  String get diaperBrand => 'Jenama';

  @override
  String get diaperBrandCustomLabel => 'Nama jenama';

  @override
  String get rashPresent => 'Ruam lampin ada';

  @override
  String get rashPresentHint => 'Kemerahan, kerengsaan atau ruam lampin';

  @override
  String get rashCreamUsed => 'Krim digunakan';

  @override
  String get rashCreamCustomLabel => 'Nama krim / salap';

  @override
  String get rashFollowUpTitle => '⚠️ Tindakan susulan ruam';

  @override
  String get rashFollowUpQuestion => 'Lampin lepas mencatat ruam. Adakah bertambah baik?';

  @override
  String get rashImproved => 'Ya, bertambah baik';

  @override
  String get rashNoChange => 'Tiada perubahan / semakin teruk';

  @override
  String get addFeeding => 'Tambah Penyusuan';

  @override
  String get editFeeding => 'Sunting Penyusuan';

  @override
  String feedLabel(int number) {
    return 'Penyusuan $number';
  }

  @override
  String get feedModeBottle => 'Botol';

  @override
  String get feedModeSuckle => 'Penyusuan terus';

  @override
  String get feedAmountMl => 'Jumlah (ml)';

  @override
  String get feedType => 'Jenis';

  @override
  String get feedBreastMilk => 'Susu ibu';

  @override
  String get feedFormula => 'Susu formula';

  @override
  String get feedFormulaBrand => 'Jenama formula';

  @override
  String get feedFormulaBrandCustom => 'Nama jenama';

  @override
  String get feedDurationMinutes => 'Tempoh (minit)';

  @override
  String get addAnotherFeed => 'Tambah penyusuan lain';

  @override
  String get bottleBreastMilk => 'Botol — susu ibu';

  @override
  String get bottleFormula => 'Botol — susu formula';

  @override
  String get breastfeedingSuckle => 'Penyusuan ibu (terus)';

  @override
  String get logSleep => 'Rekod Tidur';

  @override
  String get editSleep => 'Sunting Tidur';

  @override
  String get sleepStart => 'Mula tidur';

  @override
  String get sleepWakeUp => 'Bangun';

  @override
  String sleepDuration(String duration) {
    return 'Tempoh: $duration';
  }

  @override
  String get sleepInvalidTimes => 'Masa tidak sah';

  @override
  String get sleepWrapsNextDay => '(berterusan ke hari berikutnya)';

  @override
  String get sleepNotes => 'Nota (pilihan)';

  @override
  String get sleepNotesHint => 'Contoh: gelisah, terjaga seketika...';

  @override
  String get sleepNoNotes => 'Tiada nota';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}j ${m}m';
  }

  @override
  String get logTemperature => 'Rekod Suhu';

  @override
  String get editTemperature => 'Sunting Suhu';

  @override
  String get temperatureLabel => 'Suhu Badan';

  @override
  String get tempSeverityLow => 'Suhu rendah — perhatian';

  @override
  String get tempSeverityNormal => 'Suhu normal';

  @override
  String get tempSeverityElevated => 'Agak tinggi — perhatikan dengan rapi';

  @override
  String get tempSeverityFever => 'Demam — rujuk doktor';

  @override
  String get tempReference => 'Rujukan suhu';

  @override
  String get tempRefLow => '< 36.0 °C / 96.8 °F';

  @override
  String get tempRefNormal => '36.0 – 37.4 °C / 96.8 – 99.3 °F';

  @override
  String get tempRefElevated => '37.5 – 38.4 °C / 99.5 – 101.1 °F';

  @override
  String get tempRefFever => '≥ 38.5 °C / 101.3 °F';

  @override
  String get tempFeverWarning => '⚠️ Bayi bawah 3 bulan yang demam, sentiasa rujuk pakar pediatrik';

  @override
  String get tempLow => 'Rendah';

  @override
  String get tempNormal => 'Normal';

  @override
  String get tempElevated => 'Tinggi';

  @override
  String get tempFever => 'Demam';

  @override
  String get tempLatest => 'Suhu terkini';

  @override
  String get tempSummary => 'Ringkasan suhu';

  @override
  String get tempFeverThreshold => 'Ambang demam';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari',
      one: '1 hari',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'Rekod Berat';

  @override
  String get editWeight => 'Sunting Berat';

  @override
  String get weightLabel => 'Berat Badan';

  @override
  String weightGain(String amount) {
    return '+$amount kenaikan';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount penurunan';
  }

  @override
  String weightPrevious(String weight) {
    return 'Sebelumnya: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'Rekod terakhir: $weight ($date)';
  }

  @override
  String get weightLatest => 'Berat terkini';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount dalam tempoh ini';
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
  String get settingsTitle => 'Tetapan';

  @override
  String get settingsAppearance => 'Penampilan';

  @override
  String get settingsDarkMode => 'Mod gelap';

  @override
  String get settingsDarkActive => 'Tema gelap aktif';

  @override
  String get settingsLightActive => 'Tema terang aktif';

  @override
  String get settingsUnits => 'Unit';

  @override
  String get settingsWeightUnit => 'Unit berat';

  @override
  String get settingsTempUnit => 'Unit suhu';

  @override
  String get settingsLanguage => 'Bahasa';

  @override
  String get settingsNotifications => 'Notifications & reminders';

  @override
  String get settingsExport => 'Export & backup';

  @override
  String get settingsTips => 'Tip';

  @override
  String get tipSwitchBabies => 'Tukar bayi';

  @override
  String get tipSwitchBabiesDesc => 'Sentuh avatar bayi di bahagian atas untuk menukar atau menambah profil';

  @override
  String get tipSwipeDelete => 'Leret ke kiri untuk padam';

  @override
  String get tipSwipeDeleteDesc => 'Berfungsi pada kad hari dan entri individu';

  @override
  String get tipTapToEdit => 'Sentuh mana‑mana entri untuk menyuntingnya';

  @override
  String get tipMultipleFeeds => 'Rekod pelbagai penyusuan';

  @override
  String get tipMultipleFeedsDesc => 'Dalam borang penyusuan, sentuh \"Tambah penyusuan lain\" untuk merekod penyusuan terus dan botol sekali gus';

  @override
  String get tipExportData => 'Eksport data';

  @override
  String get tipExportDataDesc => 'Guna ikon kongsi di Halaman Utama untuk eksport semua data ke JSON';

  @override
  String get babiesTitle => 'Bayi';

  @override
  String get addBaby => 'Tambah Bayi';

  @override
  String get editProfile => 'Sunting Profil';

  @override
  String get babyNameRequired => 'Nama *';

  @override
  String get babyDobOptional => 'Tarikh lahir (pilihan)';

  @override
  String babyBornOn(String date) {
    return 'Dilahirkan $date';
  }

  @override
  String get genderUnknown => 'Tidak dinyatakan';

  @override
  String get genderBoy => 'Lelaki';

  @override
  String get genderGirl => 'Perempuan';

  @override
  String get cannotDeleteOnlyProfile => 'Profil bayi tunggal tidak boleh dipadam';

  @override
  String deleteProfileTitle(String name) {
    return 'Padam $name?';
  }

  @override
  String get deleteProfileContent => 'Semua data bayi ini akan dipadam secara kekal';

  @override
  String get graphsTitle => 'Graf';

  @override
  String get graphsTabDaily => 'Harian';

  @override
  String get graphsTabGrowth => 'Pertumbuhan';

  @override
  String get graphsTabHealth => 'Kesihatan';

  @override
  String get graphsTabWho => 'WHO Charts';

  @override
  String get graphsTotalFeeds => 'Jumlah penyusuan';

  @override
  String get graphsAvgPerDay => 'Purata/hari';

  @override
  String get graphsTotalDiapers => 'Lampin';

  @override
  String get graphsTotalMilk => 'Jumlah susu';

  @override
  String get graphsTotalSleep => 'Jumlah tidur';

  @override
  String get graphsAvgSleep => 'Purata tidur/hari';

  @override
  String get graphsFeedsPerDay => 'Penyusuan sehari';

  @override
  String get graphsDiapersPerDay => 'Lampin sehari';

  @override
  String get graphsMilkPerDay => 'Susu sehari (ml)';

  @override
  String get graphsSleepPerDay => 'Tidur sehari (jam)';

  @override
  String get graphsWeightOverTime => 'Perubahan berat mengikut masa';

  @override
  String get graphsTempOverTime => 'Perubahan suhu mengikut masa';

  @override
  String graphsMaxLabel(String value) {
    return 'Maks: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Min: $value';
  }

  @override
  String get graphsNoWeightData => 'Tiada entri berat lagi\nRekod berat dari entri hari';

  @override
  String get graphsNoTempData => 'Tiada entri suhu lagi\nRekod suhu dari sesuatu hari';

  @override
  String get timeLabel => 'Masa';

  @override
  String get noColourRecorded => 'Tiada warna direkod';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari',
      one: '1 hari',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bulan',
      one: '1 bulan',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years tahun $months bulan';
  }
}
