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
  String get exportJson => 'Ekspor cadangan';

  @override
  String get exportJsonDesc => 'Semua data dan foto dalam satu file .zip';

  @override
  String get exportPdf => 'Ekspor sebagai PDF';

  @override
  String get exportPdfDesc => 'Ringkasan yang mudah dibaca untuk dokter anak Anda';

  @override
  String get importJson => 'Pulihkan cadangan';

  @override
  String get importJsonDesc => 'Dari cadangan .zip (atau ekspor .json lama)';

  @override
  String get importDialogTitle => 'Impor data?';

  @override
  String get importDialogBody => 'Gabungkan menambahkan entri file ke data Anda yang sudah ada. Ganti semua akan menghapus data Anda yang sudah ada terlebih dahulu.';

  @override
  String get importMerge => 'Gabungkan';

  @override
  String get importReplaceAll => 'Ganti semua';

  @override
  String get importSuccess => 'Impor selesai';

  @override
  String get importInvalidFile => 'Ini sepertinya bukan file ekspor Baby Tracker.';

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
  String get milestoneAllDone => 'Semua pencapaian preset tercapai!';

  @override
  String get milestoneFirstSmile => 'Senyum pertama';

  @override
  String get milestoneFirstLaugh => 'Tawa pertama';

  @override
  String get milestoneFirstTooth => 'Gigi pertama';

  @override
  String get milestoneRolledBackTummy => 'Berguling dari telentang ke tengkurap';

  @override
  String get milestoneRolledTummyBack => 'Berguling dari tengkurap ke telentang';

  @override
  String get milestoneSatUnsupported => 'Duduk tanpa sandaran';

  @override
  String get milestoneStartedCrawling => 'Mulai merangkak';

  @override
  String get milestonePulledToStand => 'Berdiri sambil berpegangan';

  @override
  String get milestoneFirstSteps => 'Langkah pertama';

  @override
  String get milestoneFirstWord => 'Kata pertama';

  @override
  String get milestoneFirstSolidFood => 'Makanan padat pertama';

  @override
  String get milestoneFirstHaircut => 'Potong rambut pertama';

  @override
  String get milestoneSleptThroughNight => 'Tidur semalaman';

  @override
  String get milestoneWavedBye => 'Melambaikan tangan pamit';

  @override
  String get milestoneClappedHands => 'Bertepuk tangan';

  @override
  String get milestoneFirstBirthday => 'Ulang tahun pertama';

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
  String get settingsVolumeUnit => 'Satuan volume susu';

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
  String get tipExportDataDesc => 'Ketuk ikon bagikan di Beranda untuk mencadangkan semua data dan foto dalam satu file.';

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
  String get graphsMilkPerDayMl => 'Susu per hari (ml)';

  @override
  String get graphsMilkPerDayOz => 'Susu per hari (oz)';

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

  @override
  String medicationLabel(String name) {
    return 'Obat: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'Kunjungan';

  @override
  String doctorVisitLabel(String reason) {
    return 'Kunjungan dokter — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 Catatan';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'Dr: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'Dokter tidak dicatat';

  @override
  String get summaryPoosLabel => 'Pup';

  @override
  String get summaryPeesLabel => 'Pipis';

  @override
  String get summaryMilkLabel => 'ASI ml';

  @override
  String get summaryMilkLabelMl => 'Susu ml';

  @override
  String get summaryMilkLabelOz => 'Susu oz';

  @override
  String get summaryBreastLabel => 'Menyusui mnt';

  @override
  String get summarySleepLabel => 'Tidur';

  @override
  String get settingsOledMode => 'OLED (hitam pekat)';

  @override
  String get settingsOledModeDesc => 'Gunakan latar hitam pekat untuk menghemat baterai di layar OLED';

  @override
  String get settingsImmersiveMode => 'Mode imersif';

  @override
  String get settingsImmersiveModeDesc => 'Sembunyikan bilah status dan navigasi sistem';

  @override
  String get navVaccinationsEntry => 'Vaksinasi';

  @override
  String get whoChartsEntry => 'Grafik pertumbuhan WHO';

  @override
  String get medicationEditTitle => 'Edit obat';

  @override
  String get medicationLogTitle => 'Catat obat';

  @override
  String get medicationYourCourses => 'Pengobatan Anda';

  @override
  String get medicationManageCourses => 'Kelola pengobatan';

  @override
  String get medicationNameRequired => 'Nama obat *';

  @override
  String get medicationDosageWarning => 'Selalu ikuti dosis sesuai berat/usia. Jangan melebihi frekuensi yang dianjurkan.';

  @override
  String get medicationNotesOptional => 'Catatan (opsional)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count menit lalu',
      one: '1 menit lalu',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jam lalu',
      one: '1 jam lalu',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari lalu',
      one: '1 hari lalu',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'Terakhir diberikan $ago';
  }

  @override
  String get medicationNeverGiven => 'Belum diberikan';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dosis hari ini',
      one: '1 dosis hari ini',
      zero: 'Belum ada dosis hari ini',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'Dosis berikutnya baru boleh $hours jam setelah dosis terakhir';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'Sudah mencapai batas $max/hari untuk pengobatan ini';
  }

  @override
  String get medicationEditCourse => 'Edit pengobatan';

  @override
  String get medicationNewCourse => 'Pengobatan baru';

  @override
  String get medicationReasonOptional => 'Alasan (opsional)';

  @override
  String get medicationIntervalHoursOptional => 'Ulangi setiap (jam, opsional)';

  @override
  String get medicationMaxPerDayOptional => 'Maks. dosis/hari (opsional)';

  @override
  String get medicationRemindNextDose => 'Ingatkan saat dosis berikutnya tiba';

  @override
  String medicationEndCourseTitle(String name) {
    return 'Akhiri $name?';
  }

  @override
  String get medicationEndCoursePrompt => 'Bagaimana hasilnya?';

  @override
  String get medicationDeleteCourseTitle => 'Hapus pengobatan ini?';

  @override
  String get medicationResultWorked => 'Berhasil';

  @override
  String get medicationResultPartlyWorked => 'Cukup berhasil';

  @override
  String get medicationResultDidntWork => 'Tidak berhasil';

  @override
  String get medicationResultSideEffects => 'Efek samping';

  @override
  String get medicationResultNone => 'Belum dinilai';

  @override
  String get medicationsTitle => 'Obat';

  @override
  String medicationActiveTab(int count) {
    return 'Aktif ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'Selesai ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'Tidak ada pengobatan aktif.\nMulai dengan tombol +.';

  @override
  String get medicationNoPastCourses => 'Belum ada pengobatan yang selesai.';

  @override
  String medicationTimesGiven(int count) {
    return 'Diberikan $count×';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'Terakhir: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'Berikutnya $time';
  }

  @override
  String get medicationEndCourse => 'Akhiri pengobatan';

  @override
  String feedLastSideHint(String side) {
    return 'Terakhir: $side';
  }

  @override
  String get feedSideLeft => 'Kiri';

  @override
  String get feedSideRight => 'Kanan';

  @override
  String get feedSideBoth => 'Keduanya';

  @override
  String get feedSideLeftMinutes => 'Kiri (mnt)';

  @override
  String get feedSideRightMinutes => 'Kanan (mnt)';

  @override
  String get timeAgoJustNow => 'Baru saja';

  @override
  String get timeUntilOverdue => 'Terlambat';

  @override
  String timeUntilMinutes(int count) {
    return '$count mnt lagi';
  }

  @override
  String timeUntilHours(int count) {
    return '$count jam lagi';
  }

  @override
  String timeUntilDays(int count) {
    return '$count hari lagi';
  }

  @override
  String get timerDiscardTitle => 'Buang timer ini?';

  @override
  String get timerDiscard => 'Buang';

  @override
  String timerFeedingRunning(String side) {
    return 'Menyusui · $side';
  }

  @override
  String get timerSleepRunning => 'Timer tidur berjalan';

  @override
  String get timerSwitchSide => 'Ganti sisi';

  @override
  String get timerStop => 'Berhenti';

  @override
  String get sinceLastFeed => 'Menyusu terakhir';

  @override
  String get sinceLastDiaper => 'Popok terakhir';

  @override
  String get sinceAwake => 'Bangun';

  @override
  String get sinceAsleep => 'Tidur';

  @override
  String nextDoseDue(String name) {
    return 'Waktunya $name';
  }

  @override
  String get weighConditionNaked => 'Tanpa baju';

  @override
  String get weighConditionDiaper => 'Hanya popok';

  @override
  String get weighConditionLightClothes => 'Baju tipis';

  @override
  String get weighConditionDressed => 'Berpakaian';

  @override
  String get weighCondition => 'Ditimbang dengan';

  @override
  String get growthMeasurementsOptional => 'Ukuran lain (opsional)';

  @override
  String get growthHeightCm => 'Tinggi (cm)';

  @override
  String get growthHeadCm => 'Lingkar kepala (cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'Terakhir ditimbang: $condition — selisihnya mungkin bukan hanya karena pertumbuhan';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm cm';
  }

  @override
  String growthHeadValue(String cm) {
    return 'Kepala $cm cm';
  }

  @override
  String get growthHeightOverTime => 'Tinggi dari waktu ke waktu';

  @override
  String get growthHeadOverTime => 'Lingkar kepala dari waktu ke waktu';

  @override
  String get graphsRecentWeighIns => 'Penimbangan terbaru';

  @override
  String get solidsAmountFewSpoons => 'Beberapa sendok';

  @override
  String get solidsAmountHalf => 'Setengah porsi';

  @override
  String get solidsAmountFull => 'Satu porsi penuh';

  @override
  String get solidsAmountTaste => 'Hanya mencicipi';

  @override
  String get solidsReactionMild => 'Reaksi ringan';

  @override
  String get solidsReactionAllergic => 'Reaksi alergi';

  @override
  String get solidsReactionNone => 'Tidak ada reaksi';

  @override
  String get solidsEditTitle => 'Edit MPASI';

  @override
  String get solidsLogTitle => 'Catat MPASI';

  @override
  String get solidsFoodsLabel => 'Makanan';

  @override
  String get solidsAddFoodHint => 'Tambah makanan';

  @override
  String get solidsAmount => 'Jumlah';

  @override
  String get solidsLiked => 'Apakah si kecil suka?';

  @override
  String get solidsReaction => 'Reaksi';

  @override
  String get solidsNotesOptional => 'Catatan (opsional)';

  @override
  String get foodsTitle => 'Makanan yang sudah dicoba';

  @override
  String get foodsEmpty => 'Belum ada MPASI yang dicatat.';

  @override
  String get foodsAllergensNotYet => 'Alergen umum yang belum dikenalkan';

  @override
  String foodsTriedCount(int count) {
    return '$count makanan dicoba';
  }

  @override
  String foodsFirstTried(String date) {
    return 'Pertama: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'MPASI';

  @override
  String get feedAmountOz => 'Jumlah (oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'Ingatkan saya $interval setelah menyusu terakhir';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'Ingatkan saya $interval setelah ganti popok terakhir';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'Setiap $interval';
  }

  @override
  String get notifIntervalTitle => 'Interval pengingat';

  @override
  String get notifIntervalHours => 'Jam';

  @override
  String get notifIntervalMinutes => 'Menit';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'Minimal $minutes menit';
  }

  @override
  String get settingsFeeding => 'Menyusui';

  @override
  String get settingsTrackBottles => 'Catat botol';

  @override
  String get settingsTrackBottlesDesc => 'Pilih botol yang dipakai, serta berapa yang disiapkan dan diminum';

  @override
  String get bottlesTitle => 'Botol saya';

  @override
  String get bottlesEmpty => 'Belum ada botol.\nTambahkan botol yang Anda pakai agar bisa memilihnya saat mencatat menyusu.';

  @override
  String get bottleAdd => 'Tambah botol';

  @override
  String get bottleEdit => 'Edit botol';

  @override
  String get bottleLabel => 'Label / nomor (mis. #3)';

  @override
  String get bottleBrand => 'Merek / jenis (opsional)';

  @override
  String get bottleCapacity => 'Kapasitas (opsional)';

  @override
  String get bottleNipple => 'Ukuran / aliran dot (opsional)';

  @override
  String get bottleMaterial => 'Bahan';

  @override
  String get bottleRetired => 'Tidak dipakai';

  @override
  String get bottleRetire => 'Berhenti pakai';

  @override
  String get bottleUnretire => 'Pakai lagi';

  @override
  String bottleDeleteTitle(String name) {
    return 'Hapus $name?';
  }

  @override
  String get bottleDeleteBody => 'Catatan menyusu sebelumnya tetap menyimpan jumlahnya, tetapi tidak lagi menampilkan botol ini. Untuk menyembunyikannya dari pilihan sambil menyimpan riwayat, gunakan Berhenti pakai.';

  @override
  String get feedPrepared => 'Disiapkan';

  @override
  String get feedDrank => 'Diminum';

  @override
  String feedLeftover(String amount) {
    return 'Sisa $amount';
  }

  @override
  String get feedDrankMoreThanPrepared => 'Lebih banyak dari yang disiapkan?';

  @override
  String get feedWhichBottle => 'Botol yang mana?';

  @override
  String get feedNoBottlesYet => 'Belum ada botol — tambahkan di Pengaturan → Botol saya.';

  @override
  String get photoPrivacyTitle => 'Foto Anda tetap di ponsel ini';

  @override
  String get photoPrivacyBody => 'Foto hanya disimpan di dalam aplikasi ini di perangkat ini. Aplikasi ini tidak memiliki akses internet, jadi tidak ada yang diunggah atau dibagikan kecuali Anda sendiri yang mengekspor cadangan.\n\nAndroid mungkin meminta akses kamera saat pertama kali Anda mengambil foto.';

  @override
  String get photoPrivacyContinue => 'Lanjutkan';

  @override
  String get photoTakePhoto => 'Ambil foto';

  @override
  String get photoChooseFromGallery => 'Pilih dari galeri';

  @override
  String get photoCaption => 'Keterangan';

  @override
  String get photoCompare => 'Pertama vs terbaru';

  @override
  String get photoAddOtherDay => 'Tambahkan untuk hari lain';

  @override
  String get photoEmpty => 'Belum ada foto.\nAmbil satu foto setiap hari dan lihat si kecil tumbuh.';

  @override
  String get photoToday => 'Foto hari ini';

  @override
  String get photoAddToday => 'Tambahkan foto hari ini';

  @override
  String get photoReplace => 'Ganti';

  @override
  String get photoDeleteTitle => 'Hapus foto ini?';

  @override
  String get ageBeforeBirth => 'Sebelum lahir';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Umur $count hari',
      one: 'Umur 1 hari',
      zero: 'Hari lahir',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months bln $days hr';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years thn $months bln';
  }

  @override
  String get navMemories => 'Kenangan';

  @override
  String get memoriesTabPhotos => 'Foto';

  @override
  String get milestoneNoAchievedHint => 'Ketuk \"Mendatang\" untuk mencatat yang sudah tersedia,\natau gunakan tombol di bawah untuk yang khusus.';

  @override
  String get skinTitle => 'Masalah kulit';

  @override
  String get skinNew => 'Masalah kulit baru';

  @override
  String get skinEdit => 'Edit masalah kulit';

  @override
  String skinTabActive(int count) {
    return 'Aktif ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'Sembuh ($count)';
  }

  @override
  String get skinEmptyActive => 'Tidak ada masalah kulit yang dipantau.\nKetuk + untuk mulai — Anda bisa menambahkan foto setiap hari untuk menunjukkan perubahannya ke dokter.';

  @override
  String get skinEmptyHealed => 'Belum ada yang sembuh.';

  @override
  String get skinUpdateDue => 'Perbarui hari ini';

  @override
  String skinSince(String date) {
    return 'Sejak $date';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari',
      one: '1 hari',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return 'Sembuh $date';
  }

  @override
  String skinReminderAt(String time) {
    return 'Pengingat harian pukul $time';
  }

  @override
  String get skinSeverityTrend => 'Tingkat keparahan dari waktu ke waktu';

  @override
  String get skinNoUpdates => 'Belum ada pembaruan. Tambahkan pembaruan hari ini untuk memulai linimasa.';

  @override
  String get skinExportPdf => 'Ekspor untuk dokter (PDF)';

  @override
  String get skinMarkHealed => 'Tandai sembuh';

  @override
  String get skinReopen => 'Tandai aktif lagi';

  @override
  String get skinUpdateToday => 'Tambah pembaruan hari ini';

  @override
  String get skinEditToday => 'Edit pembaruan hari ini';

  @override
  String skinDeleteTitle(String name) {
    return 'Hapus $name dan semua pembaruannya?';
  }

  @override
  String get skinDeleteUpdateTitle => 'Hapus pembaruan ini?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'Perawatan: $treatment';
  }

  @override
  String get skinName => 'Masalah kulit *';

  @override
  String get skinBodyArea => 'Di bagian tubuh mana?';

  @override
  String get skinBegan => 'Mulai tanggal';

  @override
  String get skinRemindDaily => 'Ingatkan saya untuk memperbaruinya setiap hari';

  @override
  String get skinReminderTime => 'Waktu pengingat';

  @override
  String get skinUpdateTitle => 'Pembaruan kulit';

  @override
  String get skinSeverity => 'Bagaimana kondisinya?';

  @override
  String get skinSeverity0 => '0 · Bersih';

  @override
  String get skinSeverity1 => '1 · Ringan';

  @override
  String get skinSeverity2 => '2 · Sedang';

  @override
  String get skinSeverity3 => '3 · Parah';

  @override
  String get skinSeverity4 => '4 · Sangat parah';

  @override
  String get skinTreatment => 'Perawatan (opsional)';

  @override
  String get skinTreatmentHint => 'mis. pelembap, hidrokortison 1%';

  @override
  String get skinAddPhoto => 'Tambah foto';

  @override
  String get skinCardNone => 'Pantau ruam, eksim, atau masalah kulit lain dari hari ke hari, dengan foto untuk dokter';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count perlu pembaruan hari ini',
      one: '1 perlu pembaruan hari ini',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'Menyiapkan cadangan…';

  @override
  String get backupFailed => 'Tidak dapat membuat cadangan.';

  @override
  String get backupSavedTo => 'Cadangan disimpan di:';

  @override
  String get backupShareSubject => 'Cadangan Baby Tracker';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Berisi $count foto.',
      one: 'Berisi 1 foto.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'Menyusu';

  @override
  String get widgetStopFeed => 'Stop menyusu';

  @override
  String get widgetDiaper => 'Popok';

  @override
  String get widgetSleep => 'Tidur';

  @override
  String get widgetWakeUp => 'Bangun';

  @override
  String widgetFeedingFor(String duration) {
    return 'Menyusu $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'Menyusu $ago';
  }

  @override
  String get widgetNoFeedsYet => 'Belum menyusu';

  @override
  String widgetChangedAgo(String ago) {
    return 'Diganti $ago';
  }

  @override
  String get widgetNoDiapersYet => 'Belum ganti popok';

  @override
  String widgetAsleepFor(String duration) {
    return 'Tidur $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'Bangun $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Hentikan dulu timer tidur';

  @override
  String get widgetStopFeedFirst => 'Hentikan dulu timer menyusui';

  @override
  String quickAddTitle(String name) {
    return 'Tambah untuk $name';
  }

  @override
  String get quickAddOpenApp => 'Buka aplikasi';

  @override
  String get foodPeanut => 'Kacang tanah';

  @override
  String get foodEgg => 'Telur';

  @override
  String get foodDairy => 'Susu & olahannya';

  @override
  String get foodWheat => 'Gandum';

  @override
  String get foodSoy => 'Kedelai';

  @override
  String get foodFish => 'Ikan';

  @override
  String get foodShellfish => 'Kerang & udang';

  @override
  String get foodTreeNuts => 'Kacang pohon';

  @override
  String get foodSesame => 'Wijen';

  @override
  String get foodBanana => 'Pisang';

  @override
  String get foodAvocado => 'Alpukat';

  @override
  String get foodSweetPotato => 'Ubi jalar';

  @override
  String get foodRiceCereal => 'Bubur beras';

  @override
  String get foodOatmeal => 'Oatmeal';

  @override
  String get foodCarrot => 'Wortel';

  @override
  String get foodApple => 'Apel';

  @override
  String get foodPea => 'Kacang polong';

  @override
  String get symptomRash => 'Ruam';

  @override
  String get symptomHives => 'Biduran';

  @override
  String get symptomVomiting => 'Muntah';

  @override
  String get symptomDiarrhea => 'Diare';

  @override
  String get symptomSwelling => 'Bengkak';

  @override
  String get doseUnitDrops => 'tetes';

  @override
  String get doseUnitTablets => 'tablet';

  @override
  String get bottleMaterialPlastic => 'Plastik';

  @override
  String get bottleMaterialGlass => 'Kaca';

  @override
  String get bottleMaterialSilicone => 'Silikon';

  @override
  String get bottleMaterialSteel => 'Baja tahan karat';

  @override
  String get visitReasonRoutine => 'Pemeriksaan rutin';

  @override
  String get visitReasonSick => 'Sakit';

  @override
  String get visitReasonVaccination => 'Imunisasi';

  @override
  String get visitReasonSpecialist => 'Dokter spesialis';

  @override
  String get visitReasonFollowUp => 'Kontrol';

  @override
  String get visitReasonOther => 'Lainnya';

  @override
  String get pooColourPale => 'Pucat';

  @override
  String get noteTagHappyDay => 'Hari bahagia';

  @override
  String get noteTagSleptWell => 'Tidur nyenyak';

  @override
  String get noteTagFussy => 'Rewel';

  @override
  String get noteTagNotWell => 'Kurang sehat';

  @override
  String get noteTagFirstTime => 'Pertama kali!';

  @override
  String get noteTagTeething => 'Tumbuh gigi';

  @override
  String get noteTagGrowthSpurt => 'Lonjakan pertumbuhan';

  @override
  String get noteTagMilestone => 'Pencapaian';

  @override
  String get tummyTimeNotesHint => 'mis. senang, rewel...';

  @override
  String get skinSuggestEczema => 'Eksim';

  @override
  String get skinSuggestDiaperRash => 'Ruam popok';

  @override
  String get skinSuggestCradleCap => 'Kerak kepala (cradle cap)';

  @override
  String get skinSuggestBabyAcne => 'Jerawat bayi';

  @override
  String get skinSuggestHeatRash => 'Biang keringat';

  @override
  String get skinSuggestDrySkin => 'Kulit kering';

  @override
  String get bodyFace => 'Wajah';

  @override
  String get bodyScalp => 'Kulit kepala';

  @override
  String get bodyNeck => 'Leher';

  @override
  String get bodyChest => 'Dada';

  @override
  String get bodyBack => 'Punggung';

  @override
  String get bodyArms => 'Lengan';

  @override
  String get bodyHands => 'Tangan';

  @override
  String get bodyDiaperArea => 'Area popok';

  @override
  String get bodyLegs => 'Kaki';

  @override
  String get bodyFeet => 'Telapak kaki';

  @override
  String get medSuggestGripeWater => 'Gripe water';

  @override
  String get medSuggestVitaminD => 'Vitamin D';

  @override
  String get medSuggestIronDrops => 'Tetes zat besi';

  @override
  String get medSuggestAntibiotic => 'Antibiotik';

  @override
  String get medSuggestProbiotic => 'Probiotik';

  @override
  String vaccinePageTitle(String name) {
    return '$name — Vaksinasi';
  }

  @override
  String get vaccineDeleteTitle => 'Hapus catatan vaksin?';

  @override
  String get vaccineSiteHint => 'mis. paha kiri';

  @override
  String get vaccineNotesHint => 'mis. demam ringan, rewel, tidak ada reaksi...';

  @override
  String get vaccineNoGivenHint => 'Gunakan tombol + atau ketuk \"Tandai sudah diberikan\" di tab Jadwal.';

  @override
  String get vaccineAgeBirth => 'Saat lahir';

  @override
  String vaccineAgeMonths(String range) {
    return '$range bulan';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range bulan (setiap tahun)';
  }

  @override
  String get whoTabHeight => 'Tinggi';

  @override
  String get whoTabHead => 'Kepala';

  @override
  String get whoChartFor => 'Grafik untuk:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 bulan)';
  }

  @override
  String get whoNoDataPoints => 'Belum ada data. Catat ukuran untuk melihat si kecil di grafik.';

  @override
  String get whoLatestMeasurement => 'Pengukuran terbaru';

  @override
  String whoApproxPercentile(String value) {
    return 'Perkiraan persentil: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return 'antara $low dan $high';
  }

  @override
  String whoMonthsOld(String months) {
    return 'Umur $months bulan';
  }

  @override
  String get whoDisclaimer => 'Grafik ini hanya sebagai informasi. Selalu minta dokter anak untuk menafsirkannya.';

  @override
  String get whoMedian => 'P50 (median)';

  @override
  String get notifChannelName => 'Pengingat Baby Tracker';

  @override
  String get notifChannelDesc => 'Pengingat menyusu, popok, obat, dan pemeriksaan kulit';

  @override
  String get notifFeedTitle => 'Waktunya menyusu!';

  @override
  String notifFeedBody(String interval) {
    return 'Belum ada catatan menyusu dalam $interval terakhir.';
  }

  @override
  String get notifDiaperTitle => 'Cek popok!';

  @override
  String notifDiaperBody(String interval) {
    return 'Belum ada catatan ganti popok dalam $interval terakhir.';
  }

  @override
  String notifDoseTitle(String name) {
    return 'Waktunya dosis: $name';
  }

  @override
  String notifDoseBody(String name) {
    return 'Sudah waktunya dosis $name berikutnya.';
  }

  @override
  String notifSkinTitle(String name) {
    return 'Cek kulit: $name';
  }

  @override
  String get notifSkinBody => 'Tambahkan pembaruan hari ini (dan foto jika mau).';

  @override
  String get timerFeedingNotif => 'Timer menyusui berjalan';

  @override
  String intervalMinutes(String m) {
    return '$m mnt';
  }

  @override
  String intervalHours(String h) {
    return '$h jam';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h jam $m mnt';
  }

  @override
  String get settingsRtlActive => 'Tata letak kanan-ke-kiri aktif';

  @override
  String get measurementHeightIn => 'Panjang / tinggi (in)';

  @override
  String get measurementHeadIn => 'Lingkar kepala (in)';

  @override
  String get growthHeightIn => 'Tinggi (in)';

  @override
  String get growthHeadIn => 'Lingkar kepala (in)';

  @override
  String growthHeightValueIn(String value) {
    return '$value in';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'Kepala $value in';
  }

  @override
  String get settingsLengthUnitNote => 'Panjang mengikuti satuan berat (cm untuk kg, inci untuk lbs)';

  @override
  String get formulaStoreBrand => 'Merek toko';
}
