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
  String get navMilestones => 'Pencapaian';

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
  String get actionExport => 'Ekspor data';

  @override
  String get actionAddDay => 'Tambah hari';

  @override
  String get actionLog => 'Catat';

  @override
  String get cannotUndo => 'Tindakan ini tidak dapat dibatalkan.';

  @override
  String get noData => 'Tidak ada data';

  @override
  String get noNotes => 'Tidak ada catatan';

  @override
  String get noDetails => 'Tidak ada detail';

  @override
  String get optional => '(opsional)';

  @override
  String get homeTitle => 'Pelacak';

  @override
  String get feedsToday => 'Menyusui hari ini';

  @override
  String get diapersToday => 'Popok hari ini';

  @override
  String get sleepToday => 'Tidur hari ini';

  @override
  String todayLabel(String date) {
    return 'Hari ini — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kejadian',
      one: '1 kejadian',
      zero: 'tidak ada kejadian',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Hapus hari?';

  @override
  String deleteDayContent(String date) {
    return 'Hapus $date dan semua entri di dalamnya? Tindakan ini tidak dapat dibatalkan.';
  }

  @override
  String get rashRecorded => 'Ruam popok tercatat';

  @override
  String get noEntriesYet => 'Belum ada entri';

  @override
  String get addEntry => 'Tambah entri';

  @override
  String get deleteEntryTitle => 'Hapus entri?';

  @override
  String get entryTypeDiaper => 'Ganti popok';

  @override
  String get entryTypeFeeding => 'Menyusui';

  @override
  String get entryTypeSleep => 'Tidur';

  @override
  String get entryTypeTemperature => 'Suhu';

  @override
  String get entryTypeWeight => 'Berat badan';

  @override
  String get entryTypeTummyTime => 'Tummy time';

  @override
  String get entryTypeMedication => 'Obat';

  @override
  String get entryTypeDoctorVisit => 'Kunjungan dokter';

  @override
  String get entryTypeNote => 'Catatan harian / jurnal';

  @override
  String get entryTypePumping => 'Sesi memompa ASI';

  @override
  String get entryTypeBath => 'Mandi';

  @override
  String get diaperPeePoo => 'Popok — pipis + pup';

  @override
  String get diaperPee => 'Popok — pipis';

  @override
  String get diaperPoo => 'Popok — pup';

  @override
  String get diaperChange => 'Ganti popok';

  @override
  String get editDiaper => 'Edit popok';

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
  String get consistencyHard => 'Keras / seperti pelet';

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
  String get consistencySoft => 'Lembek';

  @override
  String get consistencySoftHint => 'Agak lembek';

  @override
  String get consistencyLoose => 'Encer / seperti bubur';

  @override
  String get consistencyLooseHint => 'Perhatikan';

  @override
  String get consistencyWatery => 'Berair';

  @override
  String get consistencyWateryHint => 'Diare';

  @override
  String get warnConstipation => 'Tanda-tanda sembelit — pantau dengan saksama';

  @override
  String get warnDiarrhea => 'Tanda-tanda diare — pantau dengan saksama';

  @override
  String get pooColourLabel => 'Warna (ketuk untuk memilih)';

  @override
  String get pooColourAbnormal => '⚠️ Tidak normal (pucat)';

  @override
  String get pooColourNormal => '✅ Normal';

  @override
  String pooColourSelected(String label) {
    return 'Dipilih: $label';
  }

  @override
  String get diaperSize => 'Ukuran popok';

  @override
  String get diaperBrand => 'Merek';

  @override
  String get diaperBrandCustomLabel => 'Nama merek';

  @override
  String get rashPresent => 'Ada ruam';

  @override
  String get rashPresentHint => 'Kemerahan, iritasi, atau ruam popok';

  @override
  String get rashCreamUsed => 'Krim ruam digunakan';

  @override
  String get rashCreamCustomLabel => 'Nama krim / salep';

  @override
  String get rashFollowUpTitle => '⚠️ Tindak lanjut ruam';

  @override
  String get rashFollowUpQuestion => 'Popok terakhir mencatat ruam. Apakah sudah membaik?';

  @override
  String get rashImproved => 'Ya, membaik';

  @override
  String get rashNoChange => 'Tidak berubah / memburuk';

  @override
  String get addFeeding => 'Tambah sesi menyusui';

  @override
  String get editFeeding => 'Edit sesi menyusui';

  @override
  String feedLabel(int number) {
    return 'Menyusui $number';
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
  String get feedFormulaBrandCustom => 'Nama merek formula';

  @override
  String get feedDurationMinutes => 'Durasi (menit)';

  @override
  String get addAnotherFeed => 'Tambah sesi menyusui lain';

  @override
  String get bottleBreastMilk => 'Botol — ASI';

  @override
  String get bottleFormula => 'Botol — susu formula';

  @override
  String get breastfeedingSuckle => 'Menyusui langsung (dari payudara)';

  @override
  String get logSleep => 'Catat tidur';

  @override
  String get editSleep => 'Edit tidur';

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
  String get sleepWrapsNextDay => '(berakhir di hari berikutnya)';

  @override
  String get sleepNotes => 'Catatan (opsional)';

  @override
  String get sleepNotesHint => 'misal: gelisah, terbangun sebentar...';

  @override
  String get sleepNoNotes => 'Tidak ada catatan';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}j ${m}m';
  }

  @override
  String get logTemperature => 'Catat suhu';

  @override
  String get editTemperature => 'Edit suhu';

  @override
  String get temperatureLabel => 'Suhu';

  @override
  String get tempSeverityLow => 'Suhu rendah — pantau';

  @override
  String get tempSeverityNormal => 'Suhu normal';

  @override
  String get tempSeverityElevated => 'Agak tinggi — pantau dengan saksama';

  @override
  String get tempSeverityFever => 'Demam — konsultasikan dengan dokter';

  @override
  String get tempReference => 'Acuan suhu';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ Jika bayi di bawah 3 bulan demam, selalu konsultasikan dengan dokter anak.';

  @override
  String get tempLow => 'Rendah';

  @override
  String get tempNormal => 'Normal';

  @override
  String get tempElevated => 'Tinggi';

  @override
  String get tempFever => 'Demam';

  @override
  String get tempLatest => 'Suhu terakhir';

  @override
  String get tempSummary => 'Ringkasan suhu';

  @override
  String get tempFeverThreshold => 'Batas demam';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari',
      one: '1 hari',
      zero: 'tidak ada hari',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'Catat berat badan';

  @override
  String get editWeight => 'Edit berat badan';

  @override
  String get weightLabel => 'Berat badan';

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
    return 'Terakhir tercatat: $weight pada $date';
  }

  @override
  String get weightLatest => 'Berat badan terakhir';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount dalam periode';
  }

  @override
  String get tummyTimeLog => 'Catat tummy time';

  @override
  String get tummyTimeEdit => 'Edit tummy time';

  @override
  String get tummyTimeStart => 'Waktu mulai';

  @override
  String get tummyTimeEnd => 'Waktu selesai';

  @override
  String get tummyTimeTip => 'Tummy time memperkuat otot leher dan bahu.';

  @override
  String get medicationLog => 'Catat obat';

  @override
  String get medicationEdit => 'Edit obat';

  @override
  String get medicationName => 'Nama obat *';

  @override
  String get medicationDose => 'Dosis';

  @override
  String get medicationUnit => 'Satuan';

  @override
  String get medicationCommon => 'Obat umum';

  @override
  String get medicationWarning => 'Selalu ikuti petunjuk dosis berdasarkan berat badan/usia. Jangan melebihi frekuensi yang dianjurkan.';

  @override
  String get medicationNotes => 'Catatan (opsional)';

  @override
  String get medicationNotesHint => 'misal: alasan, reaksi...';

  @override
  String get doctorVisitLog => 'Kunjungan dokter';

  @override
  String get doctorVisitEdit => 'Edit kunjungan dokter';

  @override
  String get doctorName => 'Nama dokter / klinik';

  @override
  String get doctorVisitReason => 'Alasan kunjungan';

  @override
  String get doctorVisitMeasurements => 'Pengukuran (opsional)';

  @override
  String get doctorVisitNotes => 'Catatan';

  @override
  String get doctorVisitNotesHint => 'misal: vaksin yang diberikan, rekomendasi dokter...';

  @override
  String get measurementWeightKg => 'Berat badan (kg)';

  @override
  String get measurementWeightLbs => 'Berat badan (lbs)';

  @override
  String get measurementHeightCm => 'Panjang / tinggi badan (cm)';

  @override
  String get measurementHeadCm => 'Lingkar kepala (cm)';

  @override
  String get dailyNoteLog => 'Catatan harian';

  @override
  String get dailyNoteEdit => 'Edit catatan';

  @override
  String get dailyNoteTitle => 'Judul (opsional)';

  @override
  String get dailyNoteText => 'Catatan';

  @override
  String get dailyNoteHint => 'Apa yang terjadi hari ini? Pertama kali berguling? Pagi yang rewel?';

  @override
  String get dailyNoteTags => 'Tag cepat';

  @override
  String get pumpingLog => 'Catat sesi memompa ASI';

  @override
  String get pumpingEdit => 'Edit sesi memompa ASI';

  @override
  String get pumpingLeft => 'Payudara kiri (ml)';

  @override
  String get pumpingRight => 'Payudara kanan (ml)';

  @override
  String get pumpingTotal => 'Total yang dipompa';

  @override
  String get pumpingDuration => 'Durasi (menit)';

  @override
  String get pumpingStored => 'Disimpan / dibekukan';

  @override
  String get pumpingNotes => 'Catatan (opsional)';

  @override
  String get pumpingSessionTitle => 'Memompa ASI';

  @override
  String pumpingTotalMl(int ml) {
    return 'Total $ml ml';
  }

  @override
  String get bathLog => 'Catat mandi';

  @override
  String get bathEdit => 'Edit mandi';

  @override
  String get bathType => 'Jenis mandi';

  @override
  String get bathTypeSponge => 'Mandi spons';

  @override
  String get bathTypeTub => 'Mandi bak';

  @override
  String get bathTypeShower => 'Shower';

  @override
  String get bathNotes => 'Catatan (opsional)';

  @override
  String get bathProducts => 'Produk yang digunakan (opsional)';

  @override
  String get vaccineTitle => 'Vaksinasi';

  @override
  String get vaccineTabGiven => 'Diberikan';

  @override
  String get vaccineTabSchedule => 'Jadwal';

  @override
  String get vaccineLog => 'Catat vaksin';

  @override
  String get vaccineEdit => 'Edit vaksin';

  @override
  String get vaccineName => 'Nama vaksin';

  @override
  String get vaccineBrand => 'Merek / pabrikan (opsional)';

  @override
  String get vaccineDate => 'Tanggal pemberian';

  @override
  String get vaccineDose => 'Nomor dosis (opsional)';

  @override
  String get vaccineSite => 'Tempat suntik (opsional)';

  @override
  String get vaccineNotes => 'Catatan / reaksi';

  @override
  String vaccineDue(String age) {
    return 'Jadwal pada usia $age';
  }

  @override
  String get vaccineGiven => 'Diberikan';

  @override
  String get vaccineNoGiven => 'Belum ada vaksin yang dicatat.';

  @override
  String get vaccineMarkGiven => 'Tandai sebagai sudah diberikan';

  @override
  String get whoChartTitle => 'Grafik Pertumbuhan WHO';

  @override
  String get whoWeightForAge => 'Berat badan menurut usia';

  @override
  String get whoHeightForAge => 'Panjang/tinggi badan menurut usia';

  @override
  String get whoHeadForAge => 'Lingkar kepala menurut usia';

  @override
  String get whoGenderBoy => 'Laki-laki';

  @override
  String get whoGenderGirl => 'Perempuan';

  @override
  String get whoNoData => 'Belum ada pengukuran yang dicatat.\nCatat berat badan dari entri hari ini untuk melihat grafik.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'Bayi Anda';

  @override
  String whoAgeMonths(int n) {
    return '$n bln';
  }

  @override
  String get whoNoBirthDate => 'Atur tanggal lahir bayi di profil untuk melihat grafik berdasarkan usia.';

  @override
  String get notifTitle => 'Pengingat';

  @override
  String get notifFeedingReminder => 'Pengingat menyusui';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'Ingatkan saya setelah $hours jam jika belum ada sesi menyusui yang dicatat';
  }

  @override
  String get notifDiaperReminder => 'Pengingat popok';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'Ingatkan saya setelah $hours jam jika belum ada popok yang dicatat';
  }

  @override
  String get notifMedicationReminder => 'Pengingat obat';

  @override
  String get notifEnabled => 'Notifikasi diaktifkan';

  @override
  String get notifDisabled => 'Notifikasi dinonaktifkan';

  @override
  String get notifPermissionRequired => 'Aktifkan notifikasi di pengaturan perangkat Anda.';

  @override
  String get exportTitle => 'Ekspor & cadangan';

  @override
  String get exportJson => 'Ekspor sebagai JSON';

  @override
  String get exportPdf => 'Ekspor sebagai PDF';

  @override
  String get exportPdfDesc => 'Ringkasan yang mudah dibaca untuk dokter anak Anda';

  @override
  String get exportGoogleDrive => 'Cadangkan ke Google Drive';

  @override
  String get exportGenerating => 'Membuat laporan...';

  @override
  String get milestoneTitle => 'Pencapaian';

  @override
  String get milestoneTabAchieved => 'Tercapai';

  @override
  String get milestoneTabUpcoming => 'Akan datang';

  @override
  String get milestoneCustomAdd => 'Pencapaian kustom';

  @override
  String get milestoneDeleteTitle => 'Hapus pencapaian?';

  @override
  String get milestoneEdit => 'Edit pencapaian';

  @override
  String get milestoneAdd => 'Tambah pencapaian';

  @override
  String get milestoneName => 'Nama pencapaian *';

  @override
  String get milestoneDate => 'Tanggal tercapai';

  @override
  String get milestoneNotes => 'Catatan (opsional)';

  @override
  String get milestoneNotesHint => 'Detail yang perlu diingat...';

  @override
  String get milestoneNoAchieved => 'Belum ada pencapaian yang dicatat.';

  @override
  String get milestoneAllDone => 'Semua pencapaian preset tercapai! 🎉';

  @override
  String get milestoneFirstSmile => '😊 Senyum pertama';

  @override
  String get milestoneFirstLaugh => '😂 Tawa pertama';

  @override
  String get milestoneFirstTooth => '🦷 Gigi pertama';

  @override
  String get milestoneRolledBackTummy => '🔄 Berguling dari telentang ke tengkurap';

  @override
  String get milestoneRolledTummyBack => '🔄 Berguling dari tengkurap ke telentang';

  @override
  String get milestoneSatUnsupported => '🧸 Duduk tanpa sandaran';

  @override
  String get milestoneStartedCrawling => '🐣 Mulai merangkak';

  @override
  String get milestonePulledToStand => '🏋️ Berdiri sambil berpegangan';

  @override
  String get milestoneFirstSteps => '👣 Langkah pertama';

  @override
  String get milestoneFirstWord => '💬 Kata pertama';

  @override
  String get milestoneFirstSolidFood => '🥣 Makanan padat pertama';

  @override
  String get milestoneFirstHaircut => '✂️ Potong rambut pertama';

  @override
  String get milestoneSleptThroughNight => '🌙 Tidur semalaman';

  @override
  String get milestoneWavedBye => '👋 Melambaikan tangan pamit';

  @override
  String get milestoneClappedHands => '👏 Bertepuk tangan';

  @override
  String get milestoneFirstBirthday => '🎂 Ulang tahun pertama';

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
  String get settingsNotifications => 'Notifikasi & pengingat';

  @override
  String get settingsExport => 'Ekspor & cadangan';

  @override
  String get settingsTips => 'Tips';

  @override
  String get tipSwitchBabies => 'Beralih antar bayi';

  @override
  String get tipSwitchBabiesDesc => 'Ketuk avatar bayi di bagian atas untuk beralih atau menambah profil bayi.';

  @override
  String get tipSwipeDelete => 'Geser ke kiri untuk menghapus';

  @override
  String get tipSwipeDeleteDesc => 'Berfungsi pada ubin hari dan entri individu.';

  @override
  String get tipTapToEdit => 'Ketuk entri apa pun untuk mengeditnya';

  @override
  String get tipMultipleFeeds => 'Catat beberapa sesi menyusui';

  @override
  String get tipMultipleFeedsDesc => 'Di formulir menyusui, ketuk \"Tambah sesi menyusui lain\" untuk mencatat menyusu langsung + botol sekaligus.';

  @override
  String get tipExportData => 'Ekspor data';

  @override
  String get tipExportDataDesc => 'Gunakan ikon bagikan di Beranda untuk mengekspor semua data sebagai JSON.';

  @override
  String get babiesTitle => 'Bayi';

  @override
  String get addBaby => 'Tambah bayi';

  @override
  String get editProfile => 'Edit profil';

  @override
  String get babyNameRequired => 'Nama *';

  @override
  String get babyDobOptional => 'Tanggal lahir (opsional)';

  @override
  String babyBornOn(String date) {
    return 'Lahir $date';
  }

  @override
  String get genderUnknown => 'Tidak diketahui';

  @override
  String get genderBoy => 'Laki-laki';

  @override
  String get genderGirl => 'Perempuan';

  @override
  String get cannotDeleteOnlyProfile => 'Tidak dapat menghapus satu-satunya profil bayi.';

  @override
  String deleteProfileTitle(String name) {
    return 'Hapus $name?';
  }

  @override
  String get deleteProfileContent => 'Semua data untuk bayi ini akan dihapus secara permanen.';

  @override
  String get graphsTitle => 'Grafik';

  @override
  String get graphsTabDaily => 'Harian';

  @override
  String get graphsTabGrowth => 'Pertumbuhan';

  @override
  String get graphsTabHealth => 'Kesehatan';

  @override
  String get graphsTabWho => 'Grafik WHO';

  @override
  String get graphsTotalFeeds => 'Total menyusui';

  @override
  String get graphsAvgPerDay => 'Rata-rata/hari';

  @override
  String get graphsTotalDiapers => 'Popok';

  @override
  String get graphsTotalMilk => 'Total ASI';

  @override
  String get graphsTotalSleep => 'Total tidur';

  @override
  String get graphsAvgSleep => 'Rata-rata tidur/hari';

  @override
  String get graphsFeedsPerDay => 'Menyusui per hari';

  @override
  String get graphsDiapersPerDay => 'Popok per hari';

  @override
  String get graphsMilkPerDay => 'ASI per hari (ml)';

  @override
  String get graphsSleepPerDay => 'Tidur per hari (jam)';

  @override
  String get graphsWeightOverTime => 'Berat badan dari waktu ke waktu';

  @override
  String get graphsTempOverTime => 'Suhu dari waktu ke waktu';

  @override
  String graphsMaxLabel(String value) {
    return 'Maks: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Min: $value';
  }

  @override
  String get graphsNoWeightData => 'Belum ada entri berat badan.\nCatat berat badan dari entri hari ini.';

  @override
  String get graphsNoTempData => 'Belum ada entri suhu.\nCatat suhu dari suatu hari.';

  @override
  String get timeLabel => 'Waktu';

  @override
  String get noColourRecorded => 'Tidak ada warna yang tercatat';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari',
      one: '1 hari',
      zero: 'baru lahir',
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
      zero: 'kurang dari 1 bulan',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years tahun $months bulan';
  }
}
