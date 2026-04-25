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
  String get navMilestones => 'เหตุการณ์สำคัญ';

  @override
  String get navSettings => 'การตั้งค่า';

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
  String get actionLog => 'บันทึก';

  @override
  String get cannotUndo => 'ไม่สามารถยกเลิกการกระทำนี้ได้';

  @override
  String get noData => 'ไม่มีข้อมูล';

  @override
  String get noNotes => 'ไม่มีบันทึกย่อ';

  @override
  String get noDetails => 'ไม่มีรายละเอียด';

  @override
  String get optional => '(ไม่บังคับ)';

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
    return '$count เหตุการณ์';
  }

  @override
  String get deleteDayTitle => 'ลบวันนี้?';

  @override
  String deleteDayContent(String date) {
    return 'ลบ $date และข้อมูลทั้งหมดในวันนี้? ไม่สามารถยกเลิกได้';
  }

  @override
  String get rashRecorded => 'บันทึกผื่นผ้าอ้อมแล้ว';

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
  String get entryTypeTummyTime => 'การนอนคว่ำ';

  @override
  String get entryTypeMedication => 'ยา';

  @override
  String get entryTypeDoctorVisit => 'พบแพทย์';

  @override
  String get entryTypeNote => 'บันทึกประจำวัน / ไดอารี่';

  @override
  String get entryTypePumping => 'การปั๊มนม';

  @override
  String get entryTypeBath => 'อาบน้ำ';

  @override
  String get diaperPeePoo => 'ผ้าอ้อม — ปัสสาวะ + อุจจาระ';

  @override
  String get diaperPee => 'ผ้าอ้อม — ปัสสาวะ';

  @override
  String get diaperPoo => 'ผ้าอ้อม — อุจจาระ';

  @override
  String get diaperChange => 'เปลี่ยนผ้าอ้อม';

  @override
  String get editDiaper => 'แก้ไขผ้าอ้อม';

  @override
  String get diaperContents => 'สิ่งที่อยู่ในผ้าอ้อม';

  @override
  String get diaperNone => 'ไม่มี';

  @override
  String get diaperPeeLabel => 'ปัสสาวะ';

  @override
  String get diaperPooLabel => 'อุจจาระ';

  @override
  String get diaperBoth => 'ทั้งสองอย่าง';

  @override
  String get diaperConsistency => 'ความเหลว';

  @override
  String get consistencyHard => 'แข็ง / เป็นเม็ด';

  @override
  String get consistencyHardHint => 'ท้องผูก';

  @override
  String get consistencyFirm => 'ค่อนข้างแข็ง';

  @override
  String get consistencyFirmHint => 'แข็งเล็กน้อย';

  @override
  String get consistencyNormal => 'ปกติ';

  @override
  String get consistencyNormalHint => 'สุขภาพดี';

  @override
  String get consistencySoft => 'นิ่ม';

  @override
  String get consistencySoftHint => 'นิ่มเล็กน้อย';

  @override
  String get consistencyLoose => 'เหลว / เป็นเมือก';

  @override
  String get consistencyLooseHint => 'สังเกตอาการ';

  @override
  String get consistencyWatery => 'เป็นน้ำ';

  @override
  String get consistencyWateryHint => 'ท้องเสีย';

  @override
  String get warnConstipation => 'สัญญาณของอาการท้องผูก — สังเกตอย่างใกล้ชิด';

  @override
  String get warnDiarrhea => 'สัญญาณของอาการท้องเสีย — สังเกตอย่างใกล้ชิด';

  @override
  String get pooColourLabel => 'สี (แตะเพื่อเลือก)';

  @override
  String get pooColourAbnormal => '⚠️ ผิดปกติ (สีซีด)';

  @override
  String get pooColourNormal => '✅ ปกติ';

  @override
  String pooColourSelected(String label) {
    return 'ที่เลือก: $label';
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
  String get rashCreamUsed => 'ใช้ครีมทาผื่นแล้ว';

  @override
  String get rashCreamCustomLabel => 'ชื่อครีม / ยาทา';

  @override
  String get rashFollowUpTitle => '⚠️ การติดตามผลผื่น';

  @override
  String get rashFollowUpQuestion => 'ผ้าอ้อมครั้งล่าสุดบันทึกว่ามีผื่น ดีขึ้นหรือไม่?';

  @override
  String get rashImproved => 'ใช่ ดีขึ้น';

  @override
  String get rashNoChange => 'ไม่เปลี่ยนแปลง / แย่ลง';

  @override
  String get addFeeding => 'เพิ่มการให้นม';

  @override
  String get editFeeding => 'แก้ไขการให้นม';

  @override
  String feedLabel(int number) {
    return 'การให้นม $number';
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
  String get feedBreastMilk => 'นมแม่';

  @override
  String get feedFormula => 'นมผง';

  @override
  String get feedFormulaBrand => 'ยี่ห้อนมผง';

  @override
  String get feedFormulaBrandCustom => 'ชื่อยี่ห้อนมผง';

  @override
  String get feedDurationMinutes => 'ระยะเวลา (นาที)';

  @override
  String get addAnotherFeed => 'เพิ่มการให้นมอีกครั้ง';

  @override
  String get bottleBreastMilk => 'ขวดนม — นมแม่';

  @override
  String get bottleFormula => 'ขวดนม — นมผง';

  @override
  String get breastfeedingSuckle => 'ให้นมแม่ (ดูดจากเต้า)';

  @override
  String get logSleep => 'บันทึกการนอน';

  @override
  String get editSleep => 'แก้ไขการนอน';

  @override
  String get sleepStart => 'เริ่มนอน';

  @override
  String get sleepWakeUp => 'ตื่นนอน';

  @override
  String sleepDuration(String duration) {
    return 'ระยะเวลา: $duration';
  }

  @override
  String get sleepInvalidTimes => 'เวลาไม่ถูกต้อง';

  @override
  String get sleepWrapsNextDay => '(สิ้นสุดในวันถัดไป)';

  @override
  String get sleepNotes => 'บันทึกย่อ (ไม่บังคับ)';

  @override
  String get sleepNotesHint => 'เช่น กระสับกระส่าย ตื่นสั้นๆ...';

  @override
  String get sleepNoNotes => 'ไม่มีบันทึกย่อ';

  @override
  String sleepHoursShort(int h, int m) {
    return '$hชม. $mน.';
  }

  @override
  String get logTemperature => 'บันทึกอุณหภูมิ';

  @override
  String get editTemperature => 'แก้ไขอุณหภูมิ';

  @override
  String get temperatureLabel => 'อุณหภูมิ';

  @override
  String get tempSeverityLow => 'อุณหภูมิต่ำ — สังเกตอาการ';

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
  String get tempFeverWarning => '⚠️ หากทารกอายุต่ำกว่า 3 เดือนมีไข้ ควรปรึกษากุมารแพทย์เสมอ';

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
    return '$count วัน';
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
    return '$sign$amount ในช่วงเวลา';
  }

  @override
  String get tummyTimeLog => 'บันทึกการนอนคว่ำ';

  @override
  String get tummyTimeEdit => 'แก้ไขการนอนคว่ำ';

  @override
  String get tummyTimeStart => 'เวลาเริ่ม';

  @override
  String get tummyTimeEnd => 'เวลาสิ้นสุด';

  @override
  String get tummyTimeTip => 'การนอนคว่ำช่วยเสริมสร้างกล้ามเนื้อคอและไหล่';

  @override
  String get medicationLog => 'บันทึกยา';

  @override
  String get medicationEdit => 'แก้ไขยา';

  @override
  String get medicationName => 'ชื่อยา *';

  @override
  String get medicationDose => 'ขนาดยา';

  @override
  String get medicationUnit => 'หน่วย';

  @override
  String get medicationCommon => 'ยาที่พบบ่อย';

  @override
  String get medicationWarning => 'ปฏิบัติตามคำแนะนำการใช้ยาตามน้ำหนัก/อายุเสมอ อย่าให้เกินความถี่ที่แนะนำ';

  @override
  String get medicationNotes => 'บันทึกย่อ (ไม่บังคับ)';

  @override
  String get medicationNotesHint => 'เช่น สาเหตุ ปฏิกิริยา...';

  @override
  String get doctorVisitLog => 'พบแพทย์';

  @override
  String get doctorVisitEdit => 'แก้ไขการพบแพทย์';

  @override
  String get doctorName => 'ชื่อแพทย์ / คลินิก';

  @override
  String get doctorVisitReason => 'สาเหตุที่พบแพทย์';

  @override
  String get doctorVisitMeasurements => 'การวัด (ไม่บังคับ)';

  @override
  String get doctorVisitNotes => 'บันทึกย่อ';

  @override
  String get doctorVisitNotesHint => 'เช่น วัคซีนที่ได้รับ คำแนะนำของแพทย์...';

  @override
  String get measurementWeightKg => 'น้ำหนัก (กก.)';

  @override
  String get measurementWeightLbs => 'น้ำหนัก (ปอนด์)';

  @override
  String get measurementHeightCm => 'ส่วนสูง / ความยาว (ซม.)';

  @override
  String get measurementHeadCm => 'เส้นรอบวงศีรษะ (ซม.)';

  @override
  String get dailyNoteLog => 'บันทึกประจำวัน';

  @override
  String get dailyNoteEdit => 'แก้ไขบันทึก';

  @override
  String get dailyNoteTitle => 'หัวข้อ (ไม่บังคับ)';

  @override
  String get dailyNoteText => 'บันทึก';

  @override
  String get dailyNoteHint => 'วันนี้เกิดอะไรขึ้น? ครั้งแรกที่พลิกตัว? เช้าที่หงุดหงิด?';

  @override
  String get dailyNoteTags => 'แท็กด่วน';

  @override
  String get pumpingLog => 'บันทึกการปั๊มนม';

  @override
  String get pumpingEdit => 'แก้ไขการปั๊มนม';

  @override
  String get pumpingLeft => 'เต้านมซ้าย (มล.)';

  @override
  String get pumpingRight => 'เต้านมขวา (มล.)';

  @override
  String get pumpingTotal => 'ปริมาณที่ปั๊มได้ทั้งหมด';

  @override
  String get pumpingDuration => 'ระยะเวลา (นาที)';

  @override
  String get pumpingStored => 'เก็บ / แช่แข็ง';

  @override
  String get pumpingNotes => 'บันทึกย่อ (ไม่บังคับ)';

  @override
  String get pumpingSessionTitle => 'การปั๊มนม';

  @override
  String pumpingTotalMl(int ml) {
    return 'รวม $ml มล.';
  }

  @override
  String get bathLog => 'บันทึกการอาบน้ำ';

  @override
  String get bathEdit => 'แก้ไขการอาบน้ำ';

  @override
  String get bathType => 'ประเภทการอาบน้ำ';

  @override
  String get bathTypeSponge => 'อาบน้ำด้วยฟองน้ำ';

  @override
  String get bathTypeTub => 'อาบน้ำในอ่าง';

  @override
  String get bathTypeShower => 'ฝักบัว';

  @override
  String get bathNotes => 'บันทึกย่อ (ไม่บังคับ)';

  @override
  String get bathProducts => 'ผลิตภัณฑ์ที่ใช้ (ไม่บังคับ)';

  @override
  String get vaccineTitle => 'วัคซีน';

  @override
  String get vaccineTabGiven => 'ที่ได้รับแล้ว';

  @override
  String get vaccineTabSchedule => 'ตารางการฉีด';

  @override
  String get vaccineLog => 'บันทึกวัคซีน';

  @override
  String get vaccineEdit => 'แก้ไขวัคซีน';

  @override
  String get vaccineName => 'ชื่อวัคซีน';

  @override
  String get vaccineBrand => 'ยี่ห้อ / ผู้ผลิต (ไม่บังคับ)';

  @override
  String get vaccineDate => 'วันที่ฉีด';

  @override
  String get vaccineDose => 'ครั้งที่ (ไม่บังคับ)';

  @override
  String get vaccineSite => 'ตำแหน่งที่ฉีด (ไม่บังคับ)';

  @override
  String get vaccineNotes => 'บันทึกย่อ / ปฏิกิริยา';

  @override
  String vaccineDue(String age) {
    return 'กำหนดฉีดเมื่ออายุ $age';
  }

  @override
  String get vaccineGiven => 'ได้รับแล้ว';

  @override
  String get vaccineNoGiven => 'ยังไม่มีบันทึกวัคซีน';

  @override
  String get vaccineMarkGiven => 'ทำเครื่องหมายว่าได้รับแล้ว';

  @override
  String get whoChartTitle => 'แผนภูมิการเจริญเติบโตของ WHO';

  @override
  String get whoWeightForAge => 'น้ำหนักตามอายุ';

  @override
  String get whoHeightForAge => 'ส่วนสูง/ความยาวตามอายุ';

  @override
  String get whoHeadForAge => 'เส้นรอบวงศีรษะตามอายุ';

  @override
  String get whoGenderBoy => 'ชาย';

  @override
  String get whoGenderGirl => 'หญิง';

  @override
  String get whoNoData => 'ยังไม่มีการบันทึกการวัด\nบันทึกน้ำหนักจากรายการของวันเพื่อดูแผนภูมิ';

  @override
  String whoPercentileLabel(String p) {
    return 'P$p';
  }

  @override
  String get whoYourBaby => 'ลูกของคุณ';

  @override
  String whoAgeMonths(int n) {
    return '$n เดือน';
  }

  @override
  String get whoNoBirthDate => 'ตั้งค่าวันเกิดของเด็กในโปรไฟล์เพื่อดูแผนภูมิตามอายุ';

  @override
  String get notifTitle => 'การแจ้งเตือน';

  @override
  String get notifFeedingReminder => 'การแจ้งเตือนการให้นม';

  @override
  String notifFeedingReminderDesc(int hours) {
    return 'แจ้งเตือนฉันหลังจาก $hours ชั่วโมงหากไม่มีการบันทึกการให้นม';
  }

  @override
  String get notifDiaperReminder => 'การแจ้งเตือนผ้าอ้อม';

  @override
  String notifDiaperReminderDesc(int hours) {
    return 'แจ้งเตือนฉันหลังจาก $hours ชั่วโมงหากไม่มีการบันทึกผ้าอ้อม';
  }

  @override
  String get notifMedicationReminder => 'การแจ้งเตือนยา';

  @override
  String get notifEnabled => 'เปิดการแจ้งเตือนแล้ว';

  @override
  String get notifDisabled => 'ปิดการแจ้งเตือนแล้ว';

  @override
  String get notifPermissionRequired => 'โปรดเปิดการแจ้งเตือนในการตั้งค่าอุปกรณ์ของคุณ';

  @override
  String get exportTitle => 'ส่งออกและสำรองข้อมูล';

  @override
  String get exportJson => 'ส่งออกเป็น JSON';

  @override
  String get exportPdf => 'ส่งออกเป็น PDF';

  @override
  String get exportPdfDesc => 'สรุปที่อ่านง่ายสำหรับกุมารแพทย์ของคุณ';

  @override
  String get exportGoogleDrive => 'สำรองข้อมูลไปยัง Google Drive';

  @override
  String get exportGenerating => 'กำลังสร้างรายงาน...';

  @override
  String get milestoneTitle => 'เหตุการณ์สำคัญ';

  @override
  String get milestoneTabAchieved => 'ที่บรรลุแล้ว';

  @override
  String get milestoneTabUpcoming => 'ที่จะถึง';

  @override
  String get milestoneCustomAdd => 'เหตุการณ์สำคัญที่กำหนดเอง';

  @override
  String get milestoneDeleteTitle => 'ลบเหตุการณ์สำคัญนี้?';

  @override
  String get milestoneEdit => 'แก้ไขเหตุการณ์สำคัญ';

  @override
  String get milestoneAdd => 'เพิ่มเหตุการณ์สำคัญ';

  @override
  String get milestoneName => 'ชื่อเหตุการณ์สำคัญ *';

  @override
  String get milestoneDate => 'วันที่บรรลุ';

  @override
  String get milestoneNotes => 'บันทึกย่อ (ไม่บังคับ)';

  @override
  String get milestoneNotesHint => 'รายละเอียดที่น่าจดจำ...';

  @override
  String get milestoneNoAchieved => 'ยังไม่มีบันทึกเหตุการณ์สำคัญ';

  @override
  String get milestoneAllDone => 'บรรลุเหตุการณ์สำคัญที่ตั้งไว้ทั้งหมดแล้ว! 🎉';

  @override
  String get milestoneFirstSmile => '😊 ยิ้มครั้งแรก';

  @override
  String get milestoneFirstLaugh => '😂 หัวเราะครั้งแรก';

  @override
  String get milestoneFirstTooth => '🦷 ฟันซี่แรก';

  @override
  String get milestoneRolledBackTummy => '🔄 พลิกตัวจากหงายเป็นคว่ำ';

  @override
  String get milestoneRolledTummyBack => '🔄 พลิกตัวจากคว่ำเป็นหงาย';

  @override
  String get milestoneSatUnsupported => '🧸 นั่งได้โดยไม่ต้องใช้มือจับ';

  @override
  String get milestoneStartedCrawling => '🐣 เริ่มคลาน';

  @override
  String get milestonePulledToStand => '🏋️ ดึงตัวยืน';

  @override
  String get milestoneFirstSteps => '👣 ก้าวแรก';

  @override
  String get milestoneFirstWord => '💬 คำแรก';

  @override
  String get milestoneFirstSolidFood => '🥣 อาหารแข็งมื้อแรก';

  @override
  String get milestoneFirstHaircut => '✂️ ตัดผมครั้งแรก';

  @override
  String get milestoneSleptThroughNight => '🌙 นอนทั้งคืน';

  @override
  String get milestoneWavedBye => '👋 โบกมือบ๊ายบาย';

  @override
  String get milestoneClappedHands => '👏 ปรบมือ';

  @override
  String get milestoneFirstBirthday => '🎂 วันเกิดปีแรก';

  @override
  String get settingsTitle => 'การตั้งค่า';

  @override
  String get settingsAppearance => 'รูปลักษณ์';

  @override
  String get settingsDarkMode => 'โหมดมืด';

  @override
  String get settingsDarkActive => 'ธีมมืดทำงานอยู่';

  @override
  String get settingsLightActive => 'ธีมสว่างทำงานอยู่';

  @override
  String get settingsUnits => 'หน่วย';

  @override
  String get settingsWeightUnit => 'หน่วยน้ำหนัก';

  @override
  String get settingsTempUnit => 'หน่วยอุณหภูมิ';

  @override
  String get settingsLanguage => 'ภาษา';

  @override
  String get settingsNotifications => 'การแจ้งเตือนและเครื่องเตือนความจำ';

  @override
  String get settingsExport => 'ส่งออกและสำรองข้อมูล';

  @override
  String get settingsTips => 'เคล็ดลับ';

  @override
  String get tipSwitchBabies => 'สลับเด็ก';

  @override
  String get tipSwitchBabiesDesc => 'แตะที่รูปเด็กด้านบนเพื่อสลับหรือเพิ่มโปรไฟล์เด็ก';

  @override
  String get tipSwipeDelete => 'ปัดซ้ายเพื่อลบ';

  @override
  String get tipSwipeDeleteDesc => 'ใช้ได้กับแผ่นวันและรายการแต่ละรายการ';

  @override
  String get tipTapToEdit => 'แตะรายการใดก็ได้เพื่อแก้ไข';

  @override
  String get tipMultipleFeeds => 'บันทึกการให้นมหลายครั้ง';

  @override
  String get tipMultipleFeedsDesc => 'ในฟอร์มการให้นม ให้แตะ \"เพิ่มการให้นมอีกครั้ง\" เพื่อบันทึกการให้นมจากเต้าและขวดในครั้งเดียว';

  @override
  String get tipExportData => 'ส่งออกข้อมูล';

  @override
  String get tipExportDataDesc => 'ใช้ไอคอนแชร์บนหน้าหลักเพื่อส่งออกข้อมูลทั้งหมดเป็น JSON';

  @override
  String get babiesTitle => 'เด็ก';

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
  String get deleteProfileContent => 'ข้อมูลทั้งหมดของเด็กคนนี้จะถูกลบอย่างถาวร';

  @override
  String get graphsTitle => 'กราฟ';

  @override
  String get graphsTabDaily => 'รายวัน';

  @override
  String get graphsTabGrowth => 'การเจริญเติบโต';

  @override
  String get graphsTabHealth => 'สุขภาพ';

  @override
  String get graphsTabWho => 'แผนภูมิ WHO';

  @override
  String get graphsTotalFeeds => 'จำนวนการให้นมทั้งหมด';

  @override
  String get graphsAvgPerDay => 'เฉลี่ย/วัน';

  @override
  String get graphsTotalDiapers => 'ผ้าอ้อม';

  @override
  String get graphsTotalMilk => 'ปริมาณนมทั้งหมด';

  @override
  String get graphsTotalSleep => 'เวลานอนทั้งหมด';

  @override
  String get graphsAvgSleep => 'เวลาเฉลี่ยที่นอน/วัน';

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
  String get graphsNoWeightData => 'ยังไม่มีบันทึกน้ำหนัก\nบันทึกน้ำหนักจากรายการของวัน';

  @override
  String get graphsNoTempData => 'ยังไม่มีบันทึกอุณหภูมิ\nบันทึกอุณหภูมิจากวันใดวันหนึ่ง';

  @override
  String get timeLabel => 'เวลา';

  @override
  String get noColourRecorded => 'ไม่มีบันทึกสี';

  @override
  String ageDay(int count) {
    return '$count วัน';
  }

  @override
  String ageMonth(int count) {
    return '$count เดือน';
  }

  @override
  String ageYearMonth(int years, int months) {
    return '$years ปี $months เดือน';
  }
}
