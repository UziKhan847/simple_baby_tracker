// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Bebek Takibi';

  @override
  String get navHome => 'Ana Sayfa';

  @override
  String get navGraphs => 'Grafikler';

  @override
  String get navMilestones => 'Milestones';

  @override
  String get navSettings => 'Ayarlar';

  @override
  String get actionCancel => 'İptal';

  @override
  String get actionSave => 'Kaydet';

  @override
  String get actionUpdate => 'Güncelle';

  @override
  String get actionDelete => 'Sil';

  @override
  String get actionAdd => 'Ekle';

  @override
  String get actionEdit => 'Düzenle';

  @override
  String get actionClose => 'Kapat';

  @override
  String get actionExport => 'Verileri Dışa Aktar';

  @override
  String get actionAddDay => 'Gün Ekle';

  @override
  String get actionLog => 'Log';

  @override
  String get cannotUndo => 'Bu işlem geri alınamaz';

  @override
  String get noData => 'Veri yok';

  @override
  String get noNotes => 'No notes';

  @override
  String get noDetails => 'Detay yok';

  @override
  String get optional => '(optional)';

  @override
  String get homeTitle => 'Takip';

  @override
  String get feedsToday => 'Bugünkü Beslemeler';

  @override
  String get diapersToday => 'Bugünkü Bebek Bezleri';

  @override
  String get sleepToday => 'Bugünkü Uyku';

  @override
  String todayLabel(String date) {
    return 'Bugün — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count olay',
      one: '1 olay',
      zero: 'Olay yok',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Gün silinsin mi?';

  @override
  String deleteDayContent(String date) {
    return '$date ve tüm girişleri silinsin mi? Bu işlem geri alınamaz';
  }

  @override
  String get rashRecorded => 'Pişik kaydedildi';

  @override
  String get noEntriesYet => 'Henüz giriş yok';

  @override
  String get addEntry => 'Giriş Ekle';

  @override
  String get deleteEntryTitle => 'Giriş silinsin mi?';

  @override
  String get entryTypeDiaper => 'Bez Değiştirme';

  @override
  String get entryTypeFeeding => 'Besleme';

  @override
  String get entryTypeSleep => 'Uyku';

  @override
  String get entryTypeTemperature => 'Ateş';

  @override
  String get entryTypeWeight => 'Kilo';

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
  String get diaperPeePoo => 'Bez — çiş + kaka';

  @override
  String get diaperPee => 'Bez — sadece çiş';

  @override
  String get diaperPoo => 'Bez — sadece kaka';

  @override
  String get diaperChange => 'Bez Değiştirme';

  @override
  String get editDiaper => 'Bezi Düzenle';

  @override
  String get diaperContents => 'İçerik';

  @override
  String get diaperNone => 'Yok';

  @override
  String get diaperPeeLabel => 'Çiş';

  @override
  String get diaperPooLabel => 'Kaka';

  @override
  String get diaperBoth => 'İkisi de';

  @override
  String get diaperConsistency => 'Kıvam';

  @override
  String get consistencyHard => 'Sert / Topaklı';

  @override
  String get consistencyHardHint => 'Kabızlık';

  @override
  String get consistencyFirm => 'Şekilli';

  @override
  String get consistencyFirmHint => 'Hafif sert';

  @override
  String get consistencyNormal => 'Normal';

  @override
  String get consistencyNormalHint => 'Sağlıklı';

  @override
  String get consistencySoft => 'Yumuşak';

  @override
  String get consistencySoftHint => 'Hafif yumuşak';

  @override
  String get consistencyLoose => 'Macunsu / Yarı sıvı';

  @override
  String get consistencyLooseHint => 'Takip et';

  @override
  String get consistencyWatery => 'Sulu';

  @override
  String get consistencyWateryHint => 'İshal';

  @override
  String get warnConstipation => 'Kabızlık belirtileri — yakından izle';

  @override
  String get warnDiarrhea => 'İshal belirtileri — yakından izle';

  @override
  String get pooColourLabel => 'Renk (seçmek için dokun)';

  @override
  String get pooColourAbnormal => '⚠️ Anormal (soluk)';

  @override
  String get pooColourNormal => '✅ Normal';

  @override
  String pooColourSelected(String label) {
    return 'Seçilen: $label';
  }

  @override
  String get diaperSize => 'Bez Numarası';

  @override
  String get diaperBrand => 'Marka';

  @override
  String get diaperBrandCustomLabel => 'Marka adı';

  @override
  String get rashPresent => 'Pişik var';

  @override
  String get rashPresentHint => 'Kızarıklık, tahriş veya pişik';

  @override
  String get rashCreamUsed => 'Krem kullanıldı';

  @override
  String get rashCreamCustomLabel => 'Krem / merhem adı';

  @override
  String get rashFollowUpTitle => '⚠️ Pişik takibi';

  @override
  String get rashFollowUpQuestion => 'Son bezde pişik kaydedildi. İyileşme oldu mu?';

  @override
  String get rashImproved => 'Evet, iyileşti';

  @override
  String get rashNoChange => 'Değişiklik yok / kötüleşti';

  @override
  String get addFeeding => 'Besleme Ekle';

  @override
  String get editFeeding => 'Beslemeyi Düzenle';

  @override
  String feedLabel(int number) {
    return 'Besleme $number';
  }

  @override
  String get feedModeBottle => 'Biberon';

  @override
  String get feedModeSuckle => 'Emzirme';

  @override
  String get feedAmountMl => 'Miktar (ml)';

  @override
  String get feedType => 'Tür';

  @override
  String get feedBreastMilk => 'Anne sütü';

  @override
  String get feedFormula => 'Mama';

  @override
  String get feedFormulaBrand => 'Mama markası';

  @override
  String get feedFormulaBrandCustom => 'Marka adı';

  @override
  String get feedDurationMinutes => 'Süre (dakika)';

  @override
  String get addAnotherFeed => 'Başka bir besleme ekle';

  @override
  String get bottleBreastMilk => 'Biberon — anne sütü';

  @override
  String get bottleFormula => 'Biberon — mama';

  @override
  String get breastfeedingSuckle => 'Emzirme (direkt)';

  @override
  String get logSleep => 'Uyku Kaydet';

  @override
  String get editSleep => 'Uykuyu Düzenle';

  @override
  String get sleepStart => 'Uyku başlangıcı';

  @override
  String get sleepWakeUp => 'Uyanma';

  @override
  String sleepDuration(String duration) {
    return 'Süre: $duration';
  }

  @override
  String get sleepInvalidTimes => 'Geçersiz saatler';

  @override
  String get sleepWrapsNextDay => '(ertesi güne geçer)';

  @override
  String get sleepNotes => 'Notlar (isteğe bağlı)';

  @override
  String get sleepNotesHint => 'Örn: huzursuz, kısa süreli uyanma...';

  @override
  String get sleepNoNotes => 'Not yok';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}s ${m}dk';
  }

  @override
  String get logTemperature => 'Ateş Kaydet';

  @override
  String get editTemperature => 'Ateşi Düzenle';

  @override
  String get temperatureLabel => 'Ateş';

  @override
  String get tempSeverityLow => 'Düşük ateş — izle';

  @override
  String get tempSeverityNormal => 'Normal ateş';

  @override
  String get tempSeverityElevated => 'Hafif yüksek — yakından izle';

  @override
  String get tempSeverityFever => 'Ateş — doktora danış';

  @override
  String get tempReference => 'Ateş referansı';

  @override
  String get tempRefLow => '< 36,0 °C / 96,8 °F';

  @override
  String get tempRefNormal => '36,0 – 37,4 °C / 96,8 – 99,3 °F';

  @override
  String get tempRefElevated => '37,5 – 38,4 °C / 99,5 – 101,1 °F';

  @override
  String get tempRefFever => '≥ 38,5 °C / 101,3 °F';

  @override
  String get tempFeverWarning => '⚠️ 3 aydan küçük bebeklerde ateş durumunda mutlaka çocuk doktoruna danışın';

  @override
  String get tempLow => 'Düşük';

  @override
  String get tempNormal => 'Normal';

  @override
  String get tempElevated => 'Yüksek';

  @override
  String get tempFever => 'Ateş';

  @override
  String get tempLatest => 'Son ateş';

  @override
  String get tempSummary => 'Ateş özeti';

  @override
  String get tempFeverThreshold => 'Ateş eşiği';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
      one: '1 gün',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'Kilo Kaydet';

  @override
  String get editWeight => 'Kiloyu Düzenle';

  @override
  String get weightLabel => 'Kilo';

  @override
  String weightGain(String amount) {
    return '+$amount artış';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount azalma';
  }

  @override
  String weightPrevious(String weight) {
    return 'Önceki: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'Son kayıt: $weight ($date)';
  }

  @override
  String get weightLatest => 'Son kilo';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount bu dönemde';
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
  String get settingsTitle => 'Ayarlar';

  @override
  String get settingsAppearance => 'Görünüm';

  @override
  String get settingsDarkMode => 'Karanlık mod';

  @override
  String get settingsDarkActive => 'Karanlık tema aktif';

  @override
  String get settingsLightActive => 'Aydınlık tema aktif';

  @override
  String get settingsUnits => 'Birimler';

  @override
  String get settingsWeightUnit => 'Kilo birimi';

  @override
  String get settingsTempUnit => 'Ateş birimi';

  @override
  String get settingsLanguage => 'Dil';

  @override
  String get settingsNotifications => 'Notifications & reminders';

  @override
  String get settingsExport => 'Export & backup';

  @override
  String get settingsTips => 'İpuçları';

  @override
  String get tipSwitchBabies => 'Bebek değiştir';

  @override
  String get tipSwitchBabiesDesc => 'Bebek değiştirmek veya profil eklemek için üstteki bebek avatarına dokun';

  @override
  String get tipSwipeDelete => 'Silmek için sola kaydır';

  @override
  String get tipSwipeDeleteDesc => 'Gün kartlarında ve tek tek girişlerde çalışır';

  @override
  String get tipTapToEdit => 'Düzenlemek için herhangi bir girişe dokun';

  @override
  String get tipMultipleFeeds => 'Birden fazla besleme kaydet';

  @override
  String get tipMultipleFeedsDesc => 'Besleme formunda \"Başka bir besleme ekle\"ye dokunarak emzirme ve biberonu tek seferde kaydedebilirsin';

  @override
  String get tipExportData => 'Verileri dışa aktar';

  @override
  String get tipExportDataDesc => 'Ana sayfadaki paylaş simgesini kullanarak tüm verileri JSON olarak dışa aktar';

  @override
  String get babiesTitle => 'Bebekler';

  @override
  String get addBaby => 'Bebek Ekle';

  @override
  String get editProfile => 'Profili Düzenle';

  @override
  String get babyNameRequired => 'İsim *';

  @override
  String get babyDobOptional => 'Doğum tarihi (isteğe bağlı)';

  @override
  String babyBornOn(String date) {
    return '$date doğumlu';
  }

  @override
  String get genderUnknown => 'Belirtilmemiş';

  @override
  String get genderBoy => 'Erkek';

  @override
  String get genderGirl => 'Kız';

  @override
  String get cannotDeleteOnlyProfile => 'Tek bebek profili silinemez';

  @override
  String deleteProfileTitle(String name) {
    return '$name silinsin mi?';
  }

  @override
  String get deleteProfileContent => 'Bu bebeğin tüm verileri kalıcı olarak silinecek';

  @override
  String get graphsTitle => 'Grafikler';

  @override
  String get graphsTabDaily => 'Günlük';

  @override
  String get graphsTabGrowth => 'Büyüme';

  @override
  String get graphsTabHealth => 'Sağlık';

  @override
  String get graphsTabWho => 'WHO Charts';

  @override
  String get graphsTotalFeeds => 'Toplam besleme';

  @override
  String get graphsAvgPerDay => 'Günlük ort.';

  @override
  String get graphsTotalDiapers => 'Bez sayısı';

  @override
  String get graphsTotalMilk => 'Toplam süt';

  @override
  String get graphsTotalSleep => 'Toplam uyku';

  @override
  String get graphsAvgSleep => 'Günlük uyku ort.';

  @override
  String get graphsFeedsPerDay => 'Günde besleme sayısı';

  @override
  String get graphsDiapersPerDay => 'Günde bez sayısı';

  @override
  String get graphsMilkPerDay => 'Günde süt (ml)';

  @override
  String get graphsSleepPerDay => 'Günde uyku (saat)';

  @override
  String get graphsWeightOverTime => 'Zamanla kilo değişimi';

  @override
  String get graphsTempOverTime => 'Zamanla ateş değişimi';

  @override
  String graphsMaxLabel(String value) {
    return 'Maks: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Min: $value';
  }

  @override
  String get graphsNoWeightData => 'Henüz kilo girişi yok\nBir günün girişlerinden kilo ekleyin';

  @override
  String get graphsNoTempData => 'Henüz ateş girişi yok\nBir günden ateş ekleyin';

  @override
  String get timeLabel => 'Saat';

  @override
  String get noColourRecorded => 'Renk kaydedilmedi';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count günlük',
      one: '1 günlük',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aylık',
      one: '1 aylık',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years yaş $months ay';
  }
}
