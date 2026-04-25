import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('ms'),
    Locale('pt'),
    Locale('ru'),
    Locale('sv'),
    Locale('th'),
    Locale('tr'),
    Locale('ur'),
    Locale('zh')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Baby Tracker'**
  String get appTitle;

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navGraphs.
  ///
  /// In en, this message translates to:
  /// **'Graphs'**
  String get navGraphs;

  /// No description provided for @navMilestones.
  ///
  /// In en, this message translates to:
  /// **'Milestones'**
  String get navMilestones;

  /// No description provided for @navSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// No description provided for @actionCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get actionCancel;

  /// No description provided for @actionSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get actionSave;

  /// No description provided for @actionUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get actionUpdate;

  /// No description provided for @actionDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get actionDelete;

  /// No description provided for @actionAdd.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get actionAdd;

  /// No description provided for @actionEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get actionEdit;

  /// No description provided for @actionClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get actionClose;

  /// No description provided for @actionExport.
  ///
  /// In en, this message translates to:
  /// **'Export data'**
  String get actionExport;

  /// No description provided for @actionAddDay.
  ///
  /// In en, this message translates to:
  /// **'Add day'**
  String get actionAddDay;

  /// No description provided for @actionLog.
  ///
  /// In en, this message translates to:
  /// **'Log'**
  String get actionLog;

  /// No description provided for @cannotUndo.
  ///
  /// In en, this message translates to:
  /// **'This cannot be undone.'**
  String get cannotUndo;

  /// No description provided for @noData.
  ///
  /// In en, this message translates to:
  /// **'No data'**
  String get noData;

  /// No description provided for @noNotes.
  ///
  /// In en, this message translates to:
  /// **'No notes'**
  String get noNotes;

  /// No description provided for @noDetails.
  ///
  /// In en, this message translates to:
  /// **'No details'**
  String get noDetails;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'(optional)'**
  String get optional;

  /// No description provided for @homeTitle.
  ///
  /// In en, this message translates to:
  /// **'Tracker'**
  String get homeTitle;

  /// No description provided for @feedsToday.
  ///
  /// In en, this message translates to:
  /// **'Feeds today'**
  String get feedsToday;

  /// No description provided for @diapersToday.
  ///
  /// In en, this message translates to:
  /// **'Diapers today'**
  String get diapersToday;

  /// No description provided for @sleepToday.
  ///
  /// In en, this message translates to:
  /// **'Sleep today'**
  String get sleepToday;

  /// No description provided for @todayLabel.
  ///
  /// In en, this message translates to:
  /// **'Today — {date}'**
  String todayLabel(String date);

  /// No description provided for @eventCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 event} other{{count} events}}'**
  String eventCount(int count);

  /// No description provided for @deleteDayTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete day?'**
  String get deleteDayTitle;

  /// No description provided for @deleteDayContent.
  ///
  /// In en, this message translates to:
  /// **'Remove {date} and all its entries? This cannot be undone.'**
  String deleteDayContent(String date);

  /// No description provided for @rashRecorded.
  ///
  /// In en, this message translates to:
  /// **'Rash recorded'**
  String get rashRecorded;

  /// No description provided for @noEntriesYet.
  ///
  /// In en, this message translates to:
  /// **'No entries yet'**
  String get noEntriesYet;

  /// No description provided for @addEntry.
  ///
  /// In en, this message translates to:
  /// **'Add entry'**
  String get addEntry;

  /// No description provided for @deleteEntryTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete entry?'**
  String get deleteEntryTitle;

  /// No description provided for @entryTypeDiaper.
  ///
  /// In en, this message translates to:
  /// **'Diaper change'**
  String get entryTypeDiaper;

  /// No description provided for @entryTypeFeeding.
  ///
  /// In en, this message translates to:
  /// **'Feeding'**
  String get entryTypeFeeding;

  /// No description provided for @entryTypeSleep.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get entryTypeSleep;

  /// No description provided for @entryTypeTemperature.
  ///
  /// In en, this message translates to:
  /// **'Temperature'**
  String get entryTypeTemperature;

  /// No description provided for @entryTypeWeight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get entryTypeWeight;

  /// No description provided for @entryTypeTummyTime.
  ///
  /// In en, this message translates to:
  /// **'Tummy time'**
  String get entryTypeTummyTime;

  /// No description provided for @entryTypeMedication.
  ///
  /// In en, this message translates to:
  /// **'Medication'**
  String get entryTypeMedication;

  /// No description provided for @entryTypeDoctorVisit.
  ///
  /// In en, this message translates to:
  /// **'Doctor visit'**
  String get entryTypeDoctorVisit;

  /// No description provided for @entryTypeNote.
  ///
  /// In en, this message translates to:
  /// **'Daily note / journal'**
  String get entryTypeNote;

  /// No description provided for @entryTypePumping.
  ///
  /// In en, this message translates to:
  /// **'Pumping session'**
  String get entryTypePumping;

  /// No description provided for @entryTypeBath.
  ///
  /// In en, this message translates to:
  /// **'Bath'**
  String get entryTypeBath;

  /// No description provided for @diaperPeePoo.
  ///
  /// In en, this message translates to:
  /// **'Diaper — pee + poo'**
  String get diaperPeePoo;

  /// No description provided for @diaperPee.
  ///
  /// In en, this message translates to:
  /// **'Diaper — pee'**
  String get diaperPee;

  /// No description provided for @diaperPoo.
  ///
  /// In en, this message translates to:
  /// **'Diaper — poo'**
  String get diaperPoo;

  /// No description provided for @diaperChange.
  ///
  /// In en, this message translates to:
  /// **'Diaper change'**
  String get diaperChange;

  /// No description provided for @editDiaper.
  ///
  /// In en, this message translates to:
  /// **'Edit diaper'**
  String get editDiaper;

  /// No description provided for @diaperContents.
  ///
  /// In en, this message translates to:
  /// **'Contents'**
  String get diaperContents;

  /// No description provided for @diaperNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get diaperNone;

  /// No description provided for @diaperPeeLabel.
  ///
  /// In en, this message translates to:
  /// **'Pee'**
  String get diaperPeeLabel;

  /// No description provided for @diaperPooLabel.
  ///
  /// In en, this message translates to:
  /// **'Poo'**
  String get diaperPooLabel;

  /// No description provided for @diaperBoth.
  ///
  /// In en, this message translates to:
  /// **'Both'**
  String get diaperBoth;

  /// No description provided for @diaperConsistency.
  ///
  /// In en, this message translates to:
  /// **'Consistency'**
  String get diaperConsistency;

  /// No description provided for @consistencyHard.
  ///
  /// In en, this message translates to:
  /// **'Hard / Pellets'**
  String get consistencyHard;

  /// No description provided for @consistencyHardHint.
  ///
  /// In en, this message translates to:
  /// **'Constipation'**
  String get consistencyHardHint;

  /// No description provided for @consistencyFirm.
  ///
  /// In en, this message translates to:
  /// **'Firm'**
  String get consistencyFirm;

  /// No description provided for @consistencyFirmHint.
  ///
  /// In en, this message translates to:
  /// **'Slightly firm'**
  String get consistencyFirmHint;

  /// No description provided for @consistencyNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get consistencyNormal;

  /// No description provided for @consistencyNormalHint.
  ///
  /// In en, this message translates to:
  /// **'Healthy'**
  String get consistencyNormalHint;

  /// No description provided for @consistencySoft.
  ///
  /// In en, this message translates to:
  /// **'Soft'**
  String get consistencySoft;

  /// No description provided for @consistencySoftHint.
  ///
  /// In en, this message translates to:
  /// **'Slightly soft'**
  String get consistencySoftHint;

  /// No description provided for @consistencyLoose.
  ///
  /// In en, this message translates to:
  /// **'Loose / Mushy'**
  String get consistencyLoose;

  /// No description provided for @consistencyLooseHint.
  ///
  /// In en, this message translates to:
  /// **'Monitor'**
  String get consistencyLooseHint;

  /// No description provided for @consistencyWatery.
  ///
  /// In en, this message translates to:
  /// **'Watery'**
  String get consistencyWatery;

  /// No description provided for @consistencyWateryHint.
  ///
  /// In en, this message translates to:
  /// **'Diarrhea'**
  String get consistencyWateryHint;

  /// No description provided for @warnConstipation.
  ///
  /// In en, this message translates to:
  /// **'Signs of constipation — monitor closely'**
  String get warnConstipation;

  /// No description provided for @warnDiarrhea.
  ///
  /// In en, this message translates to:
  /// **'Signs of diarrhea — monitor closely'**
  String get warnDiarrhea;

  /// No description provided for @pooColourLabel.
  ///
  /// In en, this message translates to:
  /// **'Colour (tap to select)'**
  String get pooColourLabel;

  /// No description provided for @pooColourAbnormal.
  ///
  /// In en, this message translates to:
  /// **'⚠️ Abnormal (pale)'**
  String get pooColourAbnormal;

  /// No description provided for @pooColourNormal.
  ///
  /// In en, this message translates to:
  /// **'✅ Normal'**
  String get pooColourNormal;

  /// No description provided for @pooColourSelected.
  ///
  /// In en, this message translates to:
  /// **'Selected: {label}'**
  String pooColourSelected(String label);

  /// No description provided for @diaperSize.
  ///
  /// In en, this message translates to:
  /// **'Diaper size'**
  String get diaperSize;

  /// No description provided for @diaperBrand.
  ///
  /// In en, this message translates to:
  /// **'Brand'**
  String get diaperBrand;

  /// No description provided for @diaperBrandCustomLabel.
  ///
  /// In en, this message translates to:
  /// **'Brand name'**
  String get diaperBrandCustomLabel;

  /// No description provided for @rashPresent.
  ///
  /// In en, this message translates to:
  /// **'Rash present'**
  String get rashPresent;

  /// No description provided for @rashPresentHint.
  ///
  /// In en, this message translates to:
  /// **'Redness, irritation or nappy rash'**
  String get rashPresentHint;

  /// No description provided for @rashCreamUsed.
  ///
  /// In en, this message translates to:
  /// **'Rash cream used'**
  String get rashCreamUsed;

  /// No description provided for @rashCreamCustomLabel.
  ///
  /// In en, this message translates to:
  /// **'Cream / ointment name'**
  String get rashCreamCustomLabel;

  /// No description provided for @rashFollowUpTitle.
  ///
  /// In en, this message translates to:
  /// **'⚠️ Rash follow-up'**
  String get rashFollowUpTitle;

  /// No description provided for @rashFollowUpQuestion.
  ///
  /// In en, this message translates to:
  /// **'The last diaper had a rash recorded. Did it improve?'**
  String get rashFollowUpQuestion;

  /// No description provided for @rashImproved.
  ///
  /// In en, this message translates to:
  /// **'Yes, improved'**
  String get rashImproved;

  /// No description provided for @rashNoChange.
  ///
  /// In en, this message translates to:
  /// **'No change / worse'**
  String get rashNoChange;

  /// No description provided for @addFeeding.
  ///
  /// In en, this message translates to:
  /// **'Add feeding'**
  String get addFeeding;

  /// No description provided for @editFeeding.
  ///
  /// In en, this message translates to:
  /// **'Edit feeding'**
  String get editFeeding;

  /// No description provided for @feedLabel.
  ///
  /// In en, this message translates to:
  /// **'Feed {number}'**
  String feedLabel(int number);

  /// No description provided for @feedModeBottle.
  ///
  /// In en, this message translates to:
  /// **'Bottle'**
  String get feedModeBottle;

  /// No description provided for @feedModeSuckle.
  ///
  /// In en, this message translates to:
  /// **'Suckle'**
  String get feedModeSuckle;

  /// No description provided for @feedAmountMl.
  ///
  /// In en, this message translates to:
  /// **'Amount (ml)'**
  String get feedAmountMl;

  /// No description provided for @feedType.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get feedType;

  /// No description provided for @feedBreastMilk.
  ///
  /// In en, this message translates to:
  /// **'Breast milk'**
  String get feedBreastMilk;

  /// No description provided for @feedFormula.
  ///
  /// In en, this message translates to:
  /// **'Formula'**
  String get feedFormula;

  /// No description provided for @feedFormulaBrand.
  ///
  /// In en, this message translates to:
  /// **'Formula brand'**
  String get feedFormulaBrand;

  /// No description provided for @feedFormulaBrandCustom.
  ///
  /// In en, this message translates to:
  /// **'Formula brand name'**
  String get feedFormulaBrandCustom;

  /// No description provided for @feedDurationMinutes.
  ///
  /// In en, this message translates to:
  /// **'Duration (minutes)'**
  String get feedDurationMinutes;

  /// No description provided for @addAnotherFeed.
  ///
  /// In en, this message translates to:
  /// **'Add another feed'**
  String get addAnotherFeed;

  /// No description provided for @bottleBreastMilk.
  ///
  /// In en, this message translates to:
  /// **'Bottle — breast milk'**
  String get bottleBreastMilk;

  /// No description provided for @bottleFormula.
  ///
  /// In en, this message translates to:
  /// **'Bottle — formula'**
  String get bottleFormula;

  /// No description provided for @breastfeedingSuckle.
  ///
  /// In en, this message translates to:
  /// **'Breastfeeding (suckle)'**
  String get breastfeedingSuckle;

  /// No description provided for @logSleep.
  ///
  /// In en, this message translates to:
  /// **'Log sleep'**
  String get logSleep;

  /// No description provided for @editSleep.
  ///
  /// In en, this message translates to:
  /// **'Edit sleep'**
  String get editSleep;

  /// No description provided for @sleepStart.
  ///
  /// In en, this message translates to:
  /// **'Sleep start'**
  String get sleepStart;

  /// No description provided for @sleepWakeUp.
  ///
  /// In en, this message translates to:
  /// **'Wake up'**
  String get sleepWakeUp;

  /// No description provided for @sleepDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration: {duration}'**
  String sleepDuration(String duration);

  /// No description provided for @sleepInvalidTimes.
  ///
  /// In en, this message translates to:
  /// **'Invalid times'**
  String get sleepInvalidTimes;

  /// No description provided for @sleepWrapsNextDay.
  ///
  /// In en, this message translates to:
  /// **'(end wraps to next day)'**
  String get sleepWrapsNextDay;

  /// No description provided for @sleepNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes (optional)'**
  String get sleepNotes;

  /// No description provided for @sleepNotesHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. restless, woke briefly...'**
  String get sleepNotesHint;

  /// No description provided for @sleepNoNotes.
  ///
  /// In en, this message translates to:
  /// **'No notes'**
  String get sleepNoNotes;

  /// No description provided for @sleepHoursShort.
  ///
  /// In en, this message translates to:
  /// **'{h}h {m}m'**
  String sleepHoursShort(int h, int m);

  /// No description provided for @logTemperature.
  ///
  /// In en, this message translates to:
  /// **'Log temperature'**
  String get logTemperature;

  /// No description provided for @editTemperature.
  ///
  /// In en, this message translates to:
  /// **'Edit temperature'**
  String get editTemperature;

  /// No description provided for @temperatureLabel.
  ///
  /// In en, this message translates to:
  /// **'Temperature'**
  String get temperatureLabel;

  /// No description provided for @tempSeverityLow.
  ///
  /// In en, this message translates to:
  /// **'Low temperature — monitor'**
  String get tempSeverityLow;

  /// No description provided for @tempSeverityNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal temperature'**
  String get tempSeverityNormal;

  /// No description provided for @tempSeverityElevated.
  ///
  /// In en, this message translates to:
  /// **'Slightly elevated — monitor closely'**
  String get tempSeverityElevated;

  /// No description provided for @tempSeverityFever.
  ///
  /// In en, this message translates to:
  /// **'Fever — consult your doctor'**
  String get tempSeverityFever;

  /// No description provided for @tempReference.
  ///
  /// In en, this message translates to:
  /// **'Temperature reference'**
  String get tempReference;

  /// No description provided for @tempRefLow.
  ///
  /// In en, this message translates to:
  /// **'< 36.0 °C / 96.8 °F'**
  String get tempRefLow;

  /// No description provided for @tempRefNormal.
  ///
  /// In en, this message translates to:
  /// **'36.0 – 37.4 °C / 96.8 – 99.3 °F'**
  String get tempRefNormal;

  /// No description provided for @tempRefElevated.
  ///
  /// In en, this message translates to:
  /// **'37.5 – 38.4 °C / 99.5 – 101.1 °F'**
  String get tempRefElevated;

  /// No description provided for @tempRefFever.
  ///
  /// In en, this message translates to:
  /// **'≥ 38.5 °C / 101.3 °F'**
  String get tempRefFever;

  /// No description provided for @tempFeverWarning.
  ///
  /// In en, this message translates to:
  /// **'⚠️ Always consult your paediatrician for fever in infants under 3 months.'**
  String get tempFeverWarning;

  /// No description provided for @tempLow.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get tempLow;

  /// No description provided for @tempNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get tempNormal;

  /// No description provided for @tempElevated.
  ///
  /// In en, this message translates to:
  /// **'Elevated'**
  String get tempElevated;

  /// No description provided for @tempFever.
  ///
  /// In en, this message translates to:
  /// **'Fever'**
  String get tempFever;

  /// No description provided for @tempLatest.
  ///
  /// In en, this message translates to:
  /// **'Latest temperature'**
  String get tempLatest;

  /// No description provided for @tempSummary.
  ///
  /// In en, this message translates to:
  /// **'Temperature summary'**
  String get tempSummary;

  /// No description provided for @tempFeverThreshold.
  ///
  /// In en, this message translates to:
  /// **'Fever threshold'**
  String get tempFeverThreshold;

  /// No description provided for @tempDays.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 day} other{{count} days}}'**
  String tempDays(int count);

  /// No description provided for @logWeight.
  ///
  /// In en, this message translates to:
  /// **'Log weight'**
  String get logWeight;

  /// No description provided for @editWeight.
  ///
  /// In en, this message translates to:
  /// **'Edit weight'**
  String get editWeight;

  /// No description provided for @weightLabel.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weightLabel;

  /// No description provided for @weightGain.
  ///
  /// In en, this message translates to:
  /// **'+{amount} gain'**
  String weightGain(String amount);

  /// No description provided for @weightLoss.
  ///
  /// In en, this message translates to:
  /// **'−{amount} loss'**
  String weightLoss(String amount);

  /// No description provided for @weightPrevious.
  ///
  /// In en, this message translates to:
  /// **'Previous: {weight}'**
  String weightPrevious(String weight);

  /// No description provided for @weightLastRecorded.
  ///
  /// In en, this message translates to:
  /// **'Last recorded: {weight} on {date}'**
  String weightLastRecorded(String weight, String date);

  /// No description provided for @weightLatest.
  ///
  /// In en, this message translates to:
  /// **'Latest weight'**
  String get weightLatest;

  /// No description provided for @weightOverPeriod.
  ///
  /// In en, this message translates to:
  /// **'{sign}{amount} over period'**
  String weightOverPeriod(String sign, String amount);

  /// No description provided for @tummyTimeLog.
  ///
  /// In en, this message translates to:
  /// **'Log tummy time'**
  String get tummyTimeLog;

  /// No description provided for @tummyTimeEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit tummy time'**
  String get tummyTimeEdit;

  /// No description provided for @tummyTimeStart.
  ///
  /// In en, this message translates to:
  /// **'Start time'**
  String get tummyTimeStart;

  /// No description provided for @tummyTimeEnd.
  ///
  /// In en, this message translates to:
  /// **'End time'**
  String get tummyTimeEnd;

  /// No description provided for @tummyTimeTip.
  ///
  /// In en, this message translates to:
  /// **'Tummy time strengthens neck and shoulder muscles.'**
  String get tummyTimeTip;

  /// No description provided for @medicationLog.
  ///
  /// In en, this message translates to:
  /// **'Log medication'**
  String get medicationLog;

  /// No description provided for @medicationEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit medication'**
  String get medicationEdit;

  /// No description provided for @medicationName.
  ///
  /// In en, this message translates to:
  /// **'Medication name *'**
  String get medicationName;

  /// No description provided for @medicationDose.
  ///
  /// In en, this message translates to:
  /// **'Dose'**
  String get medicationDose;

  /// No description provided for @medicationUnit.
  ///
  /// In en, this message translates to:
  /// **'Unit'**
  String get medicationUnit;

  /// No description provided for @medicationCommon.
  ///
  /// In en, this message translates to:
  /// **'Common medications'**
  String get medicationCommon;

  /// No description provided for @medicationWarning.
  ///
  /// In en, this message translates to:
  /// **'Always follow dosage instructions for weight/age. Do not exceed recommended frequency.'**
  String get medicationWarning;

  /// No description provided for @medicationNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes (optional)'**
  String get medicationNotes;

  /// No description provided for @medicationNotesHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. reason, reaction...'**
  String get medicationNotesHint;

  /// No description provided for @doctorVisitLog.
  ///
  /// In en, this message translates to:
  /// **'Doctor visit'**
  String get doctorVisitLog;

  /// No description provided for @doctorVisitEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit doctor visit'**
  String get doctorVisitEdit;

  /// No description provided for @doctorName.
  ///
  /// In en, this message translates to:
  /// **'Doctor / clinic name'**
  String get doctorName;

  /// No description provided for @doctorVisitReason.
  ///
  /// In en, this message translates to:
  /// **'Reason for visit'**
  String get doctorVisitReason;

  /// No description provided for @doctorVisitMeasurements.
  ///
  /// In en, this message translates to:
  /// **'Measurements (optional)'**
  String get doctorVisitMeasurements;

  /// No description provided for @doctorVisitNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get doctorVisitNotes;

  /// No description provided for @doctorVisitNotesHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. vaccinations given, doctor recommendations...'**
  String get doctorVisitNotesHint;

  /// No description provided for @measurementWeightKg.
  ///
  /// In en, this message translates to:
  /// **'Weight (kg)'**
  String get measurementWeightKg;

  /// No description provided for @measurementWeightLbs.
  ///
  /// In en, this message translates to:
  /// **'Weight (lbs)'**
  String get measurementWeightLbs;

  /// No description provided for @measurementHeightCm.
  ///
  /// In en, this message translates to:
  /// **'Length / height (cm)'**
  String get measurementHeightCm;

  /// No description provided for @measurementHeadCm.
  ///
  /// In en, this message translates to:
  /// **'Head circumference (cm)'**
  String get measurementHeadCm;

  /// No description provided for @dailyNoteLog.
  ///
  /// In en, this message translates to:
  /// **'Daily note'**
  String get dailyNoteLog;

  /// No description provided for @dailyNoteEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit note'**
  String get dailyNoteEdit;

  /// No description provided for @dailyNoteTitle.
  ///
  /// In en, this message translates to:
  /// **'Title (optional)'**
  String get dailyNoteTitle;

  /// No description provided for @dailyNoteText.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get dailyNoteText;

  /// No description provided for @dailyNoteHint.
  ///
  /// In en, this message translates to:
  /// **'What happened today? First time rolling? Fussy morning?'**
  String get dailyNoteHint;

  /// No description provided for @dailyNoteTags.
  ///
  /// In en, this message translates to:
  /// **'Quick tags'**
  String get dailyNoteTags;

  /// No description provided for @pumpingLog.
  ///
  /// In en, this message translates to:
  /// **'Log pumping session'**
  String get pumpingLog;

  /// No description provided for @pumpingEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit pumping session'**
  String get pumpingEdit;

  /// No description provided for @pumpingLeft.
  ///
  /// In en, this message translates to:
  /// **'Left breast (ml)'**
  String get pumpingLeft;

  /// No description provided for @pumpingRight.
  ///
  /// In en, this message translates to:
  /// **'Right breast (ml)'**
  String get pumpingRight;

  /// No description provided for @pumpingTotal.
  ///
  /// In en, this message translates to:
  /// **'Total pumped'**
  String get pumpingTotal;

  /// No description provided for @pumpingDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration (minutes)'**
  String get pumpingDuration;

  /// No description provided for @pumpingStored.
  ///
  /// In en, this message translates to:
  /// **'Stored / frozen'**
  String get pumpingStored;

  /// No description provided for @pumpingNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes (optional)'**
  String get pumpingNotes;

  /// No description provided for @pumpingSessionTitle.
  ///
  /// In en, this message translates to:
  /// **'Pumping'**
  String get pumpingSessionTitle;

  /// No description provided for @pumpingTotalMl.
  ///
  /// In en, this message translates to:
  /// **'{ml} ml total'**
  String pumpingTotalMl(int ml);

  /// No description provided for @bathLog.
  ///
  /// In en, this message translates to:
  /// **'Log bath'**
  String get bathLog;

  /// No description provided for @bathEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit bath'**
  String get bathEdit;

  /// No description provided for @bathType.
  ///
  /// In en, this message translates to:
  /// **'Bath type'**
  String get bathType;

  /// No description provided for @bathTypeSponge.
  ///
  /// In en, this message translates to:
  /// **'Sponge bath'**
  String get bathTypeSponge;

  /// No description provided for @bathTypeTub.
  ///
  /// In en, this message translates to:
  /// **'Tub bath'**
  String get bathTypeTub;

  /// No description provided for @bathTypeShower.
  ///
  /// In en, this message translates to:
  /// **'Shower'**
  String get bathTypeShower;

  /// No description provided for @bathNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes (optional)'**
  String get bathNotes;

  /// No description provided for @bathProducts.
  ///
  /// In en, this message translates to:
  /// **'Products used (optional)'**
  String get bathProducts;

  /// No description provided for @vaccineTitle.
  ///
  /// In en, this message translates to:
  /// **'Vaccinations'**
  String get vaccineTitle;

  /// No description provided for @vaccineTabGiven.
  ///
  /// In en, this message translates to:
  /// **'Given'**
  String get vaccineTabGiven;

  /// No description provided for @vaccineTabSchedule.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get vaccineTabSchedule;

  /// No description provided for @vaccineLog.
  ///
  /// In en, this message translates to:
  /// **'Log vaccine'**
  String get vaccineLog;

  /// No description provided for @vaccineEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit vaccine'**
  String get vaccineEdit;

  /// No description provided for @vaccineName.
  ///
  /// In en, this message translates to:
  /// **'Vaccine name'**
  String get vaccineName;

  /// No description provided for @vaccineBrand.
  ///
  /// In en, this message translates to:
  /// **'Brand / manufacturer (optional)'**
  String get vaccineBrand;

  /// No description provided for @vaccineDate.
  ///
  /// In en, this message translates to:
  /// **'Date given'**
  String get vaccineDate;

  /// No description provided for @vaccineDose.
  ///
  /// In en, this message translates to:
  /// **'Dose number (optional)'**
  String get vaccineDose;

  /// No description provided for @vaccineSite.
  ///
  /// In en, this message translates to:
  /// **'Injection site (optional)'**
  String get vaccineSite;

  /// No description provided for @vaccineNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes / reactions'**
  String get vaccineNotes;

  /// No description provided for @vaccineDue.
  ///
  /// In en, this message translates to:
  /// **'Due at {age}'**
  String vaccineDue(String age);

  /// No description provided for @vaccineGiven.
  ///
  /// In en, this message translates to:
  /// **'Given'**
  String get vaccineGiven;

  /// No description provided for @vaccineNoGiven.
  ///
  /// In en, this message translates to:
  /// **'No vaccines logged yet.'**
  String get vaccineNoGiven;

  /// No description provided for @vaccineMarkGiven.
  ///
  /// In en, this message translates to:
  /// **'Mark as given'**
  String get vaccineMarkGiven;

  /// No description provided for @whoChartTitle.
  ///
  /// In en, this message translates to:
  /// **'WHO Growth Charts'**
  String get whoChartTitle;

  /// No description provided for @whoWeightForAge.
  ///
  /// In en, this message translates to:
  /// **'Weight-for-age'**
  String get whoWeightForAge;

  /// No description provided for @whoHeightForAge.
  ///
  /// In en, this message translates to:
  /// **'Length/Height-for-age'**
  String get whoHeightForAge;

  /// No description provided for @whoHeadForAge.
  ///
  /// In en, this message translates to:
  /// **'Head circumference-for-age'**
  String get whoHeadForAge;

  /// No description provided for @whoGenderBoy.
  ///
  /// In en, this message translates to:
  /// **'Boy'**
  String get whoGenderBoy;

  /// No description provided for @whoGenderGirl.
  ///
  /// In en, this message translates to:
  /// **'Girl'**
  String get whoGenderGirl;

  /// No description provided for @whoNoData.
  ///
  /// In en, this message translates to:
  /// **'No measurements logged yet.\nLog weight from a day\'s entries to see the chart.'**
  String get whoNoData;

  /// No description provided for @whoPercentileLabel.
  ///
  /// In en, this message translates to:
  /// **'P{p}'**
  String whoPercentileLabel(String p);

  /// No description provided for @whoYourBaby.
  ///
  /// In en, this message translates to:
  /// **'Your baby'**
  String get whoYourBaby;

  /// No description provided for @whoAgeMonths.
  ///
  /// In en, this message translates to:
  /// **'{n} mo'**
  String whoAgeMonths(int n);

  /// No description provided for @whoNoBirthDate.
  ///
  /// In en, this message translates to:
  /// **'Set baby\'s date of birth in the profile to see age-based charts.'**
  String get whoNoBirthDate;

  /// No description provided for @notifTitle.
  ///
  /// In en, this message translates to:
  /// **'Reminders'**
  String get notifTitle;

  /// No description provided for @notifFeedingReminder.
  ///
  /// In en, this message translates to:
  /// **'Feeding reminder'**
  String get notifFeedingReminder;

  /// No description provided for @notifFeedingReminderDesc.
  ///
  /// In en, this message translates to:
  /// **'Remind me after {hours}h if no feed logged'**
  String notifFeedingReminderDesc(int hours);

  /// No description provided for @notifDiaperReminder.
  ///
  /// In en, this message translates to:
  /// **'Diaper reminder'**
  String get notifDiaperReminder;

  /// No description provided for @notifDiaperReminderDesc.
  ///
  /// In en, this message translates to:
  /// **'Remind me after {hours}h if no diaper logged'**
  String notifDiaperReminderDesc(int hours);

  /// No description provided for @notifMedicationReminder.
  ///
  /// In en, this message translates to:
  /// **'Medication reminder'**
  String get notifMedicationReminder;

  /// No description provided for @notifEnabled.
  ///
  /// In en, this message translates to:
  /// **'Notifications enabled'**
  String get notifEnabled;

  /// No description provided for @notifDisabled.
  ///
  /// In en, this message translates to:
  /// **'Notifications disabled'**
  String get notifDisabled;

  /// No description provided for @notifPermissionRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enable notifications in your device settings.'**
  String get notifPermissionRequired;

  /// No description provided for @exportTitle.
  ///
  /// In en, this message translates to:
  /// **'Export & backup'**
  String get exportTitle;

  /// No description provided for @exportJson.
  ///
  /// In en, this message translates to:
  /// **'Export as JSON'**
  String get exportJson;

  /// No description provided for @exportPdf.
  ///
  /// In en, this message translates to:
  /// **'Export as PDF'**
  String get exportPdf;

  /// No description provided for @exportPdfDesc.
  ///
  /// In en, this message translates to:
  /// **'Human-readable summary for your paediatrician'**
  String get exportPdfDesc;

  /// No description provided for @exportGoogleDrive.
  ///
  /// In en, this message translates to:
  /// **'Back up to Google Drive'**
  String get exportGoogleDrive;

  /// No description provided for @exportGenerating.
  ///
  /// In en, this message translates to:
  /// **'Generating report...'**
  String get exportGenerating;

  /// No description provided for @milestoneTitle.
  ///
  /// In en, this message translates to:
  /// **'Milestones'**
  String get milestoneTitle;

  /// No description provided for @milestoneTabAchieved.
  ///
  /// In en, this message translates to:
  /// **'Achieved'**
  String get milestoneTabAchieved;

  /// No description provided for @milestoneTabUpcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get milestoneTabUpcoming;

  /// No description provided for @milestoneCustomAdd.
  ///
  /// In en, this message translates to:
  /// **'Custom milestone'**
  String get milestoneCustomAdd;

  /// No description provided for @milestoneDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete milestone?'**
  String get milestoneDeleteTitle;

  /// No description provided for @milestoneEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit milestone'**
  String get milestoneEdit;

  /// No description provided for @milestoneAdd.
  ///
  /// In en, this message translates to:
  /// **'Add milestone'**
  String get milestoneAdd;

  /// No description provided for @milestoneName.
  ///
  /// In en, this message translates to:
  /// **'Milestone name *'**
  String get milestoneName;

  /// No description provided for @milestoneDate.
  ///
  /// In en, this message translates to:
  /// **'Date achieved'**
  String get milestoneDate;

  /// No description provided for @milestoneNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes (optional)'**
  String get milestoneNotes;

  /// No description provided for @milestoneNotesHint.
  ///
  /// In en, this message translates to:
  /// **'Any details worth remembering...'**
  String get milestoneNotesHint;

  /// No description provided for @milestoneNoAchieved.
  ///
  /// In en, this message translates to:
  /// **'No milestones logged yet.'**
  String get milestoneNoAchieved;

  /// No description provided for @milestoneAllDone.
  ///
  /// In en, this message translates to:
  /// **'All preset milestones achieved! 🎉'**
  String get milestoneAllDone;

  /// No description provided for @milestoneFirstSmile.
  ///
  /// In en, this message translates to:
  /// **'😊 First smile'**
  String get milestoneFirstSmile;

  /// No description provided for @milestoneFirstLaugh.
  ///
  /// In en, this message translates to:
  /// **'😂 First laugh'**
  String get milestoneFirstLaugh;

  /// No description provided for @milestoneFirstTooth.
  ///
  /// In en, this message translates to:
  /// **'🦷 First tooth'**
  String get milestoneFirstTooth;

  /// No description provided for @milestoneRolledBackTummy.
  ///
  /// In en, this message translates to:
  /// **'🔄 Rolled back → tummy'**
  String get milestoneRolledBackTummy;

  /// No description provided for @milestoneRolledTummyBack.
  ///
  /// In en, this message translates to:
  /// **'🔄 Rolled tummy → back'**
  String get milestoneRolledTummyBack;

  /// No description provided for @milestoneSatUnsupported.
  ///
  /// In en, this message translates to:
  /// **'🧸 Sat unsupported'**
  String get milestoneSatUnsupported;

  /// No description provided for @milestoneStartedCrawling.
  ///
  /// In en, this message translates to:
  /// **'🐣 Started crawling'**
  String get milestoneStartedCrawling;

  /// No description provided for @milestonePulledToStand.
  ///
  /// In en, this message translates to:
  /// **'🏋️ Pulled to stand'**
  String get milestonePulledToStand;

  /// No description provided for @milestoneFirstSteps.
  ///
  /// In en, this message translates to:
  /// **'👣 First steps'**
  String get milestoneFirstSteps;

  /// No description provided for @milestoneFirstWord.
  ///
  /// In en, this message translates to:
  /// **'💬 First word'**
  String get milestoneFirstWord;

  /// No description provided for @milestoneFirstSolidFood.
  ///
  /// In en, this message translates to:
  /// **'🥣 First solid food'**
  String get milestoneFirstSolidFood;

  /// No description provided for @milestoneFirstHaircut.
  ///
  /// In en, this message translates to:
  /// **'✂️ First haircut'**
  String get milestoneFirstHaircut;

  /// No description provided for @milestoneSleptThroughNight.
  ///
  /// In en, this message translates to:
  /// **'🌙 Slept through the night'**
  String get milestoneSleptThroughNight;

  /// No description provided for @milestoneWavedBye.
  ///
  /// In en, this message translates to:
  /// **'👋 Waved bye-bye'**
  String get milestoneWavedBye;

  /// No description provided for @milestoneClappedHands.
  ///
  /// In en, this message translates to:
  /// **'👏 Clapped hands'**
  String get milestoneClappedHands;

  /// No description provided for @milestoneFirstBirthday.
  ///
  /// In en, this message translates to:
  /// **'🎂 First birthday'**
  String get milestoneFirstBirthday;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearance;

  /// No description provided for @settingsDarkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark mode'**
  String get settingsDarkMode;

  /// No description provided for @settingsDarkActive.
  ///
  /// In en, this message translates to:
  /// **'Dark theme active'**
  String get settingsDarkActive;

  /// No description provided for @settingsLightActive.
  ///
  /// In en, this message translates to:
  /// **'Light theme active'**
  String get settingsLightActive;

  /// No description provided for @settingsUnits.
  ///
  /// In en, this message translates to:
  /// **'Units'**
  String get settingsUnits;

  /// No description provided for @settingsWeightUnit.
  ///
  /// In en, this message translates to:
  /// **'Weight unit'**
  String get settingsWeightUnit;

  /// No description provided for @settingsTempUnit.
  ///
  /// In en, this message translates to:
  /// **'Temperature unit'**
  String get settingsTempUnit;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @settingsNotifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications & reminders'**
  String get settingsNotifications;

  /// No description provided for @settingsExport.
  ///
  /// In en, this message translates to:
  /// **'Export & backup'**
  String get settingsExport;

  /// No description provided for @settingsTips.
  ///
  /// In en, this message translates to:
  /// **'Tips'**
  String get settingsTips;

  /// No description provided for @tipSwitchBabies.
  ///
  /// In en, this message translates to:
  /// **'Switch babies'**
  String get tipSwitchBabies;

  /// No description provided for @tipSwitchBabiesDesc.
  ///
  /// In en, this message translates to:
  /// **'Tap the baby avatar at the top to switch or add a baby profile.'**
  String get tipSwitchBabiesDesc;

  /// No description provided for @tipSwipeDelete.
  ///
  /// In en, this message translates to:
  /// **'Swipe left to delete'**
  String get tipSwipeDelete;

  /// No description provided for @tipSwipeDeleteDesc.
  ///
  /// In en, this message translates to:
  /// **'Works on day tiles and individual entries.'**
  String get tipSwipeDeleteDesc;

  /// No description provided for @tipTapToEdit.
  ///
  /// In en, this message translates to:
  /// **'Tap any entry to edit it'**
  String get tipTapToEdit;

  /// No description provided for @tipMultipleFeeds.
  ///
  /// In en, this message translates to:
  /// **'Log multiple feeds'**
  String get tipMultipleFeeds;

  /// No description provided for @tipMultipleFeedsDesc.
  ///
  /// In en, this message translates to:
  /// **'In the feeding form, tap \"Add another feed\" to log breastfeed + bottle in one go.'**
  String get tipMultipleFeedsDesc;

  /// No description provided for @tipExportData.
  ///
  /// In en, this message translates to:
  /// **'Export data'**
  String get tipExportData;

  /// No description provided for @tipExportDataDesc.
  ///
  /// In en, this message translates to:
  /// **'Use the share icon on Home to export all data as JSON.'**
  String get tipExportDataDesc;

  /// No description provided for @babiesTitle.
  ///
  /// In en, this message translates to:
  /// **'Babies'**
  String get babiesTitle;

  /// No description provided for @addBaby.
  ///
  /// In en, this message translates to:
  /// **'Add baby'**
  String get addBaby;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get editProfile;

  /// No description provided for @babyNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Name *'**
  String get babyNameRequired;

  /// No description provided for @babyDobOptional.
  ///
  /// In en, this message translates to:
  /// **'Date of birth (optional)'**
  String get babyDobOptional;

  /// No description provided for @babyBornOn.
  ///
  /// In en, this message translates to:
  /// **'Born {date}'**
  String babyBornOn(String date);

  /// No description provided for @genderUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get genderUnknown;

  /// No description provided for @genderBoy.
  ///
  /// In en, this message translates to:
  /// **'Boy'**
  String get genderBoy;

  /// No description provided for @genderGirl.
  ///
  /// In en, this message translates to:
  /// **'Girl'**
  String get genderGirl;

  /// No description provided for @cannotDeleteOnlyProfile.
  ///
  /// In en, this message translates to:
  /// **'Can\'t delete the only baby profile.'**
  String get cannotDeleteOnlyProfile;

  /// No description provided for @deleteProfileTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete {name}?'**
  String deleteProfileTitle(String name);

  /// No description provided for @deleteProfileContent.
  ///
  /// In en, this message translates to:
  /// **'All data for this baby will be permanently deleted.'**
  String get deleteProfileContent;

  /// No description provided for @graphsTitle.
  ///
  /// In en, this message translates to:
  /// **'Graphs'**
  String get graphsTitle;

  /// No description provided for @graphsTabDaily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get graphsTabDaily;

  /// No description provided for @graphsTabGrowth.
  ///
  /// In en, this message translates to:
  /// **'Growth'**
  String get graphsTabGrowth;

  /// No description provided for @graphsTabHealth.
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get graphsTabHealth;

  /// No description provided for @graphsTabWho.
  ///
  /// In en, this message translates to:
  /// **'WHO Charts'**
  String get graphsTabWho;

  /// No description provided for @graphsTotalFeeds.
  ///
  /// In en, this message translates to:
  /// **'Total feeds'**
  String get graphsTotalFeeds;

  /// No description provided for @graphsAvgPerDay.
  ///
  /// In en, this message translates to:
  /// **'Avg/day'**
  String get graphsAvgPerDay;

  /// No description provided for @graphsTotalDiapers.
  ///
  /// In en, this message translates to:
  /// **'Diapers'**
  String get graphsTotalDiapers;

  /// No description provided for @graphsTotalMilk.
  ///
  /// In en, this message translates to:
  /// **'Total milk'**
  String get graphsTotalMilk;

  /// No description provided for @graphsTotalSleep.
  ///
  /// In en, this message translates to:
  /// **'Total sleep'**
  String get graphsTotalSleep;

  /// No description provided for @graphsAvgSleep.
  ///
  /// In en, this message translates to:
  /// **'Avg sleep/day'**
  String get graphsAvgSleep;

  /// No description provided for @graphsFeedsPerDay.
  ///
  /// In en, this message translates to:
  /// **'Feeds per day'**
  String get graphsFeedsPerDay;

  /// No description provided for @graphsDiapersPerDay.
  ///
  /// In en, this message translates to:
  /// **'Diapers per day'**
  String get graphsDiapersPerDay;

  /// No description provided for @graphsMilkPerDay.
  ///
  /// In en, this message translates to:
  /// **'Milk per day (ml)'**
  String get graphsMilkPerDay;

  /// No description provided for @graphsSleepPerDay.
  ///
  /// In en, this message translates to:
  /// **'Sleep per day (hours)'**
  String get graphsSleepPerDay;

  /// No description provided for @graphsWeightOverTime.
  ///
  /// In en, this message translates to:
  /// **'Weight over time'**
  String get graphsWeightOverTime;

  /// No description provided for @graphsTempOverTime.
  ///
  /// In en, this message translates to:
  /// **'Temperature over time'**
  String get graphsTempOverTime;

  /// No description provided for @graphsMaxLabel.
  ///
  /// In en, this message translates to:
  /// **'Max: {value}'**
  String graphsMaxLabel(String value);

  /// No description provided for @graphsMinLabel.
  ///
  /// In en, this message translates to:
  /// **'Min: {value}'**
  String graphsMinLabel(String value);

  /// No description provided for @graphsNoWeightData.
  ///
  /// In en, this message translates to:
  /// **'No weight entries yet.\nLog weight from a day\'s entries.'**
  String get graphsNoWeightData;

  /// No description provided for @graphsNoTempData.
  ///
  /// In en, this message translates to:
  /// **'No temperature entries yet.\nLog temperature from a day.'**
  String get graphsNoTempData;

  /// No description provided for @timeLabel.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get timeLabel;

  /// No description provided for @noColourRecorded.
  ///
  /// In en, this message translates to:
  /// **'No colour recorded'**
  String get noColourRecorded;

  /// No description provided for @ageDay.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 day old} other{{count} days old}}'**
  String ageDay(int count);

  /// No description provided for @ageMonth.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 month old} other{{count} months old}}'**
  String ageMonth(int count);

  /// No description provided for @ageYearMonth.
  ///
  /// In en, this message translates to:
  /// **'{years}yr {months}mo old'**
  String ageYearMonth(int years, int months);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'bn', 'de', 'en', 'es', 'fa', 'fr', 'hi', 'id', 'it', 'ja', 'ko', 'ms', 'pt', 'ru', 'sv', 'th', 'tr', 'ur', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'bn': return AppLocalizationsBn();
    case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
    case 'fa': return AppLocalizationsFa();
    case 'fr': return AppLocalizationsFr();
    case 'hi': return AppLocalizationsHi();
    case 'id': return AppLocalizationsId();
    case 'it': return AppLocalizationsIt();
    case 'ja': return AppLocalizationsJa();
    case 'ko': return AppLocalizationsKo();
    case 'ms': return AppLocalizationsMs();
    case 'pt': return AppLocalizationsPt();
    case 'ru': return AppLocalizationsRu();
    case 'sv': return AppLocalizationsSv();
    case 'th': return AppLocalizationsTh();
    case 'tr': return AppLocalizationsTr();
    case 'ur': return AppLocalizationsUr();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
