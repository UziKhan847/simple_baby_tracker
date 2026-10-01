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
  String get exportJson => 'Eksport sandaran';

  @override
  String get exportJsonDesc => 'Semua data dan foto dalam satu fail .zip';

  @override
  String get exportPdf => 'Eksport sebagai PDF';

  @override
  String get exportPdfDesc => 'Ringkasan mudah dibaca untuk pakar pediatrik anda';

  @override
  String get importJson => 'Pulihkan sandaran';

  @override
  String get importJsonDesc => 'Daripada sandaran .zip (atau eksport .json lama)';

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
  String get settingsVolumeUnit => 'Unit isi padu susu';

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
  String get tipExportDataDesc => 'Ketik ikon kongsi di Utama untuk menyandarkan semua data dan foto dalam satu fail.';

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
  String get graphsMilkPerDayMl => 'Susu sehari (ml)';

  @override
  String get graphsMilkPerDayOz => 'Susu sehari (oz)';

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
  String get summaryMilkLabelMl => 'Susu ml';

  @override
  String get summaryMilkLabelOz => 'Susu oz';

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
  String get medicationEditTitle => 'Edit ubat';

  @override
  String get medicationLogTitle => 'Log ubat';

  @override
  String get medicationYourCourses => 'Rawatan anda';

  @override
  String get medicationManageCourses => 'Urus rawatan';

  @override
  String get medicationNameRequired => 'Nama ubat *';

  @override
  String get medicationDosageWarning => 'Sentiasa ikut dos mengikut berat/umur. Jangan melebihi kekerapan yang disyorkan.';

  @override
  String get medicationNotesOptional => 'Nota (pilihan)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minit lalu',
      one: '1 minit lalu',
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
    return 'Kali terakhir diberi $ago';
  }

  @override
  String get medicationNeverGiven => 'Belum diberi';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dos hari ini',
      one: '1 dos hari ini',
      zero: 'Tiada dos hari ini',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'Dos seterusnya hanya boleh diberi $hours jam selepas dos terakhir';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'Sudah mencapai had $max/hari untuk rawatan ini';
  }

  @override
  String get medicationEditCourse => 'Edit rawatan';

  @override
  String get medicationNewCourse => 'Rawatan baharu';

  @override
  String get medicationReasonOptional => 'Sebab (pilihan)';

  @override
  String get medicationIntervalHoursOptional => 'Ulang setiap (jam, pilihan)';

  @override
  String get medicationMaxPerDayOptional => 'Maks. dos/hari (pilihan)';

  @override
  String get medicationRemindNextDose => 'Ingatkan saya apabila tiba masa dos seterusnya';

  @override
  String medicationEndCourseTitle(String name) {
    return 'Tamatkan $name?';
  }

  @override
  String get medicationEndCoursePrompt => 'Bagaimana hasilnya?';

  @override
  String get medicationDeleteCourseTitle => 'Padam rawatan ini?';

  @override
  String get medicationResultWorked => 'Berkesan';

  @override
  String get medicationResultPartlyWorked => 'Agak berkesan';

  @override
  String get medicationResultDidntWork => 'Tidak berkesan';

  @override
  String get medicationResultSideEffects => 'Kesan sampingan';

  @override
  String get medicationResultNone => 'Tidak dinilai';

  @override
  String get medicationsTitle => 'Ubat-ubatan';

  @override
  String medicationActiveTab(int count) {
    return 'Aktif ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'Lepas ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'Tiada rawatan aktif.\nMulakan satu dengan butang +.';

  @override
  String get medicationNoPastCourses => 'Belum ada rawatan lepas.';

  @override
  String medicationTimesGiven(int count) {
    return 'Diberi $count×';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'Terakhir: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'Seterusnya $time';
  }

  @override
  String get medicationEndCourse => 'Tamatkan rawatan';

  @override
  String feedLastSideHint(String side) {
    return 'Kali lepas: $side';
  }

  @override
  String get feedSideLeft => 'Kiri';

  @override
  String get feedSideRight => 'Kanan';

  @override
  String get feedSideBoth => 'Kedua-dua';

  @override
  String get feedSideLeftMinutes => 'Kiri (min)';

  @override
  String get feedSideRightMinutes => 'Kanan (min)';

  @override
  String get timeAgoJustNow => 'Baru sahaja';

  @override
  String get timeUntilOverdue => 'Lewat';

  @override
  String timeUntilMinutes(int count) {
    return 'dalam $count min';
  }

  @override
  String timeUntilHours(int count) {
    return 'dalam $count jam';
  }

  @override
  String timeUntilDays(int count) {
    return 'dalam $count hari';
  }

  @override
  String get timerDiscardTitle => 'Buang pemasa ini?';

  @override
  String get timerDiscard => 'Buang';

  @override
  String timerFeedingRunning(String side) {
    return 'Menyusu · $side';
  }

  @override
  String get timerSleepRunning => 'Pemasa tidur berjalan';

  @override
  String get timerSwitchSide => 'Tukar sisi';

  @override
  String get timerStop => 'Henti';

  @override
  String get sinceLastFeed => 'Penyusuan terakhir';

  @override
  String get sinceLastDiaper => 'Lampin terakhir';

  @override
  String get sinceAwake => 'Berjaga';

  @override
  String get sinceAsleep => 'Tidur';

  @override
  String nextDoseDue(String name) {
    return 'Masa untuk $name';
  }

  @override
  String get weighConditionNaked => 'Tanpa pakaian';

  @override
  String get weighConditionDiaper => 'Lampin sahaja';

  @override
  String get weighConditionLightClothes => 'Pakaian nipis';

  @override
  String get weighConditionDressed => 'Berpakaian';

  @override
  String get weighCondition => 'Ditimbang dengan';

  @override
  String get growthMeasurementsOptional => 'Ukuran lain (pilihan)';

  @override
  String get growthHeightCm => 'Tinggi (cm)';

  @override
  String get growthHeadCm => 'Lilitan kepala (cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'Kali lepas ditimbang: $condition — perbezaannya mungkin bukan hanya kerana pertumbuhan';
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
  String get growthHeightOverTime => 'Tinggi dari semasa ke semasa';

  @override
  String get growthHeadOverTime => 'Lilitan kepala dari semasa ke semasa';

  @override
  String get graphsRecentWeighIns => 'Timbangan terkini';

  @override
  String get solidsAmountFewSpoons => 'Beberapa sudu';

  @override
  String get solidsAmountHalf => 'Separuh hidangan';

  @override
  String get solidsAmountFull => 'Satu hidangan penuh';

  @override
  String get solidsAmountTaste => 'Hanya merasa';

  @override
  String get solidsReactionMild => 'Reaksi ringan';

  @override
  String get solidsReactionAllergic => 'Reaksi alahan';

  @override
  String get solidsReactionNone => 'Tiada reaksi';

  @override
  String get solidsEditTitle => 'Edit makanan pejal';

  @override
  String get solidsLogTitle => 'Log makanan pejal';

  @override
  String get solidsFoodsLabel => 'Makanan';

  @override
  String get solidsAddFoodHint => 'Tambah makanan';

  @override
  String get solidsAmount => 'Jumlah';

  @override
  String get solidsLiked => 'Adakah si kecil suka?';

  @override
  String get solidsReaction => 'Reaksi';

  @override
  String get solidsNotesOptional => 'Nota (pilihan)';

  @override
  String get foodsTitle => 'Makanan yang dicuba';

  @override
  String get foodsEmpty => 'Belum ada makanan pejal dilog.';

  @override
  String get foodsAllergensNotYet => 'Alergen biasa yang belum diperkenalkan';

  @override
  String foodsTriedCount(int count) {
    return '$count makanan dicuba';
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
  String get entryTypeSolids => 'Makanan pejal';

  @override
  String get feedAmountOz => 'Jumlah (oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'Ingatkan saya $interval selepas penyusuan terakhir';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'Ingatkan saya $interval selepas lampin terakhir';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'Setiap $interval';
  }

  @override
  String get notifIntervalTitle => 'Selang peringatan';

  @override
  String get notifIntervalHours => 'Jam';

  @override
  String get notifIntervalMinutes => 'Minit';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'Sekurang-kurangnya $minutes minit';
  }

  @override
  String get settingsFeeding => 'Penyusuan';

  @override
  String get settingsTrackBottles => 'Jejak botol';

  @override
  String get settingsTrackBottlesDesc => 'Pilih botol yang digunakan, dan berapa banyak yang disediakan berbanding diminum';

  @override
  String get bottlesTitle => 'Botol saya';

  @override
  String get bottlesEmpty => 'Belum ada botol.\nTambah botol yang anda guna supaya boleh memilihnya semasa log penyusuan.';

  @override
  String get bottleAdd => 'Tambah botol';

  @override
  String get bottleEdit => 'Edit botol';

  @override
  String get bottleLabel => 'Label / nombor (cth. #3)';

  @override
  String get bottleBrand => 'Jenama / jenis (pilihan)';

  @override
  String get bottleCapacity => 'Kapasiti (pilihan)';

  @override
  String get bottleNipple => 'Saiz / aliran puting (pilihan)';

  @override
  String get bottleMaterial => 'Bahan';

  @override
  String get bottleRetired => 'Tidak digunakan';

  @override
  String get bottleRetire => 'Berhenti guna';

  @override
  String get bottleUnretire => 'Guna semula';

  @override
  String bottleDeleteTitle(String name) {
    return 'Padam $name?';
  }

  @override
  String get bottleDeleteBody => 'Rekod penyusuan lepas mengekalkan jumlahnya tetapi tidak lagi menunjukkan botol ini. Untuk menyembunyikannya daripada pilihan tetapi kekalkan sejarah, gunakan Berhenti guna.';

  @override
  String get feedPrepared => 'Disediakan';

  @override
  String get feedDrank => 'Diminum';

  @override
  String feedLeftover(String amount) {
    return 'Baki $amount';
  }

  @override
  String get feedDrankMoreThanPrepared => 'Lebih daripada yang disediakan?';

  @override
  String get feedWhichBottle => 'Botol yang mana?';

  @override
  String get feedNoBottlesYet => 'Belum ada botol — tambah di Tetapan → Botol saya.';

  @override
  String get photoPrivacyTitle => 'Foto anda kekal di telefon ini';

  @override
  String get photoPrivacyBody => 'Foto disimpan hanya dalam aplikasi ini pada peranti ini. Aplikasi ini tiada akses internet, jadi tiada apa-apa dimuat naik atau dikongsi melainkan anda sendiri mengeksport sandaran.\n\nAndroid mungkin meminta akses kamera kali pertama anda mengambil foto.';

  @override
  String get photoPrivacyContinue => 'Teruskan';

  @override
  String get photoTakePhoto => 'Ambil foto';

  @override
  String get photoChooseFromGallery => 'Pilih dari galeri';

  @override
  String get photoCaption => 'Kapsyen';

  @override
  String get photoCompare => 'Pertama vs terkini';

  @override
  String get photoAddOtherDay => 'Tambah untuk hari lain';

  @override
  String get photoEmpty => 'Belum ada foto.\nAmbil satu foto sehari dan lihat si kecil membesar.';

  @override
  String get photoToday => 'Foto hari ini';

  @override
  String get photoAddToday => 'Tambah foto hari ini';

  @override
  String get photoReplace => 'Ganti';

  @override
  String get photoDeleteTitle => 'Padam foto ini?';

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
    return '$months bln $days h';
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
  String get milestoneNoAchievedHint => 'Ketik \"Akan datang\" untuk log yang sedia ada,\natau guna butang di bawah untuk yang tersuai.';

  @override
  String get skinTitle => 'Masalah kulit';

  @override
  String get skinNew => 'Masalah kulit baharu';

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
  String get skinEmptyActive => 'Tiada masalah kulit dijejak.\nKetik + untuk mula — anda boleh menambah foto setiap hari untuk menunjukkan perubahannya kepada doktor.';

  @override
  String get skinEmptyHealed => 'Belum ada yang sembuh.';

  @override
  String get skinUpdateDue => 'Kemas kini hari ini';

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
    return 'Peringatan harian pada $time';
  }

  @override
  String get skinSeverityTrend => 'Tahap keterukan dari semasa ke semasa';

  @override
  String get skinNoUpdates => 'Belum ada kemas kini. Tambah kemas kini hari ini untuk memulakan garis masa.';

  @override
  String get skinExportPdf => 'Eksport untuk doktor (PDF)';

  @override
  String get skinMarkHealed => 'Tandakan sembuh';

  @override
  String get skinReopen => 'Tandakan aktif semula';

  @override
  String get skinUpdateToday => 'Tambah kemas kini hari ini';

  @override
  String get skinEditToday => 'Edit kemas kini hari ini';

  @override
  String skinDeleteTitle(String name) {
    return 'Padam $name dan semua kemas kininya?';
  }

  @override
  String get skinDeleteUpdateTitle => 'Padam kemas kini ini?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'Rawatan: $treatment';
  }

  @override
  String get skinName => 'Masalah *';

  @override
  String get skinBodyArea => 'Di bahagian badan mana?';

  @override
  String get skinBegan => 'Bermula pada';

  @override
  String get skinRemindDaily => 'Ingatkan saya untuk mengemas kini setiap hari';

  @override
  String get skinReminderTime => 'Masa peringatan';

  @override
  String get skinUpdateTitle => 'Kemas kini kulit';

  @override
  String get skinSeverity => 'Bagaimana keadaannya?';

  @override
  String get skinSeverity0 => '0 · Bersih';

  @override
  String get skinSeverity1 => '1 · Ringan';

  @override
  String get skinSeverity2 => '2 · Sederhana';

  @override
  String get skinSeverity3 => '3 · Teruk';

  @override
  String get skinSeverity4 => '4 · Sangat teruk';

  @override
  String get skinTreatment => 'Rawatan (pilihan)';

  @override
  String get skinTreatmentHint => 'cth. pelembap, hidrokortison 1%';

  @override
  String get skinAddPhoto => 'Tambah foto';

  @override
  String get skinCardNone => 'Jejak ruam, ekzema atau masalah kulit lain hari demi hari, dengan foto untuk doktor';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count perlu kemas kini hari ini',
      one: '1 perlu kemas kini hari ini',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'Menyediakan sandaran…';

  @override
  String get backupFailed => 'Tidak dapat mencipta sandaran.';

  @override
  String get backupSavedTo => 'Sandaran disimpan ke:';

  @override
  String get backupShareSubject => 'Sandaran Baby Tracker';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Termasuk $count foto.',
      one: 'Termasuk 1 foto.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'Susu';

  @override
  String get widgetStopFeed => 'Henti susu';

  @override
  String get widgetDiaper => 'Lampin';

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
    return 'Disusukan $ago';
  }

  @override
  String get widgetNoFeedsYet => 'Belum menyusu';

  @override
  String widgetChangedAgo(String ago) {
    return 'Ditukar $ago';
  }

  @override
  String get widgetNoDiapersYet => 'Belum tukar lampin';

  @override
  String widgetAsleepFor(String duration) {
    return 'Tidur $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'Bangun $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Hentikan pemasa tidur dahulu';

  @override
  String get widgetStopFeedFirst => 'Hentikan pemasa penyusuan dahulu';

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
  String get foodDairy => 'Tenusu';

  @override
  String get foodWheat => 'Gandum';

  @override
  String get foodSoy => 'Soya';

  @override
  String get foodFish => 'Ikan';

  @override
  String get foodShellfish => 'Kerang-kerangan';

  @override
  String get foodTreeNuts => 'Kekacang pokok';

  @override
  String get foodSesame => 'Bijan';

  @override
  String get foodBanana => 'Pisang';

  @override
  String get foodAvocado => 'Avokado';

  @override
  String get foodSweetPotato => 'Keledek';

  @override
  String get foodRiceCereal => 'Bubur nasi';

  @override
  String get foodOatmeal => 'Oat';

  @override
  String get foodCarrot => 'Lobak merah';

  @override
  String get foodApple => 'Epal';

  @override
  String get foodPea => 'Kacang pis';

  @override
  String get symptomRash => 'Ruam';

  @override
  String get symptomHives => 'Gatal-gatal (urtikaria)';

  @override
  String get symptomVomiting => 'Muntah';

  @override
  String get symptomDiarrhea => 'Cirit-birit';

  @override
  String get symptomSwelling => 'Bengkak';

  @override
  String get doseUnitDrops => 'titis';

  @override
  String get doseUnitTablets => 'tablet';

  @override
  String get bottleMaterialPlastic => 'Plastik';

  @override
  String get bottleMaterialGlass => 'Kaca';

  @override
  String get bottleMaterialSilicone => 'Silikon';

  @override
  String get bottleMaterialSteel => 'Keluli tahan karat';

  @override
  String get visitReasonRoutine => 'Pemeriksaan rutin';

  @override
  String get visitReasonSick => 'Sakit';

  @override
  String get visitReasonVaccination => 'Vaksinasi';

  @override
  String get visitReasonSpecialist => 'Pakar';

  @override
  String get visitReasonFollowUp => 'Susulan';

  @override
  String get visitReasonOther => 'Lain-lain';

  @override
  String get pooColourPale => 'Pucat';

  @override
  String get noteTagHappyDay => 'Hari gembira';

  @override
  String get noteTagSleptWell => 'Tidur lena';

  @override
  String get noteTagFussy => 'Meragam';

  @override
  String get noteTagNotWell => 'Kurang sihat';

  @override
  String get noteTagFirstTime => 'Kali pertama!';

  @override
  String get noteTagTeething => 'Tumbuh gigi';

  @override
  String get noteTagGrowthSpurt => 'Lonjakan pertumbuhan';

  @override
  String get noteTagMilestone => 'Pencapaian';

  @override
  String get tummyTimeNotesHint => 'cth. seronok, meragam...';

  @override
  String get skinSuggestEczema => 'Ekzema';

  @override
  String get skinSuggestDiaperRash => 'Ruam lampin';

  @override
  String get skinSuggestCradleCap => 'Kerak kepala (cradle cap)';

  @override
  String get skinSuggestBabyAcne => 'Jerawat bayi';

  @override
  String get skinSuggestHeatRash => 'Ruam panas';

  @override
  String get skinSuggestDrySkin => 'Kulit kering';

  @override
  String get bodyFace => 'Muka';

  @override
  String get bodyScalp => 'Kulit kepala';

  @override
  String get bodyNeck => 'Leher';

  @override
  String get bodyChest => 'Dada';

  @override
  String get bodyBack => 'Belakang';

  @override
  String get bodyArms => 'Lengan';

  @override
  String get bodyHands => 'Tangan';

  @override
  String get bodyDiaperArea => 'Kawasan lampin';

  @override
  String get bodyLegs => 'Kaki';

  @override
  String get bodyFeet => 'Tapak kaki';

  @override
  String get medSuggestGripeWater => 'Air kolik (gripe water)';

  @override
  String get medSuggestVitaminD => 'Vitamin D';

  @override
  String get medSuggestIronDrops => 'Titisan zat besi';

  @override
  String get medSuggestAntibiotic => 'Antibiotik';

  @override
  String get medSuggestProbiotic => 'Probiotik';

  @override
  String vaccinePageTitle(String name) {
    return '$name — Vaksinasi';
  }

  @override
  String get vaccineDeleteTitle => 'Padam rekod vaksin?';

  @override
  String get vaccineSiteHint => 'cth. peha kiri';

  @override
  String get vaccineNotesHint => 'cth. demam ringan, meragam, tiada reaksi...';

  @override
  String get vaccineNoGivenHint => 'Guna butang + atau ketik \"Tandakan sudah diberi\" dalam tab Jadual.';

  @override
  String get vaccineAgeBirth => 'Semasa lahir';

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
  String get whoChartFor => 'Carta untuk:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 bulan)';
  }

  @override
  String get whoNoDataPoints => 'Belum ada data. Log ukuran untuk melihat si kecil pada carta.';

  @override
  String get whoLatestMeasurement => 'Ukuran terkini';

  @override
  String whoApproxPercentile(String value) {
    return 'Anggaran persentil: $value';
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
  String get whoDisclaimer => 'Carta ini untuk makluman sahaja. Sentiasa minta pakar pediatrik mentafsirnya.';

  @override
  String get whoMedian => 'P50 (median)';

  @override
  String get notifChannelName => 'Peringatan Baby Tracker';

  @override
  String get notifChannelDesc => 'Peringatan penyusuan, lampin, ubat dan pemeriksaan kulit';

  @override
  String get notifFeedTitle => 'Masa untuk menyusu!';

  @override
  String notifFeedBody(String interval) {
    return 'Tiada penyusuan dilog dalam $interval yang lalu.';
  }

  @override
  String get notifDiaperTitle => 'Periksa lampin!';

  @override
  String notifDiaperBody(String interval) {
    return 'Tiada tukar lampin dilog dalam $interval yang lalu.';
  }

  @override
  String notifDoseTitle(String name) {
    return 'Masa untuk dos: $name';
  }

  @override
  String notifDoseBody(String name) {
    return 'Sudah tiba masa untuk dos $name seterusnya.';
  }

  @override
  String notifSkinTitle(String name) {
    return 'Periksa kulit: $name';
  }

  @override
  String get notifSkinBody => 'Tambah kemas kini hari ini (dan foto jika mahu).';

  @override
  String get timerFeedingNotif => 'Pemasa penyusuan berjalan';

  @override
  String intervalMinutes(String m) {
    return '$m min';
  }

  @override
  String intervalHours(String h) {
    return '$h jam';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h jam $m min';
  }

  @override
  String get settingsRtlActive => 'Susun atur kanan-ke-kiri aktif';

  @override
  String get measurementHeightIn => 'Panjang / tinggi (in)';

  @override
  String get measurementHeadIn => 'Lilitan kepala (in)';

  @override
  String get growthHeightIn => 'Tinggi (in)';

  @override
  String get growthHeadIn => 'Lilitan kepala (in)';

  @override
  String growthHeightValueIn(String value) {
    return '$value in';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'Kepala $value in';
  }

  @override
  String get settingsLengthUnitNote => 'Panjang mengikut unit berat (cm dengan kg, inci dengan lbs)';

  @override
  String get formulaStoreBrand => 'Jenama kedai';
}
