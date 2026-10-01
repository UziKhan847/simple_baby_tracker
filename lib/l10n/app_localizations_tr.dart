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
  String get exportJsonDesc => 'Yedekleme için ham veri';

  @override
  String get exportPdf => 'PDF olarak dışa aktar';

  @override
  String get exportPdfDesc => 'Doktorunuz için okunabilir özet';

  @override
  String get importJson => 'JSON\'dan içe aktar';

  @override
  String get importJsonDesc => 'Bir yedek dosyasından geri yükle';

  @override
  String get importDialogTitle => 'Veriler içe aktarılsın mı?';

  @override
  String get importDialogBody => 'Birleştir, dosyadaki girişleri mevcut verilerinizle birlikte ekler. Tümünü değiştir, önce mevcut verilerinizi siler.';

  @override
  String get importMerge => 'Birleştir';

  @override
  String get importReplaceAll => 'Tümünü değiştir';

  @override
  String get importSuccess => 'İçe aktarma tamamlandı';

  @override
  String get importInvalidFile => 'Bu bir Baby Tracker dışa aktarma dosyasına benzemiyor.';

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
  String get milestoneAllDone => 'Tüm ön tanımlı aşamalar tamamlandı!';

  @override
  String get milestoneFirstSmile => 'İlk gülümseme';

  @override
  String get milestoneFirstLaugh => 'İlk kahkaha';

  @override
  String get milestoneFirstTooth => 'İlk diş';

  @override
  String get milestoneRolledBackTummy => 'Sırttan yüze döndü';

  @override
  String get milestoneRolledTummyBack => 'Yüzden sırta döndü';

  @override
  String get milestoneSatUnsupported => 'Desteksiz oturdu';

  @override
  String get milestoneStartedCrawling => 'Emeklemeye başladı';

  @override
  String get milestonePulledToStand => 'Tutunarak ayağa kalktı';

  @override
  String get milestoneFirstSteps => 'İlk adımlar';

  @override
  String get milestoneFirstWord => 'İlk kelime';

  @override
  String get milestoneFirstSolidFood => 'İlk katı gıda';

  @override
  String get milestoneFirstHaircut => 'İlk saç kesimi';

  @override
  String get milestoneSleptThroughNight => 'Gece boyunca uyudu';

  @override
  String get milestoneWavedBye => 'El sallayarak veda etti';

  @override
  String get milestoneClappedHands => 'Ellerini çırptı';

  @override
  String get milestoneFirstBirthday => 'İlk doğum günü';

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
  String get settingsVolumeUnit => 'Milk volume unit';

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
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

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

  @override
  String medicationLabel(String name) {
    return 'İlaç: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'Ziyaret';

  @override
  String doctorVisitLabel(String reason) {
    return 'Doktor ziyareti — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 Not';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'Dr: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'Doktor kaydedilmedi';

  @override
  String get summaryPoosLabel => 'Kaka';

  @override
  String get summaryPeesLabel => 'Çiş';

  @override
  String get summaryMilkLabel => 'Süt ml';

  @override
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

  @override
  String get summaryBreastLabel => 'Emzirme dk';

  @override
  String get summarySleepLabel => 'Uyku';

  @override
  String get settingsOledMode => 'OLED (tam siyah)';

  @override
  String get settingsOledModeDesc => 'OLED ekranlarda pil tasarrufu için tam siyah arka plan kullan';

  @override
  String get settingsImmersiveMode => 'Sürükleyici mod';

  @override
  String get settingsImmersiveModeDesc => 'Sistem durum ve gezinme çubuklarını gizle';

  @override
  String get navVaccinationsEntry => 'Aşılar';

  @override
  String get whoChartsEntry => 'DSÖ büyüme grafikleri';

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
    return 'Woke $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Stop the sleep timer first';

  @override
  String get widgetStopFeedFirst => 'Stop the feeding timer first';

  @override
  String quickAddTitle(String name) {
    return 'Add for $name';
  }

  @override
  String get quickAddOpenApp => 'Open the app';
}
