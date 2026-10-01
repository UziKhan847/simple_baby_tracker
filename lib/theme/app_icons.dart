// Generated. Icon names map 1:1 to assets/icons/{line,duo,solid}/<name>.svg
class AppIcons {
  AppIcons._();
  static const diaper = 'diaper';
  static const bottle = 'bottle';
  static const breastfeeding = 'breastfeeding';
  static const pumping = 'pumping';
  static const sleep = 'sleep';
  static const temperature = 'temperature';
  static const weight = 'weight';
  static const tummyTime = 'tummy_time';
  static const medication = 'medication';
  static const doctorVisit = 'doctor_visit';
  static const note = 'note';
  static const bath = 'bath';
  static const solidFood = 'solid_food';
  static const other = 'other';
  static const home = 'home';
  static const graphs = 'graphs';
  static const milestones = 'milestones';
  static const settings = 'settings';
  static const medications = 'medications';
  static const share = 'share';
  static const delete = 'delete';
  static const add = 'add';
  static const switchSide = 'switch_side';
  static const close = 'close';
  static const chevronRight = 'chevron_right';
  static const noEvents = 'no_events';
  static const calendar = 'calendar';
  static const check = 'check';
  static const edit = 'edit';
  static const time = 'time';
  static const info = 'info';
  static const warning = 'warning';
  static const pee = 'pee';
  static const poo = 'poo';
  static const milkTotal = 'milk_total';
  static const trendUp = 'trend_up';
  static const avgSleep = 'avg_sleep';
  static const arrowUp = 'arrow_up';
  static const arrowDown = 'arrow_down';
  static const whoChart = 'who_chart';
  static const boy = 'boy';
  static const girl = 'girl';
  static const foodsTried = 'foods_tried';
  static const vaccine = 'vaccine';
  static const upcoming = 'upcoming';
  static const given = 'given';
  static const addCircle = 'add_circle';
  static const darkMode = 'dark_mode';
  static const lightMode = 'light_mode';
  static const oledMode = 'oled_mode';
  static const immersive = 'immersive';
  static const language = 'language';
  static const weightUnit = 'weight_unit';
  static const tempUnit = 'temp_unit';
  static const milkUnit = 'milk_unit';
  static const reminderFeed = 'reminder_feed';
  static const reminderDiaper = 'reminder_diaper';
  static const reminderDose = 'reminder_dose';
  static const exportPdf = 'export_pdf';
  static const exportJson = 'export_json';
  static const importJson = 'import_json';
  static const swipe = 'swipe';
  static const sideLeft = 'side_left';
  static const sideRight = 'side_right';
  static const sponge = 'sponge';
  static const shower = 'shower';
  static const tempLow = 'temp_low';
  static const tempNormal = 'temp_normal';
  static const tempElevated = 'temp_elevated';
  static const fever = 'fever';
  static const faceHappy = 'face_happy';
  static const faceLaugh = 'face_laugh';
  static const faceSleepy = 'face_sleepy';
  static const faceSad = 'face_sad';
  static const faceSick = 'face_sick';
  static const tooth = 'tooth';
  static const growthSpurt = 'growth_spurt';
  static const celebrate = 'celebrate';
  static const rollBackToTummy = 'roll_back_to_tummy';
  static const rollTummyToBack = 'roll_tummy_to_back';
  static const satUnsupported = 'sat_unsupported';
  static const crawling = 'crawling';
  static const pulledToStand = 'pulled_to_stand';
  static const firstSteps = 'first_steps';
  static const firstWord = 'first_word';
  static const haircut = 'haircut';
  static const sleptThroughNight = 'slept_through_night';
  static const wave = 'wave';
  static const clap = 'clap';
  static const birthday = 'birthday';
  static const faceYum = 'face_yum';
  static const faceMeh = 'face_meh';
  static const faceYuck = 'face_yuck';
  static const sparkle = 'sparkle';
  static const rash = 'rash';

  /// Entry type -> icon. Replaces the icons in categoryStyleFor().
  static const entryType = <String, String>{
    'diaper': diaper,
    'bottle': bottle,
    'breastfeeding': breastfeeding,
    'pumping': pumping,
    'sleep': sleep,
    'temperature': temperature,
    'weight': weight,
    'tummy_time': tummyTime,
    'medication': medication,
    'doctor_visit': doctorVisit,
    'note': note,
    'bath': bath,
    'solids': solidFood,
  };

  /// Milestone preset key -> icon. Colour group in [milestoneColor].
  static const milestone = <String, String>{
    'first_smile': faceHappy,
    'first_laugh': faceLaugh,
    'first_tooth': tooth,
    'rolled_back_to_tummy': rollBackToTummy,
    'rolled_tummy_to_back': rollTummyToBack,
    'sat_unsupported': satUnsupported,
    'started_crawling': crawling,
    'pulled_to_stand': pulledToStand,
    'first_steps': firstSteps,
    'first_word': firstWord,
    'first_solid_food': solidFood,
    'first_haircut': haircut,
    'slept_through_night': sleptThroughNight,
    'waved_bye': wave,
    'clapped_hands': clap,
    'first_birthday': birthday,
  };

  /// Milestone -> colour group (use your AppColors xxxStrong / xxxSoft).
  static const milestoneColor = <String, String>{
    'first_smile': 'feeding',
    'first_laugh': 'note',
    'first_tooth': 'misc',
    'rolled_back_to_tummy': 'weight',
    'rolled_tummy_to_back': 'weight',
    'sat_unsupported': 'growth',
    'started_crawling': 'diaper',
    'pulled_to_stand': 'medication',
    'first_steps': 'sleep',
    'first_word': 'feeding',
    'first_solid_food': 'growth',
    'first_haircut': 'misc',
    'slept_through_night': 'sleep',
    'waved_bye': 'note',
    'clapped_hands': 'diaper',
    'first_birthday': 'feeding',
  };

  /// Daily-note mood emoji -> icon (daily_note.dart).
  static const mood = <String, String>{
    '😊': faceHappy,
    '😴': faceSleepy,
    '😢': faceSad,
    '🤒': faceSick,
    '🌟': milestones,
    '💊': medication,
    '🦷': tooth,
    '📈': growthSpurt,
    '🎉': celebrate,
  };

  /// Solid-food reaction emoji -> icon (solids.dart).
  static const reaction = <String, String>{
    '😋': faceYum,
    '😐': faceMeh,
    '😖': faceYuck,
  };
}
