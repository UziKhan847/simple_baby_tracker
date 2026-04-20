// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'ตัวติดตามเด็ก';

  @override
  String get navHome => 'หน้าหลัก';

  @override
  String get navGraphs => 'กราฟ';

  @override
  String get navSettings => 'ตั้งค่า';

  @override
  String get actionCancel => 'ยกเลิก';

  @override
  String get actionSave => 'บันทึก';

  @override
  String get actionUpdate => 'อัปเดต';

  @override
  String get actionDelete => 'ลบ';

  @override
  String get actionAdd => 'เพิ่ม';

  @override
  String get actionEdit => 'แก้ไข';

  @override
  String get actionClose => 'ปิด';

  @override
  String get actionExport => 'ส่งออกข้อมูล';

  @override
  String get actionAddDay => 'เพิ่มวัน';

  @override
  String get cannotUndo => 'ไม่สามารถยกเลิกการกระทำนี้ได้';

  @override
  String get noData => 'ไม่มีข้อมูล';

  @override
  String get homeTitle => 'ตัวติดตาม';

  @override
  String get feedsToday => 'การให้นมวันนี้';

  @override
  String get diapersToday => 'ผ้าอ้อมวันนี้';

  @override
  String get sleepToday => 'การนอนวันนี้';

  @override
  String todayLabel(String date) {
    return 'วันนี้ — $date';
  }

  @override
  String eventCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count เหตุการณ์',
      one: '1 เหตุการณ์',
      zero: 'ไม่มีเหตุการณ์',
    );
    return '$_temp0';
  }

  @override
  String get deleteDayTitle => 'ลบวันนี้?';

  @override
  String deleteDayContent(String date) {
    return 'ลบ $date และรายการทั้งหมด? ไม่สามารถยกเลิกการกระทำนี้ได้';
  }

  @override
  String get noEntriesYet => 'ยังไม่มีรายการ';

  @override
  String get addEntry => 'เพิ่มรายการ';

  @override
  String get deleteEntryTitle => 'ลบรายการนี้?';

  @override
  String get entryTypeDiaper => 'เปลี่ยนผ้าอ้อม';

  @override
  String get entryTypeFeeding => 'การให้นม';

  @override
  String get entryTypeSleep => 'การนอน';

  @override
  String get entryTypeTemperature => 'อุณหภูมิ';

  @override
  String get entryTypeWeight => 'น้ำหนัก';

  @override
  String get diaperPeePoo => 'ผ้าอ้อม — ปัสสาวะ + อุจจาระ';

  @override
  String get diaperPee => 'ผ้าอ้อม — ปัสสาวะอย่างเดียว';

  @override
  String get diaperPoo => 'ผ้าอ้อม — อุจจาระอย่างเดียว';

  @override
  String get diaperChange => 'เปลี่ยนผ้าอ้อม';

  @override
  String get editDiaper => 'แก้ไขผ้าอ้อม';

  @override
  String get diaperContents => 'สิ่งที่อยู่ในผ้าอ้อม';

  @override
  String get diaperNone => 'ไม่มีอะไร';

  @override
  String get diaperPeeLabel => 'ปัสสาวะ';

  @override
  String get diaperPooLabel => 'อุจจาระ';

  @override
  String get diaperBoth => 'ทั้งสองอย่าง';

  @override
  String get diaperConsistency => 'ลักษณะ';

  @override
  String get consistencyHard => 'แข็ง / เป็นเม็ด';

  @override
  String get consistencyHardHint => 'ท้องผูก';

  @override
  String get consistencyFirm => 'เป็นก้อน';

  @override
  String get consistencyFirmHint => 'ค่อนข้างแข็ง';

  @override
  String get consistencyNormal => 'ปกติ';

  @override
  String get consistencyNormalHint => 'สุขภาพดี';

  @override
  String get consistencySoft => 'นิ่ม';

  @override
  String get consistencySoftHint => 'นิ่มเล็กน้อย';

  @override
  String get consistencyLoose => 'เหลวข้น / กึ่งเหลว';

  @override
  String get consistencyLooseHint => 'ต้องสังเกต';

  @override
  String get consistencyWatery => 'เป็นน้ำ';

  @override
  String get consistencyWateryHint => 'ท้องเสีย';

  @override
  String get warnConstipation => 'สัญญาณของท้องผูก — สังเกตอย่างใกล้ชิด';

  @override
  String get warnDiarrhea => 'สัญญาณของท้องเสีย — สังเกตอย่างใกล้ชิด';

  @override
  String get pooColourLabel => 'สี (แตะเพื่อเลือก)';

  @override
  String get pooColourAbnormal => '⚠️ ผิดปกติ (สีซีด)';

  @override
  String get pooColourNormal => '✅ ปกติ';

  @override
  String pooColourSelected(String label) {
    return 'เลือกแล้ว: $label';
  }

  @override
  String get diaperSize => 'ขนาดผ้าอ้อม';

  @override
  String get diaperBrand => 'ยี่ห้อ';

  @override
  String get diaperBrandCustomLabel => 'ชื่อยี่ห้อ';

  @override
  String get rashPresent => 'มีผื่นผ้าอ้อม';

  @override
  String get rashPresentHint => 'รอยแดง ระคายเคือง หรือผื่นผ้าอ้อม';

  @override
  String get rashCreamUsed => 'ใช้ครีมแล้ว';

  @override
  String get rashCreamCustomLabel => 'ชื่อครีม / ยาทา';

  @override
  String get rashFollowUpTitle => '⚠️ การติดตามผื่น';

  @override
  String get rashFollowUpQuestion => 'ผ้าอ้อมครั้งล่าสุดมีผื่นบันทึกไว้ ดีขึ้นหรือไม่?';

  @override
  String get rashImproved => 'ใช่ ดีขึ้น';

  @override
  String get rashNoChange => 'ไม่เปลี่ยนแปลง / แย่ลง';

  @override
  String get rashRecorded => 'บันทึกผื่นแล้ว';

  @override
  String get addFeeding => 'เพิ่มการให้นม';

  @override
  String get editFeeding => 'แก้ไขการให้นม';

  @override
  String feedLabel(int number) {
    return 'การให้นมครั้งที่ $number';
  }

  @override
  String get feedModeBottle => 'ขวดนม';

  @override
  String get feedModeSuckle => 'ดูดนมจากเต้า';

  @override
  String get feedAmountMl => 'ปริมาณ (มล.)';

  @override
  String get feedType => 'ประเภท';

  @override
  String get feedBreastMilk => 'น้ำนมแม่';

  @override
  String get feedFormula => 'นมผง';

  @override
  String get feedFormulaBrand => 'ยี่ห้อของนมผง';

  @override
  String get feedFormulaBrandCustom => 'ชื่อยี่ห้อ';

  @override
  String get feedDurationMinutes => 'ระยะเวลา (นาที)';

  @override
  String get addAnotherFeed => 'เพิ่มการให้นมอีกครั้ง';

  @override
  String get bottleBreastMilk => 'ขวดนม — น้ำนมแม่';

  @override
  String get bottleFormula => 'ขวดนม — นมผง';

  @override
  String get breastfeedingSuckle => 'การให้นมจากเต้า';

  @override
  String get logSleep => 'บันทึกการนอน';

  @override
  String get editSleep => 'แก้ไขการนอน';

  @override
  String get sleepStart => 'เริ่มนอน';

  @override
  String get sleepWakeUp => 'ตื่น';

  @override
  String sleepDuration(String duration) {
    return 'ระยะเวลา: $duration';
  }

  @override
  String get sleepInvalidTimes => 'เวลาไม่ถูกต้อง';

  @override
  String get sleepWrapsNextDay => '(สิ้นสุดในวันถัดไป)';

  @override
  String get sleepNotes => 'หมายเหตุ (ไม่บังคับ)';

  @override
  String get sleepNotesHint => 'เช่น: กระสับกระส่าย ตื่นสั้นๆ...';

  @override
  String get sleepNoNotes => 'ไม่มีหมายเหตุ';

  @override
  String sleepHoursShort(int h, int m) {
    return '$hชม. $mนาที';
  }

  @override
  String get logTemperature => 'บันทึกอุณหภูมิ';

  @override
  String get editTemperature => 'แก้ไขอุณหภูมิ';

  @override
  String get temperatureLabel => 'อุณหภูมิร่างกาย';

  @override
  String get tempSeverityLow => 'อุณหภูมิต่ำ — สังเกต';

  @override
  String get tempSeverityNormal => 'อุณหภูมิปกติ';

  @override
  String get tempSeverityElevated => 'สูงเล็กน้อย — สังเกตอย่างใกล้ชิด';

  @override
  String get tempSeverityFever => 'ไข้ — ปรึกษาแพทย์';

  @override
  String get tempReference => 'ค่าอ้างอิงอุณหภูมิ';

  @override
  String get tempRefLow => '< 36.0 °C / 96.8 °F';

  @override
  String get tempRefNormal => '36.0 – 37.4 °C / 96.8 – 99.3 °F';

  @override
  String get tempRefElevated => '37.5 – 38.4 °C / 99.5 – 101.1 °F';

  @override
  String get tempRefFever => '≥ 38.5 °C / 101.3 °F';

  @override
  String get tempFeverWarning => '⚠️ หากทารกอายุน้อยกว่า 3 เดือนมีไข้ ควรปรึกษากุมารแพทย์ทุกครั้ง';

  @override
  String get tempLow => 'ต่ำ';

  @override
  String get tempNormal => 'ปกติ';

  @override
  String get tempElevated => 'สูง';

  @override
  String get tempFever => 'ไข้';

  @override
  String get tempLatest => 'อุณหภูมิล่าสุด';

  @override
  String get tempSummary => 'สรุปอุณหภูมิ';

  @override
  String get tempFeverThreshold => 'เกณฑ์ไข้';

  @override
  String tempDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count วัน',
      one: '1 วัน',
    );
    return '$_temp0';
  }

  @override
  String get logWeight => 'บันทึกน้ำหนัก';

  @override
  String get editWeight => 'แก้ไขน้ำหนัก';

  @override
  String get weightLabel => 'น้ำหนัก';

  @override
  String weightGain(String amount) {
    return '+$amount เพิ่มขึ้น';
  }

  @override
  String weightLoss(String amount) {
    return '−$amount ลดลง';
  }

  @override
  String weightPrevious(String weight) {
    return 'ครั้งก่อน: $weight';
  }

  @override
  String weightLastRecorded(String weight, String date) {
    return 'บันทึกล่าสุด: $weight เมื่อ $date';
  }

  @override
  String get weightLatest => 'น้ำหนักล่าสุด';

  @override
  String weightOverPeriod(String sign, String amount) {
    return '$sign$amount ในช่วงเวลานี้';
  }

  @override
  String get settingsTitle => 'ตั้งค่า';

  @override
  String get settingsAppearance => 'รูปลักษณ์';

  @override
  String get settingsDarkMode => 'โหมดมืด';

  @override
  String get settingsDarkActive => 'ธีมมืดเปิดใช้งาน';

  @override
  String get settingsLightActive => 'ธีมสว่างเปิดใช้งาน';

  @override
  String get settingsUnits => 'หน่วย';

  @override
  String get settingsWeightUnit => 'หน่วยน้ำหนัก';

  @override
  String get settingsTempUnit => 'หน่วยอุณหภูมิ';

  @override
  String get settingsLanguage => 'ภาษา';

  @override
  String get settingsTips => 'เคล็ดลับ';

  @override
  String get tipSwitchBabies => 'เปลี่ยนเด็ก';

  @override
  String get tipSwitchBabiesDesc => 'แตะที่อวาตาร์ของเด็กด้านบนเพื่อเปลี่ยนหรือเพิ่มโปรไฟล์';

  @override
  String get tipSwipeDelete => 'ปัดซ้ายเพื่อลบ';

  @override
  String get tipSwipeDeleteDesc => 'ใช้ได้กับทั้งการ์ดวันและรายการย่อย';

  @override
  String get tipMultipleFeeds => 'บันทึกการให้นมหลายครั้ง';

  @override
  String get tipMultipleFeedsDesc => 'ในฟอร์มการให้นม แตะที่ «เพิ่มการให้นมอีกครั้ง» เพื่อบันทึกทั้งการดูดนมจากเต้าและขวดนมในครั้งเดียว';

  @override
  String get tipExportData => 'ส่งออกข้อมูล';

  @override
  String get tipExportDataDesc => 'ใช้ไอคอนแชร์บนหน้าหลักเพื่อส่งออกข้อมูลทั้งหมดเป็น JSON';

  @override
  String get tipTapToEdit => 'แตะที่รายการใดก็ได้เพื่อแก้ไข';

  @override
  String get babiesTitle => 'เด็ก ๆ';

  @override
  String get addBaby => 'เพิ่มเด็ก';

  @override
  String get editProfile => 'แก้ไขโปรไฟล์';

  @override
  String get babyNameRequired => 'ชื่อ *';

  @override
  String get babyDobOptional => 'วันเกิด (ไม่บังคับ)';

  @override
  String babyBornOn(String date) {
    return 'เกิด $date';
  }

  @override
  String get genderUnknown => 'ไม่ระบุ';

  @override
  String get genderBoy => 'ชาย';

  @override
  String get genderGirl => 'หญิง';

  @override
  String get cannotDeleteOnlyProfile => 'ไม่สามารถลบโปรไฟล์เด็กเพียงโปรไฟล์เดียวได้';

  @override
  String deleteProfileTitle(String name) {
    return 'ลบ $name?';
  }

  @override
  String get deleteProfileContent => 'ข้อมูลทั้งหมดของเด็กนี้จะถูกลบอย่างถาวร';

  @override
  String get graphsTitle => 'กราฟ';

  @override
  String get graphsTabDaily => 'รายวัน';

  @override
  String get graphsTabGrowth => 'การเจริญเติบโต';

  @override
  String get graphsTabHealth => 'สุขภาพ';

  @override
  String get graphsTotalFeeds => 'จำนวนการให้นมทั้งหมด';

  @override
  String get graphsAvgPerDay => 'เฉลี่ย/วัน';

  @override
  String get graphsTotalDiapers => 'ผ้าอ้อม';

  @override
  String get graphsTotalMilk => 'ปริมาณนมทั้งหมด';

  @override
  String get graphsTotalSleep => 'ระยะเวลานอนทั้งหมด';

  @override
  String get graphsAvgSleep => 'ค่าเฉลี่ยนอน/วัน';

  @override
  String get graphsFeedsPerDay => 'การให้นมต่อวัน';

  @override
  String get graphsDiapersPerDay => 'ผ้าอ้อมต่อวัน';

  @override
  String get graphsMilkPerDay => 'นมต่อวัน (มล.)';

  @override
  String get graphsSleepPerDay => 'การนอนต่อวัน (ชั่วโมง)';

  @override
  String get graphsWeightOverTime => 'น้ำหนักตามช่วงเวลา';

  @override
  String get graphsTempOverTime => 'อุณหภูมิตามช่วงเวลา';

  @override
  String graphsMaxLabel(String value) {
    return 'สูงสุด: $value';
  }

  @override
  String graphsMinLabel(String value) {
    return 'ต่ำสุด: $value';
  }

  @override
  String get graphsNoWeightData => 'ยังไม่มีรายการน้ำหนัก\nบันทึกน้ำหนักจากรายการของวัน';

  @override
  String get graphsNoTempData => 'ยังไม่มีรายการอุณหภูมิ\nบันทึกอุณหภูมิจากวันใดวันหนึ่ง';

  @override
  String get timeLabel => 'เวลา';

  @override
  String get noColourRecorded => 'ไม่มีการบันทึกสี';

  @override
  String get noDetails => 'ไม่มีรายละเอียด';

  @override
  String ageDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count วัน',
      one: '1 วัน',
    );
    return '$_temp0';
  }

  @override
  String ageMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count เดือน',
      one: '1 เดือน',
    );
    return '$_temp0';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years ปี $months เดือน';
  }
}
