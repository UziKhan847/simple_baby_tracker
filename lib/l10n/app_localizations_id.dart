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
  String get cannotUndo => 'Tindakan ini tidak dapat dibatalkan';

  @override
  String get noData => 'Tidak ada data';

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
  String get rashRecorded => 'Ruam tercatat';

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
  String get tipMultipleFeeds => 'Catat beberapa kali menyusui';

  @override
  String get tipMultipleFeedsDesc => 'Di formulir menyusui, sentuh \"Tambah menyusui lain\" untuk mencatat menyusu langsung dan botol sekaligus';

  @override
  String get tipExportData => 'Ekspor data';

  @override
  String get tipExportDataDesc => 'Gunakan ikon bagikan di Beranda untuk mengekspor semua data ke JSON';

  @override
  String get tipTapToEdit => 'Sentuh entri apa pun untuk mengeditnya';

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
  String get noDetails => 'Tidak ada detail';

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
