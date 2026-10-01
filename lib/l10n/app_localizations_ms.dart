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
  String get navMilestones => 'Perkembangan';

  @override
  String get navSettings => 'Tetapan';

  @override
  String get actionCancel => 'Batal';

  @override
  String get actionSave => 'Simpan';

  @override
  String get actionUpdate => 'Kemas kini';

  @override
  String get actionDelete => 'Padam';

  @override
  String get actionAdd => 'Tambah';

  @override
  String get actionEdit => 'Sunting';

  @override
  String get actionClose => 'Tutup';

  @override
  String get actionExport => 'Eksport data';

  @override
  String get actionAddDay => 'Tambah hari';

  @override
  String get actionLog => 'Log';

  @override
  String get cannotUndo => 'Tindakan ini tidak boleh dibuat semula.';

  @override
  String get noData => 'Tiada data';

  @override
  String get noNotes => 'Tiada catatan';

  @override
  String get noDetails => 'Tiada butiran';

  @override
  String get optional => '(pilihan)';

  @override
  String get homeTitle => 'Penjejak';

  @override
  String get feedsToday => 'Penyusuan hari ini';

  @override
  String get diapersToday => 'Lampin hari ini';

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
      other: '$count peristiwa',
      one: '1 peristiwa',
      zero: 'tiada peristiwa',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Padam hari ini?';

  @override
  String deleteDayContent(String date) {
    return 'Padam $date dan semua entri di dalamnya? Tindakan ini tidak boleh dibuat semula.';
  }

  @override
  String get rashRecorded => 'Ruam lampin direkod';

  @override
  String get noEntriesYet => 'Tiada entri lagi';

  @override
  String get addEntry => 'Tambah entri';

  @override
  String get deleteEntryTitle => 'Padam entri?';

  @override
  String get entryTypeDiaper => 'Tukar lampin';

  @override
  String get entryTypeFeeding => 'Penyusuan';

  @override
  String get entryTypeSleep => 'Tidur';

  @override
  String get entryTypeTemperature => 'Suhu';

  @override
  String get entryTypeWeight => 'Berat badan';

  @override
  String get entryTypeTummyTime => 'Masa meniarap';

  @override
  String get entryTypeMedication => 'Ubat';

  @override
  String get entryTypeDoctorVisit => 'Lawatan doktor';

  @override
  String get entryTypeNote => 'Catatan harian / jurnal';

  @override
  String get entryTypePumping => 'Sesi mengepam susu';

  @override
  String get entryTypeBath => 'Mandi';

  @override
  String get diaperPeePoo => 'Lampin — kencing + berak';

  @override
  String get diaperPee => 'Lampin — kencing';

  @override
  String get diaperPoo => 'Lampin — berak';

  @override
  String get diaperChange => 'Tukar lampin';

  @override
  String get editDiaper => 'Sunting lampin';

  @override
  String get diaperContents => 'Kandungan';

  @override
  String get diaperNone => 'Tiada';

  @override
  String get diaperPeeLabel => 'Kencing';

  @override
  String get diaperPooLabel => 'Berak';

  @override
  String get diaperBoth => 'Kedua-dua';

  @override
  String get diaperConsistency => 'Konsistensi';

  @override
  String get consistencyHard => 'Keras / berketul';

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
  String get consistencyLoose => 'Cair / seperti bubur';

  @override
  String get consistencyLooseHint => 'Perhatikan';

  @override
  String get consistencyWatery => 'Berair';

  @override
  String get consistencyWateryHint => 'Cirit-birit';

  @override
  String get warnConstipation => 'Tanda-tanda sembelit — perhatikan dengan teliti';

  @override
  String get warnDiarrhea => 'Tanda-tanda cirit-birit — perhatikan dengan teliti';

  @override
  String get pooColourLabel => 'Warna (ketik untuk pilih)';

  @override
  String get pooColourAbnormal => '⚠️ Tidak normal (pucat)';

  @override
  String get pooColourNormal => '✅ Normal';

  @override
  String pooColourSelected(String label) {
    return 'Dipilih: $label';
  }

  @override
  String get diaperSize => 'Saiz lampin';

  @override
  String get diaperBrand => 'Jenama';

  @override
  String get diaperBrandCustomLabel => 'Nama jenama';

  @override
  String get rashPresent => 'Ruam hadir';

  @override
  String get rashPresentHint => 'Kemerahan, kerengsaan atau ruam lampin';

  @override
  String get rashCreamUsed => 'Krim ruam digunakan';

  @override
  String get rashCreamCustomLabel => 'Nama krim / salap';

  @override
  String get rashFollowUpTitle => '⚠️ Tindakan susulan ruam';

  @override
  String get rashFollowUpQuestion => 'Lampin terakhir mencatatkan ruam. Adakah ia bertambah baik?';

  @override
  String get rashImproved => 'Ya, bertambah baik';

  @override
  String get rashNoChange => 'Tiada perubahan / semakin teruk';

  @override
  String get addFeeding => 'Tambah sesi penyusuan';

  @override
  String get editFeeding => 'Sunting sesi penyusuan';

  @override
  String feedLabel(int number) {
    return 'Penyusuan $number';
  }

  @override
  String get feedModeBottle => 'Botol';

  @override
  String get feedModeSuckle => 'Menyusu terus';

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
  String get feedFormulaBrandCustom => 'Nama jenama formula';

  @override
  String get feedDurationMinutes => 'Tempoh (minit)';

  @override
  String get addAnotherFeed => 'Tambah sesi penyusuan lain';

  @override
  String get bottleBreastMilk => 'Botol — susu ibu';

  @override
  String get bottleFormula => 'Botol — susu formula';

  @override
  String get breastfeedingSuckle => 'Menyusu terus (dari payudara)';

  @override
  String get logSleep => 'Log tidur';

  @override
  String get editSleep => 'Sunting tidur';

  @override
  String get sleepStart => 'Mula tidur';

  @override
  String get sleepWakeUp => 'Jaga';

  @override
  String sleepDuration(String duration) {
    return 'Tempoh: $duration';
  }

  @override
  String get sleepInvalidTimes => 'Masa tidak sah';

  @override
  String get sleepWrapsNextDay => '(berakhir pada hari berikutnya)';

  @override
  String get sleepNotes => 'Catatan (pilihan)';

  @override
  String get sleepNotesHint => 'contoh: gelisah, terjaga sebentar...';

  @override
  String get sleepNoNotes => 'Tiada catatan';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}j ${m}m';
  }

  @override
  String get logTemperature => 'Log suhu';

  @override
  String get editTemperature => 'Sunting suhu';

  @override
  String get temperatureLabel => 'Suhu';

  @override
  String get tempSeverityLow => 'Suhu rendah — perhatikan';

  @override
  String get tempSeverityNormal => 'Suhu normal';

  @override
  String get tempSeverityElevated => 'Agak tinggi — perhatikan dengan teliti';

  @override
  String get tempSeverityFever => 'Demam — rujuk doktor anda';

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
  String get tempFeverWarning => '⚠️ Sentiasa rujuk pakar pediatrik untuk demam pada bayi di bawah 3 bulan.';

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
      zero: 'tiada hari',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'Log berat badan';

  @override
  String get editWeight => 'Sunting berat badan';

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
    return 'Terakhir direkod: $weight pada $date';
  }

  @override
  String get weightLatest => 'Berat badan terkini';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount sepanjang tempoh';
  }

  @override
  String get tummyTimeLog => 'Log masa meniarap';

  @override
  String get tummyTimeEdit => 'Sunting masa meniarap';

  @override
  String get tummyTimeStart => 'Masa mula';

  @override
  String get tummyTimeEnd => 'Masa tamat';

  @override
  String get tummyTimeTip => 'Masa meniarap menguatkan otot leher dan bahu.';

  @override
  String get medicationLog => 'Log ubat';

  @override
  String get medicationEdit => 'Sunting ubat';

  @override
  String get medicationName => 'Nama ubat *';

  @override
  String get medicationDose => 'Dos';

  @override
  String get medicationUnit => 'Unit';

  @override
  String get medicationCommon => 'Ubat lazim';

  @override
  String get medicationWarning => 'Sentiasa ikut arahan dos berdasarkan berat/umur. Jangan melebihi kekerapan yang disyorkan.';

  @override
  String get medicationNotes => 'Catatan (pilihan)';

  @override
  String get medicationNotesHint => 'contoh: sebab, tindak balas...';

  @override
  String get doctorVisitLog => 'Lawatan doktor';

  @override
  String get doctorVisitEdit => 'Sunting lawatan doktor';

  @override
  String get doctorName => 'Nama doktor / klinik';

  @override
  String get doctorVisitReason => 'Sebab lawatan';

  @override
  String get doctorVisitMeasurements => 'Ukuran (pilihan)';

  @override
  String get doctorVisitNotes => 'Catatan';

  @override
  String get doctorVisitNotesHint => 'contoh: vaksin yang diberikan, cadangan doktor...';

  @override
  String get measurementWeightKg => 'Berat badan (kg)';

  @override
  String get measurementWeightLbs => 'Berat badan (lbs)';

  @override
  String get measurementHeightCm => 'Panjang / tinggi (cm)';

  @override
  String get measurementHeadCm => 'Lilitan kepala (cm)';

  @override
  String get dailyNoteLog => 'Catatan harian';

  @override
  String get dailyNoteEdit => 'Sunting catatan';

  @override
  String get dailyNoteTitle => 'Tajuk (pilihan)';

  @override
  String get dailyNoteText => 'Catatan';

  @override
  String get dailyNoteHint => 'Apa yang berlaku hari ini? Kali pertama berguling? Pagi yang rewel?';

  @override
  String get dailyNoteTags => 'Tag pantas';

  @override
  String get pumpingLog => 'Log sesi mengepam';

  @override
  String get pumpingEdit => 'Sunting sesi mengepam';

  @override
  String get pumpingLeft => 'Payudara kiri (ml)';

  @override
  String get pumpingRight => 'Payudara kanan (ml)';

  @override
  String get pumpingTotal => 'Jumlah yang dipam';

  @override
  String get pumpingDuration => 'Tempoh (minit)';

  @override
  String get pumpingStored => 'Disimpan / dibekukan';

  @override
  String get pumpingNotes => 'Catatan (pilihan)';

  @override
  String get pumpingSessionTitle => 'Mengepam';

  @override
  String pumpingTotalMl(int ml) {
    return 'Jumlah $ml ml';
  }

  @override
  String get bathLog => 'Log mandi';

  @override
  String get bathEdit => 'Sunting mandi';

  @override
  String get bathType => 'Jenis mandi';

  @override
  String get bathTypeSponge => 'Mandi span';

  @override
  String get bathTypeTub => 'Mandi dalam tab mandi';

  @override
  String get bathTypeShower => 'Pancuran';

  @override
  String get bathNotes => 'Catatan (pilihan)';

  @override
  String get bathProducts => 'Produk yang digunakan (pilihan)';

  @override
  String get vaccineTitle => 'Vaksinasi';

  @override
  String get vaccineTabGiven => 'Diberi';

  @override
  String get vaccineTabSchedule => 'Jadual';

  @override
  String get vaccineLog => 'Log vaksin';

  @override
  String get vaccineEdit => 'Sunting vaksin';

  @override
  String get vaccineName => 'Nama vaksin';

  @override
  String get vaccineBrand => 'Jenama / pengilang (pilihan)';

  @override
  String get vaccineDate => 'Tarikh diberi';

  @override
  String get vaccineDose => 'Nombor dos (pilihan)';

  @override
  String get vaccineSite => 'Tempat suntikan (pilihan)';

  @override
  String get vaccineNotes => 'Catatan / reaksi';

  @override
  String vaccineDue(String age) {
    return 'Jadual pada $age';
  }

  @override
  String get vaccineGiven => 'Diberi';

  @override
  String get vaccineNoGiven => 'Tiada vaksin yang direkod lagi.';

  @override
  String get vaccineMarkGiven => 'Tanda sebagai sudah diberi';

  @override
  String get whoChartTitle => 'Carta Pertumbuhan WHO';

  @override
  String get whoWeightForAge => 'Berat mengikut umur';

  @override
  String get whoHeightForAge => 'Panjang/tinggi mengikut umur';

  @override
  String get whoHeadForAge => 'Lilitan kepala mengikut umur';

  @override
  String get whoGenderBoy => 'Lelaki';

  @override
  String get whoGenderGirl => 'Perempuan';

  @override
  String get whoNoData => 'Tiada ukuran yang direkod lagi.\nLog berat dari entri hari ini untuk melihat carta.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'Bayi anda';

  @override
  String whoAgeMonths(int n) {
    return '$n bln';
  }

  @override
  String get whoNoBirthDate => 'Tetapkan tarikh lahir bayi dalam profil untuk melihat carta berdasarkan umur.';

  @override
  String get notifTitle => 'Peringatan';

  @override
  String get notifFeedingReminder => 'Peringatan penyusuan';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'Ingatkan saya selepas $hours jam jika tiada sesi penyusuan direkod';
  }

  @override
  String get notifDiaperReminder => 'Peringatan lampin';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'Ingatkan saya selepas $hours jam jika tiada lampin direkod';
  }

  @override
  String get notifMedicationReminder => 'Peringatan ubat';

  @override
  String get notifEnabled => 'Pemberitahuan diaktifkan';

  @override
  String get notifDisabled => 'Pemberitahuan dinyahaktifkan';

  @override
  String get notifPermissionRequired => 'Sila aktifkan pemberitahuan dalam tetapan peranti anda.';

  @override
  String get exportTitle => 'Eksport & sandaran';

  @override
  String get exportJson => 'Eksport sebagai JSON';

  @override
  String get exportJsonDesc => 'Data mentah untuk sandaran';

  @override
  String get exportPdf => 'Eksport sebagai PDF';

  @override
  String get exportPdfDesc => 'Ringkasan mudah dibaca untuk pakar pediatrik anda';

  @override
  String get importJson => 'Import dari JSON';

  @override
  String get importJsonDesc => 'Pulihkan daripada fail sandaran';

  @override
  String get importDialogTitle => 'Import data?';

  @override
  String get importDialogBody => 'Gabung menambah entri fail bersama data sedia ada anda. Ganti semua memadam data sedia ada anda dahulu.';

  @override
  String get importMerge => 'Gabung';

  @override
  String get importReplaceAll => 'Ganti semua';

  @override
  String get importSuccess => 'Import selesai';

  @override
  String get importInvalidFile => 'Ini tidak kelihatan seperti fail eksport Baby Tracker.';

  @override
  String get exportGoogleDrive => 'Sandaran ke Google Drive';

  @override
  String get exportGenerating => 'Menjana laporan...';

  @override
  String get milestoneTitle => 'Perkembangan';

  @override
  String get milestoneTabAchieved => 'Tercapai';

  @override
  String get milestoneTabUpcoming => 'Akan datang';

  @override
  String get milestoneCustomAdd => 'Perkembangan tersuai';

  @override
  String get milestoneDeleteTitle => 'Padam perkembangan?';

  @override
  String get milestoneEdit => 'Sunting perkembangan';

  @override
  String get milestoneAdd => 'Tambah perkembangan';

  @override
  String get milestoneName => 'Nama perkembangan *';

  @override
  String get milestoneDate => 'Tarikh tercapai';

  @override
  String get milestoneNotes => 'Catatan (pilihan)';

  @override
  String get milestoneNotesHint => 'Sebarang butiran yang perlu diingat...';

  @override
  String get milestoneNoAchieved => 'Tiada perkembangan yang direkod lagi.';

  @override
  String get milestoneAllDone => 'Semua perkembangan pratetap tercapai!';

  @override
  String get milestoneFirstSmile => 'Senyuman pertama';

  @override
  String get milestoneFirstLaugh => 'Ketawa pertama';

  @override
  String get milestoneFirstTooth => 'Gigi pertama';

  @override
  String get milestoneRolledBackTummy => 'Berguling dari belakang ke perut';

  @override
  String get milestoneRolledTummyBack => 'Berguling dari perut ke belakang';

  @override
  String get milestoneSatUnsupported => 'Duduk tanpa sokongan';

  @override
  String get milestoneStartedCrawling => 'Mula merangkak';

  @override
  String get milestonePulledToStand => 'Berdiri sambil berpegang';

  @override
  String get milestoneFirstSteps => 'Langkah pertama';

  @override
  String get milestoneFirstWord => 'Perkataan pertama';

  @override
  String get milestoneFirstSolidFood => 'Makanan pejal pertama';

  @override
  String get milestoneFirstHaircut => 'Potong rambut pertama';

  @override
  String get milestoneSleptThroughNight => 'Tidur sepanjang malam';

  @override
  String get milestoneWavedBye => 'Lambai tangan selamat tinggal';

  @override
  String get milestoneClappedHands => 'Bertepuk tangan';

  @override
  String get milestoneFirstBirthday => 'Hari jadi pertama';

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
  String get settingsVolumeUnit => 'Milk volume unit';

  @override
  String get settingsLanguage => 'Bahasa';

  @override
  String get settingsNotifications => 'Pemberitahuan & peringatan';

  @override
  String get settingsExport => 'Eksport & sandaran';

  @override
  String get settingsTips => 'Petua';

  @override
  String get tipSwitchBabies => 'Tukar antara bayi';

  @override
  String get tipSwitchBabiesDesc => 'Ketik avatar bayi di bahagian atas untuk bertukar atau menambah profil bayi.';

  @override
  String get tipSwipeDelete => 'Leret ke kiri untuk memadam';

  @override
  String get tipSwipeDeleteDesc => 'Berfungsi pada jubin hari dan entri individu.';

  @override
  String get tipTapToEdit => 'Ketik mana-mana entri untuk menyuntingnya';

  @override
  String get tipMultipleFeeds => 'Log berbilang sesi penyusuan';

  @override
  String get tipMultipleFeedsDesc => 'Dalam borang penyusuan, ketik \"Tambah sesi penyusuan lain\" untuk log menyusu terus + botol sekaligus.';

  @override
  String get tipExportData => 'Eksport data';

  @override
  String get tipExportDataDesc => 'Gunakan ikon kongsi di Laman Utama untuk mengeksport semua data sebagai JSON.';

  @override
  String get babiesTitle => 'Bayi';

  @override
  String get addBaby => 'Tambah bayi';

  @override
  String get editProfile => 'Sunting profil';

  @override
  String get babyNameRequired => 'Nama *';

  @override
  String get babyDobOptional => 'Tarikh lahir (pilihan)';

  @override
  String babyBornOn(String date) {
    return 'Lahir $date';
  }

  @override
  String get genderUnknown => 'Tidak diketahui';

  @override
  String get genderBoy => 'Lelaki';

  @override
  String get genderGirl => 'Perempuan';

  @override
  String get cannotDeleteOnlyProfile => 'Tidak boleh memadam satu-satunya profil bayi.';

  @override
  String deleteProfileTitle(String name) {
    return 'Padam $name?';
  }

  @override
  String get deleteProfileContent => 'Semua data untuk bayi ini akan dipadam secara kekal.';

  @override
  String get graphsTitle => 'Graf';

  @override
  String get graphsTabDaily => 'Harian';

  @override
  String get graphsTabGrowth => 'Pertumbuhan';

  @override
  String get graphsTabHealth => 'Kesihatan';

  @override
  String get graphsTabWho => 'Carta WHO';

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
  String get graphsFeedsPerDay => 'Penyusuan per hari';

  @override
  String get graphsDiapersPerDay => 'Lampin per hari';

  @override
  String get graphsMilkPerDay => 'Susu per hari (ml)';

  @override
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

  @override
  String get graphsSleepPerDay => 'Tidur per hari (jam)';

  @override
  String get graphsWeightOverTime => 'Berat badan mengikut masa';

  @override
  String get graphsTempOverTime => 'Suhu mengikut masa';

  @override
  String graphsMaxLabel(String value) {
    return 'Maks: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Min: $value';
  }

  @override
  String get graphsNoWeightData => 'Tiada entri berat badan lagi.\nLog berat dari entri hari ini.';

  @override
  String get graphsNoTempData => 'Tiada entri suhu lagi.\nLog suhu dari mana-mana hari.';

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
    return 'Ubat: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'Lawatan';

  @override
  String doctorVisitLabel(String reason) {
    return 'Lawatan doktor — $reason';
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
  String get doctorVisitNoDoctorRecorded => 'Tiada doktor direkodkan';

  @override
  String get summaryPoosLabel => 'Berak';

  @override
  String get summaryPeesLabel => 'Kencing';

  @override
  String get summaryMilkLabel => 'Susu ml';

  @override
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

  @override
  String get summaryBreastLabel => 'Susu ibu min';

  @override
  String get summarySleepLabel => 'Tidur';

  @override
  String get settingsOledMode => 'OLED (hitam pekat)';

  @override
  String get settingsOledModeDesc => 'Gunakan latar belakang hitam pekat untuk menjimatkan bateri pada skrin OLED';

  @override
  String get settingsImmersiveMode => 'Mod mendalam';

  @override
  String get settingsImmersiveModeDesc => 'Sembunyikan bar status dan navigasi sistem';

  @override
  String get navVaccinationsEntry => 'Vaksinasi';

  @override
  String get whoChartsEntry => 'Carta pertumbuhan WHO';

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

  @override
  String get feedAmountOz => 'Amount (oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'Remind me $interval after the last feed';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'Remind me $interval after the last diaper';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'Every $interval';
  }

  @override
  String get notifIntervalTitle => 'Reminder interval';

  @override
  String get notifIntervalHours => 'Hours';

  @override
  String get notifIntervalMinutes => 'Minutes';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'At least $minutes minutes';
  }

  @override
  String get settingsFeeding => 'Feeding';

  @override
  String get settingsTrackBottles => 'Track bottles';

  @override
  String get settingsTrackBottlesDesc => 'Pick which bottle was used, and how much was prepared vs drunk';

  @override
  String get bottlesTitle => 'My bottles';

  @override
  String get bottlesEmpty => 'No bottles yet.\nAdd the bottles you use so you can pick one when logging a feed.';

  @override
  String get bottleAdd => 'Add bottle';

  @override
  String get bottleEdit => 'Edit bottle';

  @override
  String get bottleLabel => 'Label / number (e.g. #3)';

  @override
  String get bottleBrand => 'Brand / type (optional)';

  @override
  String get bottleCapacity => 'Capacity (optional)';

  @override
  String get bottleNipple => 'Nipple size / flow (optional)';

  @override
  String get bottleMaterial => 'Material';

  @override
  String get bottleRetired => 'Retired';

  @override
  String get bottleRetire => 'Retire';

  @override
  String get bottleUnretire => 'Use again';

  @override
  String bottleDeleteTitle(String name) {
    return 'Delete $name?';
  }

  @override
  String get bottleDeleteBody => 'Past feeds keep their amounts but will no longer show this bottle. To hide it from the picker but keep history, use Retire instead.';

  @override
  String get feedPrepared => 'Prepared';

  @override
  String get feedDrank => 'Drank';

  @override
  String feedLeftover(String amount) {
    return '$amount left over';
  }

  @override
  String get feedDrankMoreThanPrepared => 'More than was prepared?';

  @override
  String get feedWhichBottle => 'Which bottle?';

  @override
  String get feedNoBottlesYet => 'No bottles yet — add them in Settings → My bottles.';

  @override
  String get photoPrivacyTitle => 'Your photos stay on this phone';

  @override
  String get photoPrivacyBody => 'Photos are saved only inside this app on this device. The app has no internet access, so nothing is ever uploaded or shared unless you export a backup yourself.\n\nAndroid may ask for camera access the first time you take a photo.';

  @override
  String get photoPrivacyContinue => 'Continue';

  @override
  String get photoTakePhoto => 'Take a photo';

  @override
  String get photoChooseFromGallery => 'Choose from gallery';

  @override
  String get photoCaption => 'Caption';

  @override
  String get photoCompare => 'First vs latest';

  @override
  String get photoAddOtherDay => 'Add for another day';

  @override
  String get photoEmpty => 'No photos yet.\nTake one photo a day and watch your baby grow.';

  @override
  String get photoToday => 'Today\'s photo';

  @override
  String get photoAddToday => 'Add today\'s photo';

  @override
  String get photoReplace => 'Replace';

  @override
  String get photoDeleteTitle => 'Delete this photo?';

  @override
  String get ageBeforeBirth => 'Before birth';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days old',
      one: '1 day old',
      zero: 'Birth day',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months mo $days d';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years yr $months mo';
  }

  @override
  String get navMemories => 'Memories';

  @override
  String get memoriesTabPhotos => 'Photos';

  @override
  String get milestoneNoAchievedHint => 'Tap \"Upcoming\" to log a preset,\nor use the button below for a custom one.';

  @override
  String get skinTitle => 'Skin conditions';

  @override
  String get skinNew => 'New skin condition';

  @override
  String get skinEdit => 'Edit skin condition';

  @override
  String skinTabActive(int count) {
    return 'Active ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'Healed ($count)';
  }

  @override
  String get skinEmptyActive => 'No skin conditions being tracked.\nTap + to start one — you can add a photo each day to show the doctor how it\'s changing.';

  @override
  String get skinEmptyHealed => 'Nothing healed yet.';

  @override
  String get skinUpdateDue => 'Update today';

  @override
  String skinSince(String date) {
    return 'Since $date';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return 'Healed $date';
  }

  @override
  String skinReminderAt(String time) {
    return 'Daily reminder at $time';
  }

  @override
  String get skinSeverityTrend => 'Severity over time';

  @override
  String get skinNoUpdates => 'No updates yet. Add today\'s to start the timeline.';

  @override
  String get skinExportPdf => 'Export for doctor (PDF)';

  @override
  String get skinMarkHealed => 'Mark healed';

  @override
  String get skinReopen => 'Mark active again';

  @override
  String get skinUpdateToday => 'Add today\'s update';

  @override
  String get skinEditToday => 'Edit today\'s update';

  @override
  String skinDeleteTitle(String name) {
    return 'Delete $name and all its updates?';
  }

  @override
  String get skinDeleteUpdateTitle => 'Delete this update?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'Treatment: $treatment';
  }

  @override
  String get skinName => 'Condition *';

  @override
  String get skinBodyArea => 'Where on the body?';

  @override
  String get skinBegan => 'Began on';

  @override
  String get skinRemindDaily => 'Remind me to update it daily';

  @override
  String get skinReminderTime => 'Reminder time';

  @override
  String get skinUpdateTitle => 'Skin update';

  @override
  String get skinSeverity => 'How does it look?';

  @override
  String get skinSeverity0 => '0 · Clear';

  @override
  String get skinSeverity1 => '1 · Mild';

  @override
  String get skinSeverity2 => '2 · Moderate';

  @override
  String get skinSeverity3 => '3 · Severe';

  @override
  String get skinSeverity4 => '4 · Very severe';

  @override
  String get skinTreatment => 'Treatment (optional)';

  @override
  String get skinTreatmentHint => 'e.g. moisturiser, hydrocortisone 1%';

  @override
  String get skinAddPhoto => 'Add a photo';

  @override
  String get skinCardNone => 'Track a rash, eczema or other skin condition day by day, with photos for the doctor';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count need today\'s update',
      one: '1 needs today\'s update',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'Preparing backup…';

  @override
  String get backupFailed => 'Couldn\'t create the backup.';

  @override
  String get backupSavedTo => 'Backup saved to:';

  @override
  String get backupShareSubject => 'Baby Tracker backup';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Includes $count photos.',
      one: 'Includes 1 photo.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'Feed';

  @override
  String get widgetStopFeed => 'Stop feed';

  @override
  String get widgetDiaper => 'Diaper';

  @override
  String get widgetSleep => 'Sleep';

  @override
  String get widgetWakeUp => 'Woke up';

  @override
  String widgetFeedingFor(String duration) {
    return 'Feeding $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'Fed $ago';
  }

  @override
  String get widgetNoFeedsYet => 'No feeds yet';

  @override
  String widgetChangedAgo(String ago) {
    return 'Changed $ago';
  }

  @override
  String get widgetNoDiapersYet => 'No diapers yet';

  @override
  String widgetAsleepFor(String duration) {
    return 'Asleep $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'Awake since $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Stop the sleep timer first';

  @override
  String get widgetStopFeedFirst => 'Stop the feeding timer first';
}
