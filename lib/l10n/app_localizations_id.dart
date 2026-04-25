// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Pelacak Bayi';

  @override
  String get navHome => 'Beranda';

  @override
  String get navGraphs => 'Grafik';

  @override
  String get navMilestones => 'Milestones';

  @override
  String get navSettings => 'Pengaturan';

  @override
  String get actionCancel => 'Batal';

  @override
  String get actionSave => 'Simpan';

  @override
  String get actionUpdate => 'Perbarui';

  @override
  String get actionDelete => 'Hapus';

  @override
  String get actionAdd => 'Tambah';

  @override
  String get actionEdit => 'Edit';

  @override
  String get actionClose => 'Tutup';

  @override
  String get actionExport => 'Ekspor Data';

  @override
  String get actionAddDay => 'Tambah Hari';

  @override
  String get actionLog => 'Log';

  @override
  String get cannotUndo => 'Tindakan ini tidak dapat dibatalkan';

  @override
  String get noData => 'Tidak ada data';

  @override
  String get noNotes => 'No notes';

  @override
  String get noDetails => 'Tidak ada detail';

  @override
  String get optional => '(optional)';

  @override
  String get homeTitle => 'Pelacak';

  @override
  String get feedsToday => 'Menyusui Hari Ini';

  @override
  String get diapersToday => 'Popok Hari Ini';

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
      other: '$count kejadian',
      one: '1 kejadian',
      zero: 'Tidak ada kejadian',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Hapus hari ini?';

  @override
  String deleteDayContent(String date) {
    return 'Hapus $date dan semua entrinya? Tindakan ini tidak dapat dibatalkan';
  }

  @override
  String get rashRecorded => 'Ruam tercatat';

  @override
  String get noEntriesYet => 'Belum ada entri';

  @override
  String get addEntry => 'Tambah Entri';

  @override
  String get deleteEntryTitle => 'Hapus entri ini?';

  @override
  String get entryTypeDiaper => 'Ganti Popok';

  @override
  String get entryTypeFeeding => 'Menyusui';

  @override
  String get entryTypeSleep => 'Tidur';

  @override
  String get entryTypeTemperature => 'Suhu Tubuh';

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
  String get diaperPeePoo => 'Popok — pipis + pup';

  @override
  String get diaperPee => 'Popok — pipis saja';

  @override
  String get diaperPoo => 'Popok — pup saja';

  @override
  String get diaperChange => 'Ganti Popok';

  @override
  String get editDiaper => 'Edit Popok';

  @override
  String get diaperContents => 'Isi';

  @override
  String get diaperNone => 'Tidak ada';

  @override
  String get diaperPeeLabel => 'Pipis';

  @override
  String get diaperPooLabel => 'Pup';

  @override
  String get diaperBoth => 'Keduanya';

  @override
  String get diaperConsistency => 'Konsistensi';

  @override
  String get consistencyHard => 'Keras / Bergumpal';

  @override
  String get consistencyHardHint => 'Sembelit';

  @override
  String get consistencyFirm => 'Padat';

  @override
  String get consistencyFirmHint => 'Agak padat';

  @override
  String get consistencyNormal => 'Normal';

  @override
  String get consistencyNormalHint => 'Sehat';

  @override
  String get consistencySoft => 'Lembut';

  @override
  String get consistencySoftHint => 'Agak lembut';

  @override
  String get consistencyLoose => 'Bubur / Setengah cair';

  @override
  String get consistencyLooseHint => 'Perlu dipantau';

  @override
  String get consistencyWatery => 'Berair';

  @override
  String get consistencyWateryHint => 'Diare';

  @override
  String get warnConstipation => 'Tanda sembelit — pantau dengan saksama';

  @override
  String get warnDiarrhea => 'Tanda diare — pantau dengan saksama';

  @override
  String get pooColourLabel => 'Warna (sentuh untuk pilih)';

  @override
  String get pooColourAbnormal => '⚠️ Tidak normal (pucat)';

  @override
  String get pooColourNormal => '✅ Normal';

  @override
  String pooColourSelected(String label) {
    return 'Terpilih: $label';
  }

  @override
  String get diaperSize => 'Ukuran Popok';

  @override
  String get diaperBrand => 'Merek';

  @override
  String get diaperBrandCustomLabel => 'Nama merek';

  @override
  String get rashPresent => 'Ruam popok ada';

  @override
  String get rashPresentHint => 'Kemerahan, iritasi, atau ruam popok';

  @override
  String get rashCreamUsed => 'Krim digunakan';

  @override
  String get rashCreamCustomLabel => 'Nama krim / salep';

  @override
  String get rashFollowUpTitle => '⚠️ Tindak lanjut ruam';

  @override
  String get rashFollowUpQuestion => 'Popok terakhir mencatat ruam. Apakah membaik?';

  @override
  String get rashImproved => 'Ya, membaik';

  @override
  String get rashNoChange => 'Tidak berubah / memburuk';

  @override
  String get addFeeding => 'Tambah Menyusui';

  @override
  String get editFeeding => 'Edit Menyusui';

  @override
  String feedLabel(int number) {
    return 'Menyusui ke-$number';
  }

  @override
  String get feedModeBottle => 'Botol';

  @override
  String get feedModeSuckle => 'Menyusu langsung';

  @override
  String get feedAmountMl => 'Jumlah (ml)';

  @override
  String get feedType => 'Jenis';

  @override
  String get feedBreastMilk => 'ASI';

  @override
  String get feedFormula => 'Susu formula';

  @override
  String get feedFormulaBrand => 'Merek formula';

  @override
  String get feedFormulaBrandCustom => 'Nama merek';

  @override
  String get feedDurationMinutes => 'Durasi (menit)';

  @override
  String get addAnotherFeed => 'Tambah menyusui lain';

  @override
  String get bottleBreastMilk => 'Botol — ASI';

  @override
  String get bottleFormula => 'Botol — susu formula';

  @override
  String get breastfeedingSuckle => 'Menyusui langsung';

  @override
  String get logSleep => 'Catat Tidur';

  @override
  String get editSleep => 'Edit Tidur';

  @override
  String get sleepStart => 'Mulai tidur';

  @override
  String get sleepWakeUp => 'Bangun';

  @override
  String sleepDuration(String duration) {
    return 'Durasi: $duration';
  }

  @override
  String get sleepInvalidTimes => 'Waktu tidak valid';

  @override
  String get sleepWrapsNextDay => '(berlanjut ke hari berikutnya)';

  @override
  String get sleepNotes => 'Catatan (opsional)';

  @override
  String get sleepNotesHint => 'Contoh: gelisah, terbangun sebentar...';

  @override
  String get sleepNoNotes => 'Tidak ada catatan';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}j ${m}m';
  }

  @override
  String get logTemperature => 'Catat Suhu';

  @override
  String get editTemperature => 'Edit Suhu';

  @override
  String get temperatureLabel => 'Suhu Tubuh';

  @override
  String get tempSeverityLow => 'Suhu rendah — pantau';

  @override
  String get tempSeverityNormal => 'Suhu normal';

  @override
  String get tempSeverityElevated => 'Agak tinggi — pantau dengan saksama';

  @override
  String get tempSeverityFever => 'Demam — konsultasi dokter';

  @override
  String get tempReference => 'Referensi suhu';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ Bayi di bawah 3 bulan yang demam, selalu konsultasikan ke dokter anak';

  @override
  String get tempLow => 'Rendah';

  @override
  String get tempNormal => 'Normal';

  @override
  String get tempElevated => 'Tinggi';

  @override
  String get tempFever => 'Demam';

  @override
  String get tempLatest => 'Suhu terbaru';

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
  String get logWeight => 'Catat Berat';

  @override
  String get editWeight => 'Edit Berat';

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
    return 'Rekor terakhir: $weight ($date)';
  }

  @override
  String get weightLatest => 'Berat terbaru';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount dalam periode ini';
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
  String get settingsTitle => 'Pengaturan';

  @override
  String get settingsAppearance => 'Tampilan';

  @override
  String get settingsDarkMode => 'Mode gelap';

  @override
  String get settingsDarkActive => 'Tema gelap aktif';

  @override
  String get settingsLightActive => 'Tema terang aktif';

  @override
  String get settingsUnits => 'Satuan';

  @override
  String get settingsWeightUnit => 'Satuan berat';

  @override
  String get settingsTempUnit => 'Satuan suhu';

  @override
  String get settingsLanguage => 'Bahasa';

  @override
  String get settingsNotifications => 'Notifications & reminders';

  @override
  String get settingsExport => 'Export & backup';

  @override
  String get settingsTips => 'Tips';

  @override
  String get tipSwitchBabies => 'Ganti bayi';

  @override
  String get tipSwitchBabiesDesc => 'Sentuh avatar bayi di bagian atas untuk mengganti atau menambah profil';

  @override
  String get tipSwipeDelete => 'Geser ke kiri untuk hapus';

  @override
  String get tipSwipeDeleteDesc => 'Berfungsi pada kartu hari dan entri individu';

  @override
  String get tipTapToEdit => 'Sentuh entri apa pun untuk mengeditnya';

  @override
  String get tipMultipleFeeds => 'Catat beberapa kali menyusui';

  @override
  String get tipMultipleFeedsDesc => 'Di formulir menyusui, sentuh \"Tambah menyusui lain\" untuk mencatat menyusu langsung dan botol sekaligus';

  @override
  String get tipExportData => 'Ekspor data';

  @override
  String get tipExportDataDesc => 'Gunakan ikon bagikan di Beranda untuk mengekspor semua data ke JSON';

  @override
  String get babiesTitle => 'Bayi';

  @override
  String get addBaby => 'Tambah Bayi';

  @override
  String get editProfile => 'Edit Profil';

  @override
  String get babyNameRequired => 'Nama *';

  @override
  String get babyDobOptional => 'Tanggal lahir (opsional)';

  @override
  String babyBornOn(String date) {
    return 'Lahir $date';
  }

  @override
  String get genderUnknown => 'Tidak disebutkan';

  @override
  String get genderBoy => 'Laki-laki';

  @override
  String get genderGirl => 'Perempuan';

  @override
  String get cannotDeleteOnlyProfile => 'Profil bayi tunggal tidak dapat dihapus';

  @override
  String deleteProfileTitle(String name) {
    return 'Hapus $name?';
  }

  @override
  String get deleteProfileContent => 'Semua data bayi ini akan dihapus secara permanen';

  @override
  String get graphsTitle => 'Grafik';

  @override
  String get graphsTabDaily => 'Harian';

  @override
  String get graphsTabGrowth => 'Pertumbuhan';

  @override
  String get graphsTabHealth => 'Kesehatan';

  @override
  String get graphsTabWho => 'WHO Charts';

  @override
  String get graphsTotalFeeds => 'Total menyusui';

  @override
  String get graphsAvgPerDay => 'Rata-rata/hari';

  @override
  String get graphsTotalDiapers => 'Popok';

  @override
  String get graphsTotalMilk => 'Total ASI/susu';

  @override
  String get graphsTotalSleep => 'Total tidur';

  @override
  String get graphsAvgSleep => 'Rata-rata tidur/hari';

  @override
  String get graphsFeedsPerDay => 'Menyusui per hari';

  @override
  String get graphsDiapersPerDay => 'Popok per hari';

  @override
  String get graphsMilkPerDay => 'ASI/susu per hari (ml)';

  @override
  String get graphsSleepPerDay => 'Tidur per hari (jam)';

  @override
  String get graphsWeightOverTime => 'Perubahan berat badan dari waktu ke waktu';

  @override
  String get graphsTempOverTime => 'Perubahan suhu dari waktu ke waktu';

  @override
  String graphsMaxLabel(String value) {
    return 'Maks: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Min: $value';
  }

  @override
  String get graphsNoWeightData => 'Belum ada entri berat\nCatat berat dari entri hari';

  @override
  String get graphsNoTempData => 'Belum ada entri suhu\nCatat suhu dari suatu hari';

  @override
  String get timeLabel => 'Waktu';

  @override
  String get noColourRecorded => 'Tidak ada warna tercatat';

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
