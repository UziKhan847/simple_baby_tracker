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
  String get exportJson => 'ส่งออกข้อมูลสำรอง';

  @override
  String get exportJsonDesc => 'ข้อมูลและรูปภาพทั้งหมดในไฟล์ .zip ไฟล์เดียว';

  @override
  String get exportPdf => 'ส่งออกเป็น PDF';

  @override
  String get exportPdfDesc => 'สรุปที่อ่านง่ายสำหรับกุมารแพทย์ของคุณ';

  @override
  String get importJson => 'กู้คืนข้อมูลสำรอง';

  @override
  String get importJsonDesc => 'จากไฟล์สำรอง .zip (หรือไฟล์ส่งออก .json แบบเก่า)';

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
  String get settingsVolumeUnit => 'หน่วยปริมาณนม';

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
  String get tipExportDataDesc => 'แตะไอคอนแชร์ในหน้าหลักเพื่อสำรองข้อมูลและรูปภาพทั้งหมดไว้ในไฟล์เดียว';

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
  String get graphsMilkPerDayMl => 'นมต่อวัน (มล.)';

  @override
  String get graphsMilkPerDayOz => 'นมต่อวัน (ออนซ์)';

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
  String get summaryMilkLabelMl => 'นม มล.';

  @override
  String get summaryMilkLabelOz => 'นม ออนซ์';

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
  String get medicationEditTitle => 'แก้ไขยา';

  @override
  String get medicationLogTitle => 'บันทึกยา';

  @override
  String get medicationYourCourses => 'การรักษาของคุณ';

  @override
  String get medicationManageCourses => 'จัดการการรักษา';

  @override
  String get medicationNameRequired => 'ชื่อยา *';

  @override
  String get medicationDosageWarning => 'ให้ยาตามขนาดที่เหมาะกับน้ำหนัก/อายุเสมอ อย่าให้บ่อยเกินกว่าที่แนะนำ';

  @override
  String get medicationNotesOptional => 'บันทึก (ไม่บังคับ)';

  @override
  String timeAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count นาทีที่แล้ว',
      one: '1 นาทีที่แล้ว',
    );
    return '$_temp0';
  }

  @override
  String timeAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ชั่วโมงที่แล้ว',
      one: '1 ชั่วโมงที่แล้ว',
    );
    return '$_temp0';
  }

  @override
  String timeAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count วันที่แล้ว',
      one: '1 วันที่แล้ว',
    );
    return '$_temp0';
  }

  @override
  String medicationLastGivenAgo(String ago) {
    return 'ให้ล่าสุด $ago';
  }

  @override
  String get medicationNeverGiven => 'ยังไม่ได้ให้';

  @override
  String medicationDosesToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'วันนี้ $count ครั้ง',
      one: 'วันนี้ 1 ครั้ง',
      zero: 'วันนี้ยังไม่ได้ให้ยา',
    );
    return '$_temp0';
  }

  @override
  String medicationTooSoonWarning(int hours) {
    return 'ยาครั้งถัดไปควรห่างจากครั้งก่อน $hours ชม.';
  }

  @override
  String medicationMaxPerDayWarning(int max) {
    return 'ให้ครบ $max ครั้ง/วันของการรักษานี้แล้ว';
  }

  @override
  String get medicationEditCourse => 'แก้ไขการรักษา';

  @override
  String get medicationNewCourse => 'การรักษาใหม่';

  @override
  String get medicationReasonOptional => 'สาเหตุ (ไม่บังคับ)';

  @override
  String get medicationIntervalHoursOptional => 'ให้ซ้ำทุก (ชั่วโมง, ไม่บังคับ)';

  @override
  String get medicationMaxPerDayOptional => 'สูงสุดต่อวัน (ไม่บังคับ)';

  @override
  String get medicationRemindNextDose => 'เตือนเมื่อถึงเวลาให้ยาครั้งถัดไป';

  @override
  String medicationEndCourseTitle(String name) {
    return 'สิ้นสุด $name ไหม?';
  }

  @override
  String get medicationEndCoursePrompt => 'ผลเป็นอย่างไร?';

  @override
  String get medicationDeleteCourseTitle => 'ลบการรักษานี้ไหม?';

  @override
  String get medicationResultWorked => 'ได้ผล';

  @override
  String get medicationResultPartlyWorked => 'ได้ผลบางส่วน';

  @override
  String get medicationResultDidntWork => 'ไม่ได้ผล';

  @override
  String get medicationResultSideEffects => 'มีผลข้างเคียง';

  @override
  String get medicationResultNone => 'ยังไม่ประเมิน';

  @override
  String get medicationsTitle => 'ยา';

  @override
  String medicationActiveTab(int count) {
    return 'กำลังใช้ ($count)';
  }

  @override
  String medicationPastTab(int count) {
    return 'ที่ผ่านมา ($count)';
  }

  @override
  String get medicationNoActiveCourses => 'ไม่มีการรักษาที่กำลังใช้\nเริ่มใหม่ด้วยปุ่ม +';

  @override
  String get medicationNoPastCourses => 'ยังไม่มีการรักษาที่ผ่านมา';

  @override
  String medicationTimesGiven(int count) {
    return 'ให้แล้ว $count×';
  }

  @override
  String medicationLastGivenShort(String date) {
    return 'ล่าสุด: $date';
  }

  @override
  String medicationNextDueShort(String time) {
    return 'ครั้งถัดไป $time';
  }

  @override
  String get medicationEndCourse => 'สิ้นสุดการรักษา';

  @override
  String feedLastSideHint(String side) {
    return 'ครั้งที่แล้ว: $side';
  }

  @override
  String get feedSideLeft => 'ซ้าย';

  @override
  String get feedSideRight => 'ขวา';

  @override
  String get feedSideBoth => 'ทั้งสองข้าง';

  @override
  String get feedSideLeftMinutes => 'ซ้าย (นาที)';

  @override
  String get feedSideRightMinutes => 'ขวา (นาที)';

  @override
  String get timeAgoJustNow => 'เมื่อสักครู่';

  @override
  String get timeUntilOverdue => 'เลยเวลาแล้ว';

  @override
  String timeUntilMinutes(int count) {
    return 'อีก $count นาที';
  }

  @override
  String timeUntilHours(int count) {
    return 'อีก $count ชม.';
  }

  @override
  String timeUntilDays(int count) {
    return 'อีก $count วัน';
  }

  @override
  String get timerDiscardTitle => 'ทิ้งตัวจับเวลานี้ไหม?';

  @override
  String get timerDiscard => 'ทิ้ง';

  @override
  String timerFeedingRunning(String side) {
    return 'ให้นม · $side';
  }

  @override
  String get timerSleepRunning => 'ตัวจับเวลานอนกำลังทำงาน';

  @override
  String get timerSwitchSide => 'สลับข้าง';

  @override
  String get timerStop => 'หยุด';

  @override
  String get sinceLastFeed => 'ให้นมล่าสุด';

  @override
  String get sinceLastDiaper => 'ผ้าอ้อมล่าสุด';

  @override
  String get sinceAwake => 'ตื่นอยู่';

  @override
  String get sinceAsleep => 'หลับอยู่';

  @override
  String nextDoseDue(String name) {
    return 'ถึงเวลา $name';
  }

  @override
  String get weighConditionNaked => 'ไม่ใส่เสื้อผ้า';

  @override
  String get weighConditionDiaper => 'ใส่แต่ผ้าอ้อม';

  @override
  String get weighConditionLightClothes => 'เสื้อผ้าบาง';

  @override
  String get weighConditionDressed => 'ใส่เสื้อผ้า';

  @override
  String get weighCondition => 'ชั่งขณะใส่';

  @override
  String get growthMeasurementsOptional => 'การวัดอื่น ๆ (ไม่บังคับ)';

  @override
  String get growthHeightCm => 'ส่วนสูง (ซม.)';

  @override
  String get growthHeadCm => 'รอบศีรษะ (ซม.)';

  @override
  String weighConditionChangedWarning(String condition) {
    return 'ครั้งก่อนชั่งแบบ$condition — ส่วนต่างอาจไม่ได้มาจากการเติบโตอย่างเดียว';
  }

  @override
  String growthHeightValue(String cm) {
    return '$cm ซม.';
  }

  @override
  String growthHeadValue(String cm) {
    return 'ศีรษะ $cm ซม.';
  }

  @override
  String get growthHeightOverTime => 'ส่วนสูงตามเวลา';

  @override
  String get growthHeadOverTime => 'รอบศีรษะตามเวลา';

  @override
  String get graphsRecentWeighIns => 'การชั่งน้ำหนักล่าสุด';

  @override
  String get solidsAmountFewSpoons => 'ไม่กี่ช้อน';

  @override
  String get solidsAmountHalf => 'ครึ่งส่วน';

  @override
  String get solidsAmountFull => 'เต็มส่วน';

  @override
  String get solidsAmountTaste => 'แค่ชิม';

  @override
  String get solidsReactionMild => 'มีอาการเล็กน้อย';

  @override
  String get solidsReactionAllergic => 'แพ้อาหาร';

  @override
  String get solidsReactionNone => 'ไม่มีอาการ';

  @override
  String get solidsEditTitle => 'แก้ไขอาหารเสริม';

  @override
  String get solidsLogTitle => 'บันทึกอาหารเสริม';

  @override
  String get solidsFoodsLabel => 'อาหาร';

  @override
  String get solidsAddFoodHint => 'เพิ่มอาหาร';

  @override
  String get solidsAmount => 'ปริมาณ';

  @override
  String get solidsLiked => 'ชอบไหม?';

  @override
  String get solidsReaction => 'อาการ';

  @override
  String get solidsNotesOptional => 'บันทึก (ไม่บังคับ)';

  @override
  String get foodsTitle => 'อาหารที่ลองแล้ว';

  @override
  String get foodsEmpty => 'ยังไม่มีการบันทึกอาหารเสริม';

  @override
  String get foodsAllergensNotYet => 'สารก่อภูมิแพ้ที่พบบ่อยซึ่งยังไม่ได้ลอง';

  @override
  String foodsTriedCount(int count) {
    return 'ลองแล้ว $count อย่าง';
  }

  @override
  String foodsFirstTried(String date) {
    return 'ครั้งแรก: $date';
  }

  @override
  String foodsTimesEaten(int count) {
    return '$count×';
  }

  @override
  String get entryTypeSolids => 'อาหารเสริม';

  @override
  String get feedAmountOz => 'ปริมาณ (ออนซ์)';

  @override
  String notifFeedingReminderDescInterval(String interval) {
    return 'เตือนฉัน $interval หลังให้นมครั้งล่าสุด';
  }

  @override
  String notifDiaperReminderDescInterval(String interval) {
    return 'เตือนฉัน $interval หลังเปลี่ยนผ้าอ้อมครั้งล่าสุด';
  }

  @override
  String notifIntervalEvery(String interval) {
    return 'ทุก $interval';
  }

  @override
  String get notifIntervalTitle => 'ช่วงเวลาเตือน';

  @override
  String get notifIntervalHours => 'ชั่วโมง';

  @override
  String get notifIntervalMinutes => 'นาที';

  @override
  String notifIntervalTooShort(int minutes) {
    return 'อย่างน้อย $minutes นาที';
  }

  @override
  String get settingsFeeding => 'การให้นม';

  @override
  String get settingsTrackBottles => 'ติดตามขวดนม';

  @override
  String get settingsTrackBottlesDesc => 'เลือกว่าใช้ขวดไหน และชงไปเท่าไรเทียบกับที่ดื่ม';

  @override
  String get bottlesTitle => 'ขวดนมของฉัน';

  @override
  String get bottlesEmpty => 'ยังไม่มีขวดนม\nเพิ่มขวดที่คุณใช้ เพื่อเลือกได้ตอนบันทึกการให้นม';

  @override
  String get bottleAdd => 'เพิ่มขวดนม';

  @override
  String get bottleEdit => 'แก้ไขขวดนม';

  @override
  String get bottleLabel => 'ป้าย / หมายเลข (เช่น #3)';

  @override
  String get bottleBrand => 'ยี่ห้อ / ประเภท (ไม่บังคับ)';

  @override
  String get bottleCapacity => 'ความจุ (ไม่บังคับ)';

  @override
  String get bottleNipple => 'ขนาด / การไหลของจุก (ไม่บังคับ)';

  @override
  String get bottleMaterial => 'วัสดุ';

  @override
  String get bottleRetired => 'เลิกใช้แล้ว';

  @override
  String get bottleRetire => 'เลิกใช้';

  @override
  String get bottleUnretire => 'ใช้อีกครั้ง';

  @override
  String bottleDeleteTitle(String name) {
    return 'ลบ $name ไหม?';
  }

  @override
  String get bottleDeleteBody => 'การให้นมที่ผ่านมาจะยังเก็บปริมาณไว้ แต่จะไม่แสดงขวดนี้อีก หากต้องการซ่อนจากรายการแต่เก็บประวัติไว้ ให้ใช้ \"เลิกใช้\" แทน';

  @override
  String get feedPrepared => 'ชงไป';

  @override
  String get feedDrank => 'ดื่มไป';

  @override
  String feedLeftover(String amount) {
    return 'เหลือ $amount';
  }

  @override
  String get feedDrankMoreThanPrepared => 'มากกว่าที่ชงไว้?';

  @override
  String get feedWhichBottle => 'ขวดไหน?';

  @override
  String get feedNoBottlesYet => 'ยังไม่มีขวดนม — เพิ่มได้ที่ การตั้งค่า → ขวดนมของฉัน';

  @override
  String get photoPrivacyTitle => 'รูปภาพของคุณอยู่ในโทรศัพท์เครื่องนี้เท่านั้น';

  @override
  String get photoPrivacyBody => 'รูปภาพถูกเก็บไว้ในแอปนี้บนอุปกรณ์นี้เท่านั้น แอปไม่มีการเชื่อมต่ออินเทอร์เน็ต จึงไม่มีอะไรถูกอัปโหลดหรือแชร์ เว้นแต่คุณส่งออกข้อมูลสำรองเอง\n\nAndroid อาจขอสิทธิ์ใช้กล้องเมื่อคุณถ่ายรูปครั้งแรก';

  @override
  String get photoPrivacyContinue => 'ดำเนินการต่อ';

  @override
  String get photoTakePhoto => 'ถ่ายรูป';

  @override
  String get photoChooseFromGallery => 'เลือกจากแกลเลอรี';

  @override
  String get photoCaption => 'คำบรรยาย';

  @override
  String get photoCompare => 'แรกสุดกับล่าสุด';

  @override
  String get photoAddOtherDay => 'เพิ่มสำหรับวันอื่น';

  @override
  String get photoEmpty => 'ยังไม่มีรูป\nถ่ายรูปวันละรูปแล้วดูลูกน้อยเติบโต';

  @override
  String get photoToday => 'รูปวันนี้';

  @override
  String get photoAddToday => 'เพิ่มรูปวันนี้';

  @override
  String get photoReplace => 'แทนที่';

  @override
  String get photoDeleteTitle => 'ลบรูปนี้ไหม?';

  @override
  String get ageBeforeBirth => 'ก่อนคลอด';

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'อายุ $count วัน',
      one: 'อายุ 1 วัน',
      zero: 'วันเกิด',
    );
    return '$_temp0';
  }

  @override
  String ageMonthsDays(int months, int days) {
    return '$months ด. $days ว.';
  }

  @override
  String ageYearsMonths(int years, int months) {
    return '$years ปี $months ด.';
  }

  @override
  String get navMemories => 'ความทรงจำ';

  @override
  String get memoriesTabPhotos => 'รูปภาพ';

  @override
  String get milestoneNoAchievedHint => 'แตะ \"กำลังจะมาถึง\" เพื่อบันทึกเหตุการณ์ที่มีให้\nหรือใช้ปุ่มด้านล่างเพื่อเพิ่มเอง';

  @override
  String get skinTitle => 'ปัญหาผิวหนัง';

  @override
  String get skinNew => 'ปัญหาผิวหนังใหม่';

  @override
  String get skinEdit => 'แก้ไขปัญหาผิวหนัง';

  @override
  String skinTabActive(int count) {
    return 'กำลังเป็น ($count)';
  }

  @override
  String skinTabHealed(int count) {
    return 'หายแล้ว ($count)';
  }

  @override
  String get skinEmptyActive => 'ยังไม่มีปัญหาผิวหนังที่ติดตาม\nแตะ + เพื่อเริ่ม — เพิ่มรูปได้ทุกวันเพื่อให้คุณหมอเห็นการเปลี่ยนแปลง';

  @override
  String get skinEmptyHealed => 'ยังไม่มีที่หายแล้ว';

  @override
  String get skinUpdateDue => 'อัปเดตวันนี้';

  @override
  String skinSince(String date) {
    return 'ตั้งแต่ $date';
  }

  @override
  String skinDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count วัน',
      one: '1 วัน',
    );
    return '$_temp0';
  }

  @override
  String skinHealedOn(String date) {
    return 'หายเมื่อ $date';
  }

  @override
  String skinReminderAt(String time) {
    return 'เตือนทุกวันเวลา $time';
  }

  @override
  String get skinSeverityTrend => 'ความรุนแรงตามเวลา';

  @override
  String get skinNoUpdates => 'ยังไม่มีการอัปเดต เพิ่มของวันนี้เพื่อเริ่มไทม์ไลน์';

  @override
  String get skinExportPdf => 'ส่งออกให้คุณหมอ (PDF)';

  @override
  String get skinMarkHealed => 'ทำเครื่องหมายว่าหายแล้ว';

  @override
  String get skinReopen => 'ทำเครื่องหมายว่ากลับมาเป็นอีก';

  @override
  String get skinUpdateToday => 'เพิ่มการอัปเดตวันนี้';

  @override
  String get skinEditToday => 'แก้ไขการอัปเดตวันนี้';

  @override
  String skinDeleteTitle(String name) {
    return 'ลบ $name และการอัปเดตทั้งหมดไหม?';
  }

  @override
  String get skinDeleteUpdateTitle => 'ลบการอัปเดตนี้ไหม?';

  @override
  String skinTreatmentValue(String treatment) {
    return 'การรักษา: $treatment';
  }

  @override
  String get skinName => 'ปัญหา *';

  @override
  String get skinBodyArea => 'ตรงไหนของร่างกาย?';

  @override
  String get skinBegan => 'เริ่มเมื่อ';

  @override
  String get skinRemindDaily => 'เตือนให้อัปเดตทุกวัน';

  @override
  String get skinReminderTime => 'เวลาเตือน';

  @override
  String get skinUpdateTitle => 'อัปเดตผิวหนัง';

  @override
  String get skinSeverity => 'ดูเป็นอย่างไร?';

  @override
  String get skinSeverity0 => '0 · หายดี';

  @override
  String get skinSeverity1 => '1 · เล็กน้อย';

  @override
  String get skinSeverity2 => '2 · ปานกลาง';

  @override
  String get skinSeverity3 => '3 · รุนแรง';

  @override
  String get skinSeverity4 => '4 · รุนแรงมาก';

  @override
  String get skinTreatment => 'การรักษา (ไม่บังคับ)';

  @override
  String get skinTreatmentHint => 'เช่น ครีมบำรุง ไฮโดรคอร์ติโซน 1%';

  @override
  String get skinAddPhoto => 'เพิ่มรูป';

  @override
  String get skinCardNone => 'ติดตามผื่น ผิวอักเสบ หรือปัญหาผิวอื่น ๆ ทุกวัน พร้อมรูปสำหรับคุณหมอ';

  @override
  String skinCardDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count รายการต้องอัปเดตวันนี้',
      one: '1 รายการต้องอัปเดตวันนี้',
    );
    return '$_temp0';
  }

  @override
  String get backupPreparing => 'กำลังเตรียมข้อมูลสำรอง…';

  @override
  String get backupFailed => 'สร้างข้อมูลสำรองไม่สำเร็จ';

  @override
  String get backupSavedTo => 'บันทึกข้อมูลสำรองไว้ที่:';

  @override
  String get backupShareSubject => 'ข้อมูลสำรอง Baby Tracker';

  @override
  String importIncludesPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'มีรูป $count รูป',
      one: 'มีรูป 1 รูป',
    );
    return '$_temp0';
  }

  @override
  String get widgetFeed => 'ให้นม';

  @override
  String get widgetStopFeed => 'หยุดให้นม';

  @override
  String get widgetDiaper => 'ผ้าอ้อม';

  @override
  String get widgetSleep => 'นอน';

  @override
  String get widgetWakeUp => 'ตื่นแล้ว';

  @override
  String widgetFeedingFor(String duration) {
    return 'ให้นม $duration';
  }

  @override
  String widgetFedAgo(String ago) {
    return 'ให้นม $ago';
  }

  @override
  String get widgetNoFeedsYet => 'ยังไม่ได้ให้นม';

  @override
  String widgetChangedAgo(String ago) {
    return 'เปลี่ยน $ago';
  }

  @override
  String get widgetNoDiapersYet => 'ยังไม่ได้เปลี่ยนผ้าอ้อม';

  @override
  String widgetAsleepFor(String duration) {
    return 'หลับ $duration';
  }

  @override
  String widgetAwakeFor(String ago) {
    return 'ตื่น $ago';
  }

  @override
  String get widgetStopSleepFirst => 'หยุดตัวจับเวลานอนก่อน';

  @override
  String get widgetStopFeedFirst => 'หยุดตัวจับเวลาให้นมก่อน';

  @override
  String quickAddTitle(String name) {
    return 'เพิ่มสำหรับ $name';
  }

  @override
  String get quickAddOpenApp => 'เปิดแอป';

  @override
  String get foodPeanut => 'ถั่วลิสง';

  @override
  String get foodEgg => 'ไข่';

  @override
  String get foodDairy => 'ผลิตภัณฑ์นม';

  @override
  String get foodWheat => 'ข้าวสาลี';

  @override
  String get foodSoy => 'ถั่วเหลือง';

  @override
  String get foodFish => 'ปลา';

  @override
  String get foodShellfish => 'อาหารทะเลมีเปลือก';

  @override
  String get foodTreeNuts => 'ถั่วเปลือกแข็ง';

  @override
  String get foodSesame => 'งา';

  @override
  String get foodBanana => 'กล้วย';

  @override
  String get foodAvocado => 'อะโวคาโด';

  @override
  String get foodSweetPotato => 'มันเทศ';

  @override
  String get foodRiceCereal => 'ข้าวบด';

  @override
  String get foodOatmeal => 'ข้าวโอ๊ต';

  @override
  String get foodCarrot => 'แครอท';

  @override
  String get foodApple => 'แอปเปิล';

  @override
  String get foodPea => 'ถั่วลันเตา';

  @override
  String get symptomRash => 'ผื่น';

  @override
  String get symptomHives => 'ลมพิษ';

  @override
  String get symptomVomiting => 'อาเจียน';

  @override
  String get symptomDiarrhea => 'ท้องเสีย';

  @override
  String get symptomSwelling => 'บวม';

  @override
  String get doseUnitDrops => 'หยด';

  @override
  String get doseUnitTablets => 'เม็ด';

  @override
  String get bottleMaterialPlastic => 'พลาสติก';

  @override
  String get bottleMaterialGlass => 'แก้ว';

  @override
  String get bottleMaterialSilicone => 'ซิลิโคน';

  @override
  String get bottleMaterialSteel => 'สแตนเลส';

  @override
  String get visitReasonRoutine => 'ตรวจสุขภาพตามนัด';

  @override
  String get visitReasonSick => 'ป่วย';

  @override
  String get visitReasonVaccination => 'ฉีดวัคซีน';

  @override
  String get visitReasonSpecialist => 'แพทย์เฉพาะทาง';

  @override
  String get visitReasonFollowUp => 'ติดตามอาการ';

  @override
  String get visitReasonOther => 'อื่น ๆ';

  @override
  String get pooColourPale => 'ซีด';

  @override
  String get noteTagHappyDay => 'วันที่มีความสุข';

  @override
  String get noteTagSleptWell => 'หลับสบาย';

  @override
  String get noteTagFussy => 'งอแง';

  @override
  String get noteTagNotWell => 'ไม่สบาย';

  @override
  String get noteTagFirstTime => 'ครั้งแรก!';

  @override
  String get noteTagTeething => 'ฟันขึ้น';

  @override
  String get noteTagGrowthSpurt => 'ช่วงโตเร็ว';

  @override
  String get noteTagMilestone => 'พัฒนาการสำคัญ';

  @override
  String get tummyTimeNotesHint => 'เช่น ชอบ งอแง...';

  @override
  String get skinSuggestEczema => 'ผื่นผิวหนังอักเสบ (ภูมิแพ้ผิวหนัง)';

  @override
  String get skinSuggestDiaperRash => 'ผื่นผ้าอ้อม';

  @override
  String get skinSuggestCradleCap => 'ไขบนหนังศีรษะ';

  @override
  String get skinSuggestBabyAcne => 'สิวทารก';

  @override
  String get skinSuggestHeatRash => 'ผดผื่นจากความร้อน';

  @override
  String get skinSuggestDrySkin => 'ผิวแห้ง';

  @override
  String get bodyFace => 'ใบหน้า';

  @override
  String get bodyScalp => 'หนังศีรษะ';

  @override
  String get bodyNeck => 'คอ';

  @override
  String get bodyChest => 'หน้าอก';

  @override
  String get bodyBack => 'หลัง';

  @override
  String get bodyArms => 'แขน';

  @override
  String get bodyHands => 'มือ';

  @override
  String get bodyDiaperArea => 'บริเวณผ้าอ้อม';

  @override
  String get bodyLegs => 'ขา';

  @override
  String get bodyFeet => 'เท้า';

  @override
  String get medSuggestGripeWater => 'ไกรพ์วอเตอร์';

  @override
  String get medSuggestVitaminD => 'วิตามินดี';

  @override
  String get medSuggestIronDrops => 'ธาตุเหล็กชนิดหยด';

  @override
  String get medSuggestAntibiotic => 'ยาปฏิชีวนะ';

  @override
  String get medSuggestProbiotic => 'โพรไบโอติก';

  @override
  String vaccinePageTitle(String name) {
    return '$name — วัคซีน';
  }

  @override
  String get vaccineDeleteTitle => 'ลบบันทึกวัคซีนไหม?';

  @override
  String get vaccineSiteHint => 'เช่น ต้นขาซ้าย';

  @override
  String get vaccineNotesHint => 'เช่น ไข้ต่ำ ๆ งอแง ไม่มีอาการ...';

  @override
  String get vaccineNoGivenHint => 'ใช้ปุ่ม + หรือแตะ \"ทำเครื่องหมายว่าฉีดแล้ว\" ในแท็บกำหนดการ';

  @override
  String get vaccineAgeBirth => 'แรกเกิด';

  @override
  String vaccineAgeMonths(String range) {
    return '$range เดือน';
  }

  @override
  String vaccineAgeMonthsAnnual(String range) {
    return '$range เดือน (ทุกปี)';
  }

  @override
  String get whoTabHeight => 'ส่วนสูง';

  @override
  String get whoTabHead => 'ศีรษะ';

  @override
  String get whoChartFor => 'กราฟสำหรับ:';

  @override
  String whoAgeRange(String title) {
    return '$title (0–24 เดือน)';
  }

  @override
  String get whoNoDataPoints => 'ยังไม่มีข้อมูล บันทึกการวัดเพื่อดูลูกน้อยบนกราฟ';

  @override
  String get whoLatestMeasurement => 'การวัดล่าสุด';

  @override
  String whoApproxPercentile(String value) {
    return 'เปอร์เซ็นไทล์โดยประมาณ: $value';
  }

  @override
  String whoBetween(String low, String high) {
    return 'ระหว่าง $low ถึง $high';
  }

  @override
  String whoMonthsOld(String months) {
    return 'อายุ $months เดือน';
  }

  @override
  String get whoDisclaimer => 'กราฟเหล่านี้มีไว้เพื่อเป็นข้อมูลเท่านั้น ควรให้กุมารแพทย์เป็นผู้แปลผลเสมอ';

  @override
  String get whoMedian => 'P50 (มัธยฐาน)';

  @override
  String get notifChannelName => 'การแจ้งเตือน Baby Tracker';

  @override
  String get notifChannelDesc => 'การเตือนให้นม เปลี่ยนผ้าอ้อม ให้ยา และตรวจผิว';

  @override
  String get notifFeedTitle => 'ได้เวลาให้นมแล้ว!';

  @override
  String notifFeedBody(String interval) {
    return 'ไม่มีการบันทึกการให้นมใน $interval ที่ผ่านมา';
  }

  @override
  String get notifDiaperTitle => 'เช็กผ้าอ้อม!';

  @override
  String notifDiaperBody(String interval) {
    return 'ไม่มีการบันทึกเปลี่ยนผ้าอ้อมใน $interval ที่ผ่านมา';
  }

  @override
  String notifDoseTitle(String name) {
    return 'ถึงเวลาให้ยา: $name';
  }

  @override
  String notifDoseBody(String name) {
    return 'ถึงเวลาให้ $name ครั้งถัดไปแล้ว';
  }

  @override
  String notifSkinTitle(String name) {
    return 'ตรวจผิว: $name';
  }

  @override
  String get notifSkinBody => 'เพิ่มการอัปเดตวันนี้ (และรูปถ้าต้องการ)';

  @override
  String get timerFeedingNotif => 'ตัวจับเวลาให้นมกำลังทำงาน';

  @override
  String intervalMinutes(String m) {
    return '$m นาที';
  }

  @override
  String intervalHours(String h) {
    return '$h ชม.';
  }

  @override
  String intervalHoursMinutes(String h, String m) {
    return '$h ชม. $m นาที';
  }

  @override
  String get settingsRtlActive => 'เปิดใช้เลย์เอาต์ขวาไปซ้าย';

  @override
  String get measurementHeightIn => 'ความยาว / ส่วนสูง (นิ้ว)';

  @override
  String get measurementHeadIn => 'รอบศีรษะ (นิ้ว)';

  @override
  String get growthHeightIn => 'ส่วนสูง (นิ้ว)';

  @override
  String get growthHeadIn => 'รอบศีรษะ (นิ้ว)';

  @override
  String growthHeightValueIn(String value) {
    return '$value นิ้ว';
  }

  @override
  String growthHeadValueIn(String value) {
    return 'ศีรษะ $value นิ้ว';
  }

  @override
  String get settingsLengthUnitNote => 'หน่วยความยาวเป็นไปตามหน่วยน้ำหนัก (ซม. กับ กก., นิ้ว กับ ปอนด์)';

  @override
  String get formulaStoreBrand => 'แบรนด์ของร้าน';

  @override
  String get pooShade1 => 'ขาวเหมือนชอล์ก';

  @override
  String get pooShade2 => 'เทาอ่อน';

  @override
  String get pooShade3 => 'เทาดินเหนียว';

  @override
  String get pooShade4 => 'สีครีม';

  @override
  String get pooShade5 => 'เบจเข้ม';

  @override
  String get pooShade6 => 'เหลืองอมเขียวซีด';

  @override
  String get pooShade7 => 'เหลืองมัสตาร์ด';

  @override
  String get pooShade8 => 'น้ำตาล';

  @override
  String get pooShade9 => 'เขียว';

  @override
  String get vaccineScheduleNote => 'อ้างอิงตารางของ CDC สหรัฐฯ ตารางในประเทศของคุณอาจต่างออกไป — โปรดทำตามคำแนะนำของแพทย์';

  @override
  String get settingsAbout => 'เกี่ยวกับ';

  @override
  String get aboutTitle => 'เกี่ยวกับและสัญญาอนุญาต';

  @override
  String aboutVersion(String version) {
    return 'เวอร์ชัน $version';
  }

  @override
  String get aboutLicenseLine => 'ซอฟต์แวร์เสรีเผยแพร่ภายใต้ GNU General Public License v3.0 หรือใหม่กว่า คุณสามารถใช้ ศึกษา แบ่งปัน และแก้ไขได้';

  @override
  String get aboutSourceCode => 'ซอร์สโค้ด';

  @override
  String get aboutDisclaimerTitle => 'ไม่ใช่คำแนะนำทางการแพทย์';

  @override
  String get aboutDisclaimerBody => 'Simple Baby Tracker เป็นสมุดบันทึกสำหรับบันทึกส่วนตัวของคุณ ไม่ใช่อุปกรณ์ทางการแพทย์ และไม่วินิจฉัย รักษา หรือติดตามอาการใด ๆ กราฟการเจริญเติบโต ช่วงอุณหภูมิ การเตือนให้ยา และบันทึกสีอุจจาระเป็นเพียงข้อมูลทั่วไป อาจไม่ครบถ้วนหรือคลาดเคลื่อน โปรดทำตามคำแนะนำของแพทย์หรือเภสัชกรเสมอ และติดต่อแพทย์หรือหน่วยฉุกเฉินหากกังวลเกี่ยวกับลูกน้อย';

  @override
  String get aboutPrivacyTitle => 'ข้อมูลของคุณอยู่ในโทรศัพท์เครื่องนี้';

  @override
  String get aboutPrivacyBody => 'แอปไม่มีการเชื่อมต่ออินเทอร์เน็ต ไม่มีบัญชี โฆษณา หรือการวิเคราะห์ รายการและรูปภาพถูกเก็บไว้บนอุปกรณ์นี้เท่านั้น ไม่มีอะไรออกจากเครื่อง เว้นแต่คุณส่งออกข้อมูลสำรองและแชร์เอง';

  @override
  String get aboutCreditsTitle => 'เครดิต';

  @override
  String get aboutCreditsBody => 'ไอคอน: สร้างด้วย Claude Design\nฟอนต์: Inter และ Quicksand (SIL Open Font License 1.1)\nกราฟการเจริญเติบโต: มาตรฐานการเจริญเติบโตของเด็กขององค์การอนามัยโลก (who.int)\nตารางวัคซีน: อ้างอิงตารางของ CDC สหรัฐฯ\nสร้างด้วย Flutter';

  @override
  String get aboutLicencesButton => 'สัญญาอนุญาตโอเพนซอร์ส';
}
