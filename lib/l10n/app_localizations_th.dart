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
  String get exportJsonDesc => 'ข้อมูลดิบสำหรับสำรอง';

  @override
  String get exportPdf => 'ส่งออกเป็น PDF';

  @override
  String get exportPdfDesc => 'สรุปที่อ่านง่ายสำหรับกุมารแพทย์ของคุณ';

  @override
  String get importJson => 'นำเข้าจาก JSON';

  @override
  String get importJsonDesc => 'กู้คืนจากไฟล์สำรองข้อมูล';

  @override
  String get importDialogTitle => 'นำเข้าข้อมูลหรือไม่?';

  @override
  String get importDialogBody => 'การผสานจะเพิ่มรายการจากไฟล์เข้ากับข้อมูลที่มีอยู่ของคุณ การแทนที่ทั้งหมดจะลบข้อมูลที่มีอยู่ของคุณก่อน';

  @override
  String get importMerge => 'ผสาน';

  @override
  String get importReplaceAll => 'แทนที่ทั้งหมด';

  @override
  String get importSuccess => 'นำเข้าเสร็จสมบูรณ์';

  @override
  String get importInvalidFile => 'ไฟล์นี้ดูเหมือนจะไม่ใช่ไฟล์ส่งออกของ Baby Tracker';

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
  String get milestoneAllDone => 'บรรลุเหตุการณ์สำคัญที่ตั้งไว้ทั้งหมดแล้ว!';

  @override
  String get milestoneFirstSmile => 'ยิ้มครั้งแรก';

  @override
  String get milestoneFirstLaugh => 'หัวเราะครั้งแรก';

  @override
  String get milestoneFirstTooth => 'ฟันซี่แรก';

  @override
  String get milestoneRolledBackTummy => 'พลิกตัวจากหงายเป็นคว่ำ';

  @override
  String get milestoneRolledTummyBack => 'พลิกตัวจากคว่ำเป็นหงาย';

  @override
  String get milestoneSatUnsupported => 'นั่งได้โดยไม่ต้องใช้มือจับ';

  @override
  String get milestoneStartedCrawling => 'เริ่มคลาน';

  @override
  String get milestonePulledToStand => 'ดึงตัวยืน';

  @override
  String get milestoneFirstSteps => 'ก้าวแรก';

  @override
  String get milestoneFirstWord => 'คำแรก';

  @override
  String get milestoneFirstSolidFood => 'อาหารแข็งมื้อแรก';

  @override
  String get milestoneFirstHaircut => 'ตัดผมครั้งแรก';

  @override
  String get milestoneSleptThroughNight => 'นอนทั้งคืน';

  @override
  String get milestoneWavedBye => 'โบกมือบ๊ายบาย';

  @override
  String get milestoneClappedHands => 'ปรบมือ';

  @override
  String get milestoneFirstBirthday => 'วันเกิดปีแรก';

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
  String get settingsVolumeUnit => 'Milk volume unit';

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
  String get graphsMilkPerDayMl => 'Milk per day (ml)';

  @override
  String get graphsMilkPerDayOz => 'Milk per day (oz)';

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

  @override
  String medicationLabel(String name) {
    return 'ยา: $name';
  }

  @override
  String get doctorVisitDefaultReason => 'การนัดพบ';

  @override
  String doctorVisitLabel(String reason) {
    return 'พบแพทย์ — $reason';
  }

  @override
  String get noteDefaultTitle => '📝 บันทึก';

  @override
  String noteLabel(String title) {
    return '📝 $title';
  }

  @override
  String doctorVisitWithDoctor(String doctor) {
    return 'แพทย์: $doctor';
  }

  @override
  String get doctorVisitNoDoctorRecorded => 'ไม่ได้บันทึกแพทย์';

  @override
  String get summaryPoosLabel => 'อุจจาระ';

  @override
  String get summaryPeesLabel => 'ปัสสาวะ';

  @override
  String get summaryMilkLabel => 'นม มล.';

  @override
  String get summaryMilkLabelMl => 'Milk ml';

  @override
  String get summaryMilkLabelOz => 'Milk oz';

  @override
  String get summaryBreastLabel => 'นมแม่ นาที';

  @override
  String get summarySleepLabel => 'การนอน';

  @override
  String get settingsOledMode => 'OLED (ดำสนิท)';

  @override
  String get settingsOledModeDesc => 'ใช้พื้นหลังสีดำสนิทเพื่อประหยัดแบตเตอรี่บนหน้าจอ OLED';

  @override
  String get settingsImmersiveMode => 'โหมดเต็มหน้าจอ';

  @override
  String get settingsImmersiveModeDesc => 'ซ่อนแถบสถานะและแถบนำทางของระบบ';

  @override
  String get navVaccinationsEntry => 'วัคซีน';

  @override
  String get whoChartsEntry => 'กราฟการเจริญเติบโตของ WHO';

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
