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
  String get navMilestones => 'Gelişim Aşamaları';

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
  String get actionExport => 'Verileri dışa aktar';

  @override
  String get actionAddDay => 'Gün ekle';

  @override
  String get actionLog => 'Kaydet';

  @override
  String get cannotUndo => 'Bu işlem geri alınamaz.';

  @override
  String get noData => 'Veri yok';

  @override
  String get noNotes => 'Not yok';

  @override
  String get noDetails => 'Detay yok';

  @override
  String get optional => '(isteğe bağlı)';

  @override
  String get homeTitle => 'Takip';

  @override
  String get feedsToday => 'Bugünkü beslenmeler';

  @override
  String get diapersToday => 'Bugünkü bezler';

  @override
  String get sleepToday => 'Bugünkü uyku';

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
      zero: 'olay yok',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'Gün silinsin mi?';

  @override
  String deleteDayContent(String date) {
    return '$date ve içindeki tüm kayıtlar silinsin mi? Bu işlem geri alınamaz.';
  }

  @override
  String get rashRecorded => 'Pişik kaydedildi';

  @override
  String get noEntriesYet => 'Henüz kayıt yok';

  @override
  String get addEntry => 'Kayıt ekle';

  @override
  String get deleteEntryTitle => 'Kayıt silinsin mi?';

  @override
  String get entryTypeDiaper => 'Bez değiştirme';

  @override
  String get entryTypeFeeding => 'Beslenme';

  @override
  String get entryTypeSleep => 'Uyku';

  @override
  String get entryTypeTemperature => 'Ateş';

  @override
  String get entryTypeWeight => 'Kilo';

  @override
  String get entryTypeTummyTime => 'Yüzüstü zaman';

  @override
  String get entryTypeMedication => 'İlaç';

  @override
  String get entryTypeDoctorVisit => 'Doktor ziyareti';

  @override
  String get entryTypeNote => 'Günlük not / günlük';

  @override
  String get entryTypePumping => 'Sağma seansı';

  @override
  String get entryTypeBath => 'Banyo';

  @override
  String get diaperPeePoo => 'Bez — çiş + kaka';

  @override
  String get diaperPee => 'Bez — çiş';

  @override
  String get diaperPoo => 'Bez — kaka';

  @override
  String get diaperChange => 'Bez değiştir';

  @override
  String get editDiaper => 'Bezi düzenle';

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
  String get consistencyHard => 'Sert / topaklı';

  @override
  String get consistencyHardHint => 'Kabızlık';

  @override
  String get consistencyFirm => 'Katı';

  @override
  String get consistencyFirmHint => 'Hafif katı';

  @override
  String get consistencyNormal => 'Normal';

  @override
  String get consistencyNormalHint => 'Sağlıklı';

  @override
  String get consistencySoft => 'Yumuşak';

  @override
  String get consistencySoftHint => 'Hafif yumuşak';

  @override
  String get consistencyLoose => 'Sulu / lapa gibi';

  @override
  String get consistencyLooseHint => 'İzle';

  @override
  String get consistencyWatery => 'Sulu';

  @override
  String get consistencyWateryHint => 'İshal';

  @override
  String get warnConstipation => 'Kabızlık belirtileri — yakından izleyin';

  @override
  String get warnDiarrhea => 'İshal belirtileri — yakından izleyin';

  @override
  String get pooColourLabel => 'Renk (seçmek için dokunun)';

  @override
  String get pooColourAbnormal => '⚠️ Anormal (soluk)';

  @override
  String get pooColourNormal => '✅ Normal';

  @override
  String pooColourSelected(String label) {
    return 'Seçilen: $label';
  }

  @override
  String get diaperSize => 'Bez bedeni';

  @override
  String get diaperBrand => 'Marka';

  @override
  String get diaperBrandCustomLabel => 'Marka adı';

  @override
  String get rashPresent => 'Pişik var';

  @override
  String get rashPresentHint => 'Kızarıklık, tahriş veya pişik';

  @override
  String get rashCreamUsed => 'Pişik kremi kullanıldı';

  @override
  String get rashCreamCustomLabel => 'Krem / merhem adı';

  @override
  String get rashFollowUpTitle => '⚠️ Pişik takibi';

  @override
  String get rashFollowUpQuestion => 'Son bezde pişik kaydedilmişti. İyileşti mi?';

  @override
  String get rashImproved => 'Evet, iyileşti';

  @override
  String get rashNoChange => 'Değişiklik yok / kötüleşti';

  @override
  String get addFeeding => 'Beslenme ekle';

  @override
  String get editFeeding => 'Beslenmeyi düzenle';

  @override
  String feedLabel(int number) {
    return 'Beslenme $number';
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
  String get feedFormula => 'Formül mama';

  @override
  String get feedFormulaBrand => 'Formül mama markası';

  @override
  String get feedFormulaBrandCustom => 'Formül mama marka adı';

  @override
  String get feedDurationMinutes => 'Süre (dakika)';

  @override
  String get addAnotherFeed => 'Başka bir beslenme ekle';

  @override
  String get bottleBreastMilk => 'Biberon — anne sütü';

  @override
  String get bottleFormula => 'Biberon — formül mama';

  @override
  String get breastfeedingSuckle => 'Emzirme (direkt memeden)';

  @override
  String get logSleep => 'Uyku kaydet';

  @override
  String get editSleep => 'Uykuyu düzenle';

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
  String get sleepWrapsNextDay => '(ertesi güne sarar)';

  @override
  String get sleepNotes => 'Notlar (isteğe bağlı)';

  @override
  String get sleepNotesHint => 'örn. huzursuz, kısa süreli uyandı...';

  @override
  String get sleepNoNotes => 'Not yok';

  @override
  String sleepHoursShort(int h, int m) {
    return '${h}s ${m}d';
  }

  @override
  String get logTemperature => 'Ateş kaydet';

  @override
  String get editTemperature => 'Ateşi düzenle';

  @override
  String get temperatureLabel => 'Ateş';

  @override
  String get tempSeverityLow => 'Düşük ateş — izleyin';

  @override
  String get tempSeverityNormal => 'Normal ateş';

  @override
  String get tempSeverityElevated => 'Hafif yüksek — yakından izleyin';

  @override
  String get tempSeverityFever => 'Ateş — doktorunuza danışın';

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
  String get tempFeverWarning => '⚠️ 3 aydan küçük bebeklerde ateş durumunda mutlaka çocuk doktorunuza danışın.';

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
      zero: 'gün yok',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'Kilo kaydet';

  @override
  String get editWeight => 'Kiloyu düzenle';

  @override
  String get weightLabel => 'Kilo';

  @override
  String weightGain(String amount) {
    return '+$amount artış';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount kayıp';
  }

  @override
  String weightPrevious(String weight) {
    return 'Önceki: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'Son kayıt: $weight, $date';
  }

  @override
  String get weightLatest => 'Son kilo';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount süre içinde';
  }

  @override
  String get tummyTimeLog => 'Yüzüstü zaman kaydet';

  @override
  String get tummyTimeEdit => 'Yüzüstü zamanı düzenle';

  @override
  String get tummyTimeStart => 'Başlangıç saati';

  @override
  String get tummyTimeEnd => 'Bitiş saati';

  @override
  String get tummyTimeTip => 'Yüzüstü zaman boyun ve omuz kaslarını güçlendirir.';

  @override
  String get medicationLog => 'İlaç kaydet';

  @override
  String get medicationEdit => 'İlacı düzenle';

  @override
  String get medicationName => 'İlaç adı *';

  @override
  String get medicationDose => 'Doz';

  @override
  String get medicationUnit => 'Birim';

  @override
  String get medicationCommon => 'Yaygın ilaçlar';

  @override
  String get medicationWarning => 'Dozaj talimatlarını daima kilo/yaşa göre izleyin. Önerilen sıklığı aşmayın.';

  @override
  String get medicationNotes => 'Notlar (isteğe bağlı)';

  @override
  String get medicationNotesHint => 'örn. neden, reaksiyon...';

  @override
  String get doctorVisitLog => 'Doktor ziyareti';

  @override
  String get doctorVisitEdit => 'Doktor ziyaretini düzenle';

  @override
  String get doctorName => 'Doktor / klinik adı';

  @override
  String get doctorVisitReason => 'Ziyaret nedeni';

  @override
  String get doctorVisitMeasurements => 'Ölçümler (isteğe bağlı)';

  @override
  String get doctorVisitNotes => 'Notlar';

  @override
  String get doctorVisitNotesHint => 'örn. yapılan aşılar, doktor önerileri...';

  @override
  String get measurementWeightKg => 'Kilo (kg)';

  @override
  String get measurementWeightLbs => 'Kilo (lbs)';

  @override
  String get measurementHeightCm => 'Boy / uzunluk (cm)';

  @override
  String get measurementHeadCm => 'Baş çevresi (cm)';

  @override
  String get dailyNoteLog => 'Günlük not';

  @override
  String get dailyNoteEdit => 'Notu düzenle';

  @override
  String get dailyNoteTitle => 'Başlık (isteğe bağlı)';

  @override
  String get dailyNoteText => 'Not';

  @override
  String get dailyNoteHint => 'Bugün ne oldu? İlk kez döndü mü? Huzursuz sabah?';

  @override
  String get dailyNoteTags => 'Hızlı etiketler';

  @override
  String get pumpingLog => 'Sağma seansı kaydet';

  @override
  String get pumpingEdit => 'Sağma seansını düzenle';

  @override
  String get pumpingLeft => 'Sol göğüs (ml)';

  @override
  String get pumpingRight => 'Sağ göğüs (ml)';

  @override
  String get pumpingTotal => 'Toplam sağılan';

  @override
  String get pumpingDuration => 'Süre (dakika)';

  @override
  String get pumpingStored => 'Saklanan / dondurulan';

  @override
  String get pumpingNotes => 'Notlar (isteğe bağlı)';

  @override
  String get pumpingSessionTitle => 'Sağma';

  @override
  String pumpingTotalMl(int ml) {
    return 'Toplam $ml ml';
  }

  @override
  String get bathLog => 'Banyo kaydet';

  @override
  String get bathEdit => 'Banyoyu düzenle';

  @override
  String get bathType => 'Banyo türü';

  @override
  String get bathTypeSponge => 'Sünger banyosu';

  @override
  String get bathTypeTub => 'Küvet banyosu';

  @override
  String get bathTypeShower => 'Duş';

  @override
  String get bathNotes => 'Notlar (isteğe bağlı)';

  @override
  String get bathProducts => 'Kullanılan ürünler (isteğe bağlı)';

  @override
  String get vaccineTitle => 'Aşılar';

  @override
  String get vaccineTabGiven => 'Yapılanlar';

  @override
  String get vaccineTabSchedule => 'Takvim';

  @override
  String get vaccineLog => 'Aşı kaydet';

  @override
  String get vaccineEdit => 'Aşıyı düzenle';

  @override
  String get vaccineName => 'Aşı adı';

  @override
  String get vaccineBrand => 'Marka / üretici (isteğe bağlı)';

  @override
  String get vaccineDate => 'Yapıldığı tarih';

  @override
  String get vaccineDose => 'Doz numarası (isteğe bağlı)';

  @override
  String get vaccineSite => 'Enjeksiyon bölgesi (isteğe bağlı)';

  @override
  String get vaccineNotes => 'Notlar / reaksiyonlar';

  @override
  String vaccineDue(String age) {
    return '$age yaşında yapılacak';
  }

  @override
  String get vaccineGiven => 'Yapıldı';

  @override
  String get vaccineNoGiven => 'Henüz aşı kaydedilmedi.';

  @override
  String get vaccineMarkGiven => 'Yapıldı olarak işaretle';

  @override
  String get whoChartTitle => 'WHO Büyüme Eğrileri';

  @override
  String get whoWeightForAge => 'Yaşa göre kilo';

  @override
  String get whoHeightForAge => 'Yaşa göre boy/uzunluk';

  @override
  String get whoHeadForAge => 'Yaşa göre baş çevresi';

  @override
  String get whoGenderBoy => 'Erkek';

  @override
  String get whoGenderGirl => 'Kız';

  @override
  String get whoNoData => 'Henüz ölçüm kaydedilmedi.\nGrafiği görmek için bir günün kayıtlarından kilo girin.';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'Bebeğiniz';

  @override
  String whoAgeMonths(int n) {
    return '$n ay';
  }

  @override
  String get whoNoBirthDate => 'Yaşa dayalı grafikleri görmek için profilde bebeğin doğum tarihini ayarlayın.';

  @override
  String get notifTitle => 'Hatırlatıcılar';

  @override
  String get notifFeedingReminder => 'Beslenme hatırlatıcısı';

  @override
  String notifFeedingReminderDesc(int hours) {
    return '$hours saat sonra beslenme kaydedilmemişse hatırlat';
  }

  @override
  String get notifDiaperReminder => 'Bez hatırlatıcısı';

  @override
  String notifDiaperReminderDesc(int hours) {
    return '$hours saat sonra bez kaydedilmemişse hatırlat';
  }

  @override
  String get notifMedicationReminder => 'İlaç hatırlatıcısı';

  @override
  String get notifEnabled => 'Bildirimler etkin';

  @override
  String get notifDisabled => 'Bildirimler devre dışı';

  @override
  String get notifPermissionRequired => 'Lütfen cihaz ayarlarınızdan bildirimleri etkinleştirin.';

  @override
  String get exportTitle => 'Dışa aktarma ve yedekleme';

  @override
  String get exportJson => 'JSON olarak dışa aktar';

  @override
  String get exportPdf => 'PDF olarak dışa aktar';

  @override
  String get exportPdfDesc => 'Doktorunuz için okunabilir özet';

  @override
  String get exportGoogleDrive => 'Google Drive\'a yedekle';

  @override
  String get exportGenerating => 'Rapor oluşturuluyor...';

  @override
  String get milestoneTitle => 'Gelişim Aşamaları';

  @override
  String get milestoneTabAchieved => 'Tamamlananlar';

  @override
  String get milestoneTabUpcoming => 'Yaklaşanlar';

  @override
  String get milestoneCustomAdd => 'Özel aşama';

  @override
  String get milestoneDeleteTitle => 'Aşama silinsin mi?';

  @override
  String get milestoneEdit => 'Aşamayı düzenle';

  @override
  String get milestoneAdd => 'Aşama ekle';

  @override
  String get milestoneName => 'Aşama adı *';

  @override
  String get milestoneDate => 'Tamamlanma tarihi';

  @override
  String get milestoneNotes => 'Notlar (isteğe bağlı)';

  @override
  String get milestoneNotesHint => 'Hatırlamaya değer detaylar...';

  @override
  String get milestoneNoAchieved => 'Henüz aşama kaydedilmedi.';

  @override
  String get milestoneAllDone => 'Tüm ön tanımlı aşamalar tamamlandı! 🎉';

  @override
  String get milestoneFirstSmile => '😊 İlk gülümseme';

  @override
  String get milestoneFirstLaugh => '😂 İlk kahkaha';

  @override
  String get milestoneFirstTooth => '🦷 İlk diş';

  @override
  String get milestoneRolledBackTummy => '🔄 Sırttan yüze döndü';

  @override
  String get milestoneRolledTummyBack => '🔄 Yüzden sırta döndü';

  @override
  String get milestoneSatUnsupported => '🧸 Desteksiz oturdu';

  @override
  String get milestoneStartedCrawling => '🐣 Emeklemeye başladı';

  @override
  String get milestonePulledToStand => '🏋️ Tutunarak ayağa kalktı';

  @override
  String get milestoneFirstSteps => '👣 İlk adımlar';

  @override
  String get milestoneFirstWord => '💬 İlk kelime';

  @override
  String get milestoneFirstSolidFood => '🥣 İlk katı gıda';

  @override
  String get milestoneFirstHaircut => '✂️ İlk saç kesimi';

  @override
  String get milestoneSleptThroughNight => '🌙 Gece boyunca uyudu';

  @override
  String get milestoneWavedBye => '👋 El sallayarak veda etti';

  @override
  String get milestoneClappedHands => '👏 Ellerini çırptı';

  @override
  String get milestoneFirstBirthday => '🎂 İlk doğum günü';

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
  String get settingsTempUnit => 'Sıcaklık birimi';

  @override
  String get settingsLanguage => 'Dil';

  @override
  String get settingsNotifications => 'Bildirimler ve hatırlatıcılar';

  @override
  String get settingsExport => 'Dışa aktarma ve yedekleme';

  @override
  String get settingsTips => 'İpuçları';

  @override
  String get tipSwitchBabies => 'Bebekleri değiştir';

  @override
  String get tipSwitchBabiesDesc => 'Üstteki bebek avatarına dokunarak bebek değiştirebilir veya yeni profil ekleyebilirsiniz.';

  @override
  String get tipSwipeDelete => 'Silmek için sola kaydırın';

  @override
  String get tipSwipeDeleteDesc => 'Gün kutucukları ve tek tek kayıtlarda çalışır.';

  @override
  String get tipTapToEdit => 'Düzenlemek için herhangi bir kayda dokunun';

  @override
  String get tipMultipleFeeds => 'Birden fazla beslenme kaydetme';

  @override
  String get tipMultipleFeedsDesc => 'Beslenme formunda \"Başka bir beslenme ekle\"ye dokunarak emzirme + biberonu tek seferde kaydedebilirsiniz.';

  @override
  String get tipExportData => 'Verileri dışa aktar';

  @override
  String get tipExportDataDesc => 'Ana sayfadaki paylaş simgesini kullanarak tüm verilerinizi JSON olarak dışa aktarabilirsiniz.';

  @override
  String get babiesTitle => 'Bebekler';

  @override
  String get addBaby => 'Bebek ekle';

  @override
  String get editProfile => 'Profili düzenle';

  @override
  String get babyNameRequired => 'İsim *';

  @override
  String get babyDobOptional => 'Doğum tarihi (isteğe bağlı)';

  @override
  String babyBornOn(String date) {
    return '$date doğdu';
  }

  @override
  String get genderUnknown => 'Belirtilmemiş';

  @override
  String get genderBoy => 'Erkek';

  @override
  String get genderGirl => 'Kız';

  @override
  String get cannotDeleteOnlyProfile => 'Tek bebek profili silinemez.';

  @override
  String deleteProfileTitle(String name) {
    return '$name silinsin mi?';
  }

  @override
  String get deleteProfileContent => 'Bu bebeğe ait tüm veriler kalıcı olarak silinecektir.';

  @override
  String get graphsTitle => 'Grafikler';

  @override
  String get graphsTabDaily => 'Günlük';

  @override
  String get graphsTabGrowth => 'Büyüme';

  @override
  String get graphsTabHealth => 'Sağlık';

  @override
  String get graphsTabWho => 'WHO Eğrileri';

  @override
  String get graphsTotalFeeds => 'Toplam beslenme';

  @override
  String get graphsAvgPerDay => 'Ortalama/gün';

  @override
  String get graphsTotalDiapers => 'Bezler';

  @override
  String get graphsTotalMilk => 'Toplam süt';

  @override
  String get graphsTotalSleep => 'Toplam uyku';

  @override
  String get graphsAvgSleep => 'Ortalama uyku/gün';

  @override
  String get graphsFeedsPerDay => 'Günlük beslenme sayısı';

  @override
  String get graphsDiapersPerDay => 'Günlük bez sayısı';

  @override
  String get graphsMilkPerDay => 'Günlük süt miktarı (ml)';

  @override
  String get graphsSleepPerDay => 'Günlük uyku (saat)';

  @override
  String get graphsWeightOverTime => 'Zaman içinde kilo';

  @override
  String get graphsTempOverTime => 'Zaman içinde ateş';

  @override
  String graphsMaxLabel(String value) {
    return 'Maks: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'Min: $value';
  }

  @override
  String get graphsNoWeightData => 'Henüz kilo kaydı yok.\nBir günün kayıtlarından kilo girin.';

  @override
  String get graphsNoTempData => 'Henüz ateş kaydı yok.\nBir günün kayıtlarından ateş girin.';

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
      zero: 'yenidoğan',
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
      zero: '1 aydan küçük',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years yaş $months ay';
  }
}
