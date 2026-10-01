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
  String get exportJson => 'Yedeği dışa aktar';

  @override
  String get exportJsonDesc => 'Tüm veriler ve fotoğraflar tek bir .zip dosyasında';

  @override
  String get exportPdf => 'PDF olarak dışa aktar';

  @override
  String get exportPdfDesc => 'Doktorunuz için okunabilir özet';

  @override
  String get importJson => 'Yedeği geri yükle';

  @override
  String get importJsonDesc => 'Bir .zip yedeğinden (veya eski bir .json dışa aktarımından)';

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
  String get settingsVolumeUnit => 'Süt hacmi birimi';

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
  String get tipExportDataDesc => 'Tüm verileri ve fotoğrafları tek dosyada yedeklemek için Ana Sayfa\'daki paylaş simgesini kullanın.';

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
  String get graphsMilkPerDayMl => 'Günlük süt (ml)';

  @override
  String get graphsMilkPerDayOz => 'Günlük süt (oz)';

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
  String get summaryMilkLabelMl => 'Süt ml';

  @override
  String get summaryMilkLabelOz => 'Süt oz';

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
  String get medicationEditTitle => 'İlacı düzenle';

  @override
  String get medicationLogTitle => 'İlaç kaydet';

  @override
  String get medicationYourCourses => 'Tedavileriniz';

  @override
  String get medicationManageCourses => 'Tedavileri yönet';

  @override
  String get medicationNameRequired => 'İlaç adı *';

  @override
  String get medicationDosageWarning => 'Her zaman kiloya/yaşa uygun dozu kullanın. Önerilen sıklığı aşmayın.';

  @override
  String get medicationNotesOptional => 'Notlar (isteğe bağlı)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dakika önce',
      one: '1 dakika önce',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saat önce',
      one: '1 saat önce',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün önce',
      one: '1 gün önce',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'Son verilme $ago';
  }

  @override
  String get medicationNeverGiven => 'Henüz verilmedi';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bugün $count doz',
      one: 'Bugün 1 doz',
      zero: 'Bugün doz yok',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'Sonraki doz, sondan $hours saat sonra verilmeli';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'Bu tedavi için günlük $max sınırına zaten ulaşıldı';
  }

  @override
  String get medicationEditCourse => 'Tedaviyi düzenle';

  @override
  String get medicationNewCourse => 'Yeni tedavi';

  @override
  String get medicationReasonOptional => 'Neden (isteğe bağlı)';

  @override
  String get medicationIntervalHoursOptional => 'Tekrar aralığı (saat, isteğe bağlı)';

  @override
  String get medicationMaxPerDayOptional => 'Günlük maks. doz (isteğe bağlı)';

  @override
  String get medicationRemindNextDose => 'Sonraki doz zamanı geldiğinde hatırlat';

  @override
  String medicationEndCourseTitle(String name) {
    return '$name sonlandırılsın mı?';
  }

  @override
  String get medicationEndCoursePrompt => 'Nasıl geçti?';

  @override
  String get medicationDeleteCourseTitle => 'Bu tedavi silinsin mi?';

  @override
  String get medicationResultWorked => 'İşe yaradı';

  @override
  String get medicationResultPartlyWorked => 'Kısmen işe yaradı';

  @override
  String get medicationResultDidntWork => 'İşe yaramadı';

  @override
  String get medicationResultSideEffects => 'Yan etkiler';

  @override
  String get medicationResultNone => 'Değerlendirilmedi';

  @override
  String get medicationsTitle => 'İlaçlar';

  @override
  String medicationActiveTab(int count) {
    return 'Devam eden ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'Geçmiş ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'Devam eden tedavi yok.\n+ düğmesiyle başlatın.';

  @override
  String get medicationNoPastCourses => 'Henüz geçmiş tedavi yok.';

  @override
  String medicationTimesGiven(int count) {
    return '$count× verildi';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'Son: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'Sonraki $time';
  }

  @override
  String get medicationEndCourse => 'Tedaviyi sonlandır';

  @override
  String feedLastSideHint(String side) {
    return 'Geçen sefer: $side';
  }

  @override
  String get feedSideLeft => 'Sol';

  @override
  String get feedSideRight => 'Sağ';

  @override
  String get feedSideBoth => 'İkisi de';

  @override
  String get feedSideLeftMinutes => 'Sol (dk)';

  @override
  String get feedSideRightMinutes => 'Sağ (dk)';

  @override
  String get timeAgoJustNow => 'Az önce';

  @override
  String get timeUntilOverdue => 'Gecikti';

  @override
  String timeUntilMinutes(int count) {
    return '$count dk sonra';
  }

  @override
  String timeUntilHours(int count) {
    return '$count sa sonra';
  }

  @override
  String timeUntilDays(int count) {
    return '$count gün sonra';
  }

  @override
  String get timerDiscardTitle => 'Bu zamanlayıcı silinsin mi?';

  @override
  String get timerDiscard => 'Sil';

  @override
  String timerFeedingRunning(String side) {
    return 'Emzirme · $side';
  }

  @override
  String get timerSleepRunning => 'Uyku zamanlayıcısı çalışıyor';

  @override
  String get timerSwitchSide => 'Taraf değiştir';

  @override
  String get timerStop => 'Durdur';

  @override
  String get sinceLastFeed => 'Son beslenme';

  @override
  String get sinceLastDiaper => 'Son bez';

  @override
  String get sinceAwake => 'Uyanık';

  @override
  String get sinceAsleep => 'Uyuyor';

  @override
  String nextDoseDue(String name) {
    return '$name zamanı';
  }

  @override
  String get weighConditionNaked => 'Çıplak';

  @override
  String get weighConditionDiaper => 'Sadece bez';

  @override
  String get weighConditionLightClothes => 'İnce kıyafet';

  @override
  String get weighConditionDressed => 'Giyinik';

  @override
  String get weighCondition => 'Tartılırken üzerinde';

  @override
  String get growthMeasurementsOptional => 'Diğer ölçümler (isteğe bağlı)';

  @override
  String get growthHeightCm => 'Boy (cm)';

  @override
  String get growthHeadCm => 'Baş çevresi (cm)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'Geçen sefer şöyle tartıldı: $condition — fark sadece büyümeden kaynaklanmıyor olabilir';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm cm';
  }

  @override
  String growthHeadValue(String cm) {
    return 'Baş $cm cm';
  }

  @override
  String get growthHeightOverTime => 'Zaman içinde boy';

  @override
  String get growthHeadOverTime => 'Zaman içinde baş çevresi';

  @override
  String get graphsRecentWeighIns => 'Son tartımlar';

  @override
  String get solidsAmountFewSpoons => 'Birkaç kaşık';

  @override
  String get solidsAmountHalf => 'Yarım porsiyon';

  @override
  String get solidsAmountFull => 'Tam porsiyon';

  @override
  String get solidsAmountTaste => 'Sadece tattı';

  @override
  String get solidsReactionMild => 'Hafif reaksiyon';

  @override
  String get solidsReactionAllergic => 'Alerjik reaksiyon';

  @override
  String get solidsReactionNone => 'Reaksiyon yok';

  @override
  String get solidsEditTitle => 'Ek gıdayı düzenle';

  @override
  String get solidsLogTitle => 'Ek gıda kaydet';

  @override
  String get solidsFoodsLabel => 'Yiyecekler';

  @override
  String get solidsAddFoodHint => 'Yiyecek ekle';

  @override
  String get solidsAmount => 'Miktar';

  @override
  String get solidsLiked => 'Beğendi mi?';

  @override
  String get solidsReaction => 'Reaksiyon';

  @override
  String get solidsNotesOptional => 'Notlar (isteğe bağlı)';

  @override
  String get foodsTitle => 'Denenen yiyecekler';

  @override
  String get foodsEmpty => 'Henüz ek gıda kaydedilmedi.';

  @override
  String get foodsAllergensNotYet => 'Henüz verilmeyen yaygın alerjenler';

  @override
  String foodsTriedCount(int count) {
    return '$count yiyecek denendi';
  }

  @override
  String foodsFirstTried(String date) {
    return 'İlk: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'Ek gıda';

  @override
  String get feedAmountOz => 'Miktar (oz)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'Son beslenmeden $interval sonra hatırlat';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'Son bezden $interval sonra hatırlat';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'Her $interval';
  }

  @override
  String get notifIntervalTitle => 'Hatırlatma aralığı';

  @override
  String get notifIntervalHours => 'Saat';

  @override
  String get notifIntervalMinutes => 'Dakika';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'En az $minutes dakika';
  }

  @override
  String get settingsFeeding => 'Beslenme';

  @override
  String get settingsTrackBottles => 'Biberonları takip et';

  @override
  String get settingsTrackBottlesDesc => 'Hangi biberonun kullanıldığını ve ne kadar hazırlanıp ne kadar içildiğini seçin';

  @override
  String get bottlesTitle => 'Biberonlarım';

  @override
  String get bottlesEmpty => 'Henüz biberon yok.\nBeslenme kaydederken seçebilmek için kullandığınız biberonları ekleyin.';

  @override
  String get bottleAdd => 'Biberon ekle';

  @override
  String get bottleEdit => 'Biberonu düzenle';

  @override
  String get bottleLabel => 'Etiket / numara (ör. #3)';

  @override
  String get bottleBrand => 'Marka / tür (isteğe bağlı)';

  @override
  String get bottleCapacity => 'Hacim (isteğe bağlı)';

  @override
  String get bottleNipple => 'Emzik boyu / akış (isteğe bağlı)';

  @override
  String get bottleMaterial => 'Malzeme';

  @override
  String get bottleRetired => 'Kullanım dışı';

  @override
  String get bottleRetire => 'Kullanımdan kaldır';

  @override
  String get bottleUnretire => 'Yeniden kullan';

  @override
  String bottleDeleteTitle(String name) {
    return '$name silinsin mi?';
  }

  @override
  String get bottleDeleteBody => 'Geçmiş beslenmeler miktarlarını korur ama artık bu biberonu göstermez. Geçmişi koruyup listeden gizlemek için bunun yerine Kullanımdan kaldır\'ı kullanın.';

  @override
  String get feedPrepared => 'Hazırlanan';

  @override
  String get feedDrank => 'İçilen';

  @override
  String feedLeftover(String amount) {
    return '$amount arttı';
  }

  @override
  String get feedDrankMoreThanPrepared => 'Hazırlanandan fazla mı?';

  @override
  String get feedWhichBottle => 'Hangi biberon?';

  @override
  String get feedNoBottlesYet => 'Henüz biberon yok — Ayarlar → Biberonlarım bölümünden ekleyin.';

  @override
  String get photoPrivacyTitle => 'Fotoğraflarınız bu telefonda kalır';

  @override
  String get photoPrivacyBody => 'Fotoğraflar yalnızca bu cihazda, bu uygulamanın içinde saklanır. Uygulamanın internet erişimi yoktur; siz kendiniz yedek dışa aktarmadıkça hiçbir şey yüklenmez veya paylaşılmaz.\n\nAndroid, ilk fotoğrafı çektiğinizde kamera izni isteyebilir.';

  @override
  String get photoPrivacyContinue => 'Devam';

  @override
  String get photoTakePhoto => 'Fotoğraf çek';

  @override
  String get photoChooseFromGallery => 'Galeriden seç';

  @override
  String get photoCaption => 'Açıklama';

  @override
  String get photoCompare => 'İlk ve son';

  @override
  String get photoAddOtherDay => 'Başka bir gün için ekle';

  @override
  String get photoEmpty => 'Henüz fotoğraf yok.\nHer gün bir fotoğraf çekin ve bebeğinizin büyümesini izleyin.';

  @override
  String get photoToday => 'Bugünün fotoğrafı';

  @override
  String get photoAddToday => 'Bugünün fotoğrafını ekle';

  @override
  String get photoReplace => 'Değiştir';

  @override
  String get photoDeleteTitle => 'Bu fotoğraf silinsin mi?';

  @override
  String get ageBeforeBirth => 'Doğumdan önce';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count günlük',
      one: '1 günlük',
      zero: 'Doğum günü',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months ay $days g';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years yaş $months ay';
  }

  @override
  String get navMemories => 'Anılar';

  @override
  String get memoriesTabPhotos => 'Fotoğraflar';

  @override
  String get milestoneNoAchievedHint => 'Hazır bir aşamayı kaydetmek için \"Yaklaşan\"a dokunun,\nya da özel bir aşama için aşağıdaki düğmeyi kullanın.';

  @override
  String get skinTitle => 'Cilt sorunları';

  @override
  String get skinNew => 'Yeni cilt sorunu';

  @override
  String get skinEdit => 'Cilt sorununu düzenle';

  @override
  String skinTabActive(int count) {
    return 'Devam eden ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'İyileşen ($count)';
  }

  @override
  String get skinEmptyActive => 'Takip edilen cilt sorunu yok.\nBaşlamak için + simgesine dokunun — doktora nasıl değiştiğini göstermek için her gün fotoğraf ekleyebilirsiniz.';

  @override
  String get skinEmptyHealed => 'Henüz iyileşen yok.';

  @override
  String get skinUpdateDue => 'Bugün güncelle';

  @override
  String skinSince(String date) {
    return '$date tarihinden beri';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
      one: '1 gün',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return '$date tarihinde iyileşti';
  }

  @override
  String skinReminderAt(String time) {
    return 'Her gün $time hatırlatma';
  }

  @override
  String get skinSeverityTrend => 'Zaman içinde şiddet';

  @override
  String get skinNoUpdates => 'Henüz güncelleme yok. Zaman çizelgesini başlatmak için bugünkünü ekleyin.';

  @override
  String get skinExportPdf => 'Doktor için dışa aktar (PDF)';

  @override
  String get skinMarkHealed => 'İyileşti olarak işaretle';

  @override
  String get skinReopen => 'Yeniden aktif olarak işaretle';

  @override
  String get skinUpdateToday => 'Bugünün güncellemesini ekle';

  @override
  String get skinEditToday => 'Bugünün güncellemesini düzenle';

  @override
  String skinDeleteTitle(String name) {
    return '$name ve tüm güncellemeleri silinsin mi?';
  }

  @override
  String get skinDeleteUpdateTitle => 'Bu güncelleme silinsin mi?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'Tedavi: $treatment';
  }

  @override
  String get skinName => 'Sorun *';

  @override
  String get skinBodyArea => 'Vücudun neresinde?';

  @override
  String get skinBegan => 'Başlangıç';

  @override
  String get skinRemindDaily => 'Her gün güncellemeyi hatırlat';

  @override
  String get skinReminderTime => 'Hatırlatma saati';

  @override
  String get skinUpdateTitle => 'Cilt güncellemesi';

  @override
  String get skinSeverity => 'Nasıl görünüyor?';

  @override
  String get skinSeverity0 => '0 · Temiz';

  @override
  String get skinSeverity1 => '1 · Hafif';

  @override
  String get skinSeverity2 => '2 · Orta';

  @override
  String get skinSeverity3 => '3 · Şiddetli';

  @override
  String get skinSeverity4 => '4 · Çok şiddetli';

  @override
  String get skinTreatment => 'Tedavi (isteğe bağlı)';

  @override
  String get skinTreatmentHint => 'ör. nemlendirici, %1 hidrokortizon';

  @override
  String get skinAddPhoto => 'Fotoğraf ekle';

  @override
  String get skinCardNone => 'Pişik, egzama veya başka bir cilt sorununu doktor için fotoğraflarla gün gün takip edin';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tanesi bugün güncellenmeli',
      one: '1 tanesi bugün güncellenmeli',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'Yedek hazırlanıyor…';

  @override
  String get backupFailed => 'Yedek oluşturulamadı.';

  @override
  String get backupSavedTo => 'Yedek şuraya kaydedildi:';

  @override
  String get backupShareSubject => 'Baby Tracker yedeği';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fotoğraf içerir.',
      one: '1 fotoğraf içerir.',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'Besle';

  @override
  String get widgetStopFeed => 'Beslemeyi durdur';

  @override
  String get widgetDiaper => 'Bez';

  @override
  String get widgetSleep => 'Uyku';

  @override
  String get widgetWakeUp => 'Uyandı';

  @override
  String widgetFeedingFor(String duration) {
    return '$duration beslenme';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'Beslendi $ago';
  }

  @override
  String get widgetNoFeedsYet => 'Henüz beslenme yok';

  @override
  String widgetChangedAgo(String ago) {
    return 'Değiştirildi $ago';
  }

  @override
  String get widgetNoDiapersYet => 'Henüz bez yok';

  @override
  String widgetAsleepFor(String duration) {
    return '$duration uyuyor';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'Uyandı $ago';
  }

  @override
  String get widgetStopSleepFirst => 'Önce uyku zamanlayıcısını durdurun';

  @override
  String get widgetStopFeedFirst => 'Önce beslenme zamanlayıcısını durdurun';

  @override
  String quickAddTitle(String name) {
    return '$name için ekle';
  }

  @override
  String get quickAddOpenApp => 'Uygulamayı aç';

  @override
  String get foodPeanut => 'Yer fıstığı';

  @override
  String get foodEgg => 'Yumurta';

  @override
  String get foodDairy => 'Süt ürünleri';

  @override
  String get foodWheat => 'Buğday';

  @override
  String get foodSoy => 'Soya';

  @override
  String get foodFish => 'Balık';

  @override
  String get foodShellfish => 'Kabuklu deniz ürünleri';

  @override
  String get foodTreeNuts => 'Sert kabuklu yemişler';

  @override
  String get foodSesame => 'Susam';

  @override
  String get foodBanana => 'Muz';

  @override
  String get foodAvocado => 'Avokado';

  @override
  String get foodSweetPotato => 'Tatlı patates';

  @override
  String get foodRiceCereal => 'Pirinç unu lapası';

  @override
  String get foodOatmeal => 'Yulaf lapası';

  @override
  String get foodCarrot => 'Havuç';

  @override
  String get foodApple => 'Elma';

  @override
  String get foodPea => 'Bezelye';

  @override
  String get symptomRash => 'Döküntü';

  @override
  String get symptomHives => 'Kurdeşen';

  @override
  String get symptomVomiting => 'Kusma';

  @override
  String get symptomDiarrhea => 'İshal';

  @override
  String get symptomSwelling => 'Şişlik';

  @override
  String get doseUnitDrops => 'damla';

  @override
  String get doseUnitTablets => 'tablet';

  @override
  String get bottleMaterialPlastic => 'Plastik';

  @override
  String get bottleMaterialGlass => 'Cam';

  @override
  String get bottleMaterialSilicone => 'Silikon';

  @override
  String get bottleMaterialSteel => 'Paslanmaz çelik';

  @override
  String get visitReasonRoutine => 'Rutin kontrol';

  @override
  String get visitReasonSick => 'Hastalık';

  @override
  String get visitReasonVaccination => 'Aşı';

  @override
  String get visitReasonSpecialist => 'Uzman';

  @override
  String get visitReasonFollowUp => 'Kontrol randevusu';

  @override
  String get visitReasonOther => 'Diğer';

  @override
  String get pooColourPale => 'Soluk';

  @override
  String get noteTagHappyDay => 'Mutlu gün';

  @override
  String get noteTagSleptWell => 'İyi uyudu';

  @override
  String get noteTagFussy => 'Huysuz';

  @override
  String get noteTagNotWell => 'İyi hissetmiyordu';

  @override
  String get noteTagFirstTime => 'İlk kez!';

  @override
  String get noteTagTeething => 'Diş çıkarma';

  @override
  String get noteTagGrowthSpurt => 'Büyüme atağı';

  @override
  String get noteTagMilestone => 'Gelişim aşaması';

  @override
  String get tummyTimeNotesHint => 'ör. keyif aldı, huysuzdu...';

  @override
  String get skinSuggestEczema => 'Egzama';

  @override
  String get skinSuggestDiaperRash => 'Pişik';

  @override
  String get skinSuggestCradleCap => 'Konak';

  @override
  String get skinSuggestBabyAcne => 'Bebek aknesi';

  @override
  String get skinSuggestHeatRash => 'İsilik';

  @override
  String get skinSuggestDrySkin => 'Kuru cilt';

  @override
  String get bodyFace => 'Yüz';

  @override
  String get bodyScalp => 'Saçlı deri';

  @override
  String get bodyNeck => 'Boyun';

  @override
  String get bodyChest => 'Göğüs';

  @override
  String get bodyBack => 'Sırt';

  @override
  String get bodyArms => 'Kollar';

  @override
  String get bodyHands => 'Eller';

  @override
  String get bodyDiaperArea => 'Bez bölgesi';

  @override
  String get bodyLegs => 'Bacaklar';

  @override
  String get bodyFeet => 'Ayaklar';

  @override
  String get medSuggestGripeWater => 'Gaz şurubu (gripe water)';

  @override
  String get medSuggestVitaminD => 'D vitamini';

  @override
  String get medSuggestIronDrops => 'Demir damlası';

  @override
  String get medSuggestAntibiotic => 'Antibiyotik';

  @override
  String get medSuggestProbiotic => 'Probiyotik';

  @override
  String vaccinePageTitle(String name) {
    return '$name — Aşılar';
  }

  @override
  String get vaccineDeleteTitle => 'Aşı kaydı silinsin mi?';

  @override
  String get vaccineSiteHint => 'ör. sol uyluk';

  @override
  String get vaccineNotesHint => 'ör. hafif ateş, huysuzluk, reaksiyon yok...';

  @override
  String get vaccineNoGivenHint => '+ düğmesini kullanın veya Takvim sekmesinde \"Yapıldı olarak işaretle\"ye dokunun.';

  @override
  String get vaccineAgeBirth => 'Doğumda';

  @override
  String vaccineAgeMonths(String range) {
    return '$range ay';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range ay (her yıl)';
  }

  @override
  String get whoTabHeight => 'Boy';

  @override
  String get whoTabHead => 'Baş';

  @override
  String get whoChartFor => 'Grafik:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 ay)';
  }

  @override
  String get whoNoDataPoints => 'Henüz veri yok. Bebeğinizi grafikte görmek için ölçüm kaydedin.';

  @override
  String get whoLatestMeasurement => 'Son ölçüm';

  @override
  String whoApproxPercentile(String value) {
    return 'Yaklaşık persentil: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return '$low ile $high arası';
  }

  @override
  String whoMonthsOld(String months) {
    return '$months aylık';
  }

  @override
  String get whoDisclaimer => 'Bu grafikler yalnızca bilgi amaçlıdır. Yorumlaması için her zaman çocuk doktorunuza danışın.';

  @override
  String get whoMedian => 'P50 (ortanca)';

  @override
  String get notifChannelName => 'Baby Tracker hatırlatmaları';

  @override
  String get notifChannelDesc => 'Beslenme, bez, ilaç ve cilt kontrolü hatırlatmaları';

  @override
  String get notifFeedTitle => 'Beslenme zamanı!';

  @override
  String notifFeedBody(String interval) {
    return 'Son $interval içinde beslenme kaydedilmedi.';
  }

  @override
  String get notifDiaperTitle => 'Bez kontrolü!';

  @override
  String notifDiaperBody(String interval) {
    return 'Son $interval içinde bez değişimi kaydedilmedi.';
  }

  @override
  String notifDoseTitle(String name) {
    return 'Doz zamanı: $name';
  }

  @override
  String notifDoseBody(String name) {
    return '$name için sonraki doz zamanı geldi.';
  }

  @override
  String notifSkinTitle(String name) {
    return 'Cilt kontrolü: $name';
  }

  @override
  String get notifSkinBody => 'Bugünün güncellemesini ekleyin (isterseniz fotoğrafla).';

  @override
  String get timerFeedingNotif => 'Beslenme zamanlayıcısı çalışıyor';

  @override
  String intervalMinutes(String m) {
    return '$m dk';
  }

  @override
  String intervalHours(String h) {
    return '$h sa';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h sa $m dk';
  }

  @override
  String get settingsRtlActive => 'Sağdan sola düzen etkin';

  @override
  String get measurementHeightIn => 'Boy (inç)';

  @override
  String get measurementHeadIn => 'Baş çevresi (inç)';

  @override
  String get growthHeightIn => 'Boy (inç)';

  @override
  String get growthHeadIn => 'Baş çevresi (inç)';

  @override
  String growthHeightValueIn(String value) {
    return '$value inç';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'Baş $value inç';
  }

  @override
  String get settingsLengthUnitNote => 'Uzunluk ağırlık birimini izler (kg ile cm, lbs ile inç)';

  @override
  String get formulaStoreBrand => 'Market markası';
}
