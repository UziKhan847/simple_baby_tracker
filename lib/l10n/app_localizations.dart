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
  /// **'Export backup'**
  String get exportJson;

  /// No description provided for @exportJsonDesc.
  ///
  /// In en, this message translates to:
  /// **'All data and photos in one .zip file'**
  String get exportJsonDesc;

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

  /// No description provided for @importJson.
  ///
  /// In en, this message translates to:
  /// **'Restore backup'**
  String get importJson;

  /// No description provided for @importJsonDesc.
  ///
  /// In en, this message translates to:
  /// **'From a .zip backup (or an older .json export)'**
  String get importJsonDesc;

  /// No description provided for @importDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Import data?'**
  String get importDialogTitle;

  /// No description provided for @importDialogBody.
  ///
  /// In en, this message translates to:
  /// **'Merge adds the file\'s entries alongside your existing data. Replace all deletes your existing data first.'**
  String get importDialogBody;

  /// No description provided for @importMerge.
  ///
  /// In en, this message translates to:
  /// **'Merge'**
  String get importMerge;

  /// No description provided for @importReplaceAll.
  ///
  /// In en, this message translates to:
  /// **'Replace all'**
  String get importReplaceAll;

  /// No description provided for @importSuccess.
  ///
  /// In en, this message translates to:
  /// **'Import complete'**
  String get importSuccess;

  /// No description provided for @importInvalidFile.
  ///
  /// In en, this message translates to:
  /// **'This doesn\'t look like a Baby Tracker export file.'**
  String get importInvalidFile;

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
  /// **'All preset milestones achieved!'**
  String get milestoneAllDone;

  /// No description provided for @milestoneFirstSmile.
  ///
  /// In en, this message translates to:
  /// **'First smile'**
  String get milestoneFirstSmile;

  /// No description provided for @milestoneFirstLaugh.
  ///
  /// In en, this message translates to:
  /// **'First laugh'**
  String get milestoneFirstLaugh;

  /// No description provided for @milestoneFirstTooth.
  ///
  /// In en, this message translates to:
  /// **'First tooth'**
  String get milestoneFirstTooth;

  /// No description provided for @milestoneRolledBackTummy.
  ///
  /// In en, this message translates to:
  /// **'Rolled back → tummy'**
  String get milestoneRolledBackTummy;

  /// No description provided for @milestoneRolledTummyBack.
  ///
  /// In en, this message translates to:
  /// **'Rolled tummy → back'**
  String get milestoneRolledTummyBack;

  /// No description provided for @milestoneSatUnsupported.
  ///
  /// In en, this message translates to:
  /// **'Sat unsupported'**
  String get milestoneSatUnsupported;

  /// No description provided for @milestoneStartedCrawling.
  ///
  /// In en, this message translates to:
  /// **'Started crawling'**
  String get milestoneStartedCrawling;

  /// No description provided for @milestonePulledToStand.
  ///
  /// In en, this message translates to:
  /// **'Pulled to stand'**
  String get milestonePulledToStand;

  /// No description provided for @milestoneFirstSteps.
  ///
  /// In en, this message translates to:
  /// **'First steps'**
  String get milestoneFirstSteps;

  /// No description provided for @milestoneFirstWord.
  ///
  /// In en, this message translates to:
  /// **'First word'**
  String get milestoneFirstWord;

  /// No description provided for @milestoneFirstSolidFood.
  ///
  /// In en, this message translates to:
  /// **'First solid food'**
  String get milestoneFirstSolidFood;

  /// No description provided for @milestoneFirstHaircut.
  ///
  /// In en, this message translates to:
  /// **'First haircut'**
  String get milestoneFirstHaircut;

  /// No description provided for @milestoneSleptThroughNight.
  ///
  /// In en, this message translates to:
  /// **'Slept through the night'**
  String get milestoneSleptThroughNight;

  /// No description provided for @milestoneWavedBye.
  ///
  /// In en, this message translates to:
  /// **'Waved bye-bye'**
  String get milestoneWavedBye;

  /// No description provided for @milestoneClappedHands.
  ///
  /// In en, this message translates to:
  /// **'Clapped hands'**
  String get milestoneClappedHands;

  /// No description provided for @milestoneFirstBirthday.
  ///
  /// In en, this message translates to:
  /// **'First birthday'**
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

  /// No description provided for @settingsVolumeUnit.
  ///
  /// In en, this message translates to:
  /// **'Milk volume unit'**
  String get settingsVolumeUnit;

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
  /// **'Use the share icon on Home to back up all data and photos in one file.'**
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

  /// No description provided for @graphsMilkPerDayMl.
  ///
  /// In en, this message translates to:
  /// **'Milk per day (ml)'**
  String get graphsMilkPerDayMl;

  /// No description provided for @graphsMilkPerDayOz.
  ///
  /// In en, this message translates to:
  /// **'Milk per day (oz)'**
  String get graphsMilkPerDayOz;

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

  /// No description provided for @medicationLabel.
  ///
  /// In en, this message translates to:
  /// **'Medication: {name}'**
  String medicationLabel(String name);

  /// No description provided for @doctorVisitDefaultReason.
  ///
  /// In en, this message translates to:
  /// **'Visit'**
  String get doctorVisitDefaultReason;

  /// No description provided for @doctorVisitLabel.
  ///
  /// In en, this message translates to:
  /// **'Doctor visit — {reason}'**
  String doctorVisitLabel(String reason);

  /// No description provided for @noteDefaultTitle.
  ///
  /// In en, this message translates to:
  /// **'📝 Note'**
  String get noteDefaultTitle;

  /// No description provided for @noteLabel.
  ///
  /// In en, this message translates to:
  /// **'📝 {title}'**
  String noteLabel(String title);

  /// No description provided for @doctorVisitWithDoctor.
  ///
  /// In en, this message translates to:
  /// **'Dr: {doctor}'**
  String doctorVisitWithDoctor(String doctor);

  /// No description provided for @doctorVisitNoDoctorRecorded.
  ///
  /// In en, this message translates to:
  /// **'No doctor recorded'**
  String get doctorVisitNoDoctorRecorded;

  /// No description provided for @summaryPoosLabel.
  ///
  /// In en, this message translates to:
  /// **'Poos'**
  String get summaryPoosLabel;

  /// No description provided for @summaryPeesLabel.
  ///
  /// In en, this message translates to:
  /// **'Pees'**
  String get summaryPeesLabel;

  /// No description provided for @summaryMilkLabel.
  ///
  /// In en, this message translates to:
  /// **'Milk ml'**
  String get summaryMilkLabel;

  /// No description provided for @summaryMilkLabelMl.
  ///
  /// In en, this message translates to:
  /// **'Milk ml'**
  String get summaryMilkLabelMl;

  /// No description provided for @summaryMilkLabelOz.
  ///
  /// In en, this message translates to:
  /// **'Milk oz'**
  String get summaryMilkLabelOz;

  /// No description provided for @summaryBreastLabel.
  ///
  /// In en, this message translates to:
  /// **'Breast m'**
  String get summaryBreastLabel;

  /// No description provided for @summarySleepLabel.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get summarySleepLabel;

  /// No description provided for @settingsOledMode.
  ///
  /// In en, this message translates to:
  /// **'OLED (true black)'**
  String get settingsOledMode;

  /// No description provided for @settingsOledModeDesc.
  ///
  /// In en, this message translates to:
  /// **'Use pure black backgrounds to save battery on OLED screens'**
  String get settingsOledModeDesc;

  /// No description provided for @settingsImmersiveMode.
  ///
  /// In en, this message translates to:
  /// **'Immersive mode'**
  String get settingsImmersiveMode;

  /// No description provided for @settingsImmersiveModeDesc.
  ///
  /// In en, this message translates to:
  /// **'Hide system status and navigation bars'**
  String get settingsImmersiveModeDesc;

  /// No description provided for @navVaccinationsEntry.
  ///
  /// In en, this message translates to:
  /// **'Vaccinations'**
  String get navVaccinationsEntry;

  /// No description provided for @whoChartsEntry.
  ///
  /// In en, this message translates to:
  /// **'WHO growth charts'**
  String get whoChartsEntry;

  /// No description provided for @medicationEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit medication'**
  String get medicationEditTitle;

  /// No description provided for @medicationLogTitle.
  ///
  /// In en, this message translates to:
  /// **'Log medication'**
  String get medicationLogTitle;

  /// No description provided for @medicationYourCourses.
  ///
  /// In en, this message translates to:
  /// **'Your courses'**
  String get medicationYourCourses;

  /// No description provided for @medicationManageCourses.
  ///
  /// In en, this message translates to:
  /// **'Manage courses'**
  String get medicationManageCourses;

  /// No description provided for @medicationNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Medication name *'**
  String get medicationNameRequired;

  /// No description provided for @medicationDosageWarning.
  ///
  /// In en, this message translates to:
  /// **'Always follow dosage instructions for weight/age. Do not exceed recommended frequency.'**
  String get medicationDosageWarning;

  /// No description provided for @medicationNotesOptional.
  ///
  /// In en, this message translates to:
  /// **'Notes (optional)'**
  String get medicationNotesOptional;

  /// No description provided for @timeAgoMinutes.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{1 minute ago} other{{count} minutes ago}}'**
  String timeAgoMinutes(int count);

  /// No description provided for @timeAgoHours.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{1 hour ago} other{{count} hours ago}}'**
  String timeAgoHours(int count);

  /// No description provided for @timeAgoDays.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{1 day ago} other{{count} days ago}}'**
  String timeAgoDays(int count);

  /// No description provided for @medicationLastGivenAgo.
  ///
  /// In en, this message translates to:
  /// **'Last given {ago}'**
  String medicationLastGivenAgo(String ago);

  /// No description provided for @medicationNeverGiven.
  ///
  /// In en, this message translates to:
  /// **'Not given yet'**
  String get medicationNeverGiven;

  /// No description provided for @medicationDosesToday.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No doses today} one{1 dose today} other{{count} doses today}}'**
  String medicationDosesToday(int count);

  /// No description provided for @medicationTooSoonWarning.
  ///
  /// In en, this message translates to:
  /// **'Next dose isn\'t due for {hours}h after the last one'**
  String medicationTooSoonWarning(int hours);

  /// No description provided for @medicationMaxPerDayWarning.
  ///
  /// In en, this message translates to:
  /// **'Already at the {max}/day limit for this course'**
  String medicationMaxPerDayWarning(int max);

  /// No description provided for @medicationEditCourse.
  ///
  /// In en, this message translates to:
  /// **'Edit course'**
  String get medicationEditCourse;

  /// No description provided for @medicationNewCourse.
  ///
  /// In en, this message translates to:
  /// **'New course'**
  String get medicationNewCourse;

  /// No description provided for @medicationReasonOptional.
  ///
  /// In en, this message translates to:
  /// **'Reason (optional)'**
  String get medicationReasonOptional;

  /// No description provided for @medicationIntervalHoursOptional.
  ///
  /// In en, this message translates to:
  /// **'Repeat every (hours, optional)'**
  String get medicationIntervalHoursOptional;

  /// No description provided for @medicationMaxPerDayOptional.
  ///
  /// In en, this message translates to:
  /// **'Max doses/day (optional)'**
  String get medicationMaxPerDayOptional;

  /// No description provided for @medicationRemindNextDose.
  ///
  /// In en, this message translates to:
  /// **'Remind me when the next dose is due'**
  String get medicationRemindNextDose;

  /// No description provided for @medicationEndCourseTitle.
  ///
  /// In en, this message translates to:
  /// **'End {name}?'**
  String medicationEndCourseTitle(String name);

  /// No description provided for @medicationEndCoursePrompt.
  ///
  /// In en, this message translates to:
  /// **'How did it go?'**
  String get medicationEndCoursePrompt;

  /// No description provided for @medicationDeleteCourseTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this course?'**
  String get medicationDeleteCourseTitle;

  /// No description provided for @medicationResultWorked.
  ///
  /// In en, this message translates to:
  /// **'Worked'**
  String get medicationResultWorked;

  /// No description provided for @medicationResultPartlyWorked.
  ///
  /// In en, this message translates to:
  /// **'Partly worked'**
  String get medicationResultPartlyWorked;

  /// No description provided for @medicationResultDidntWork.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t work'**
  String get medicationResultDidntWork;

  /// No description provided for @medicationResultSideEffects.
  ///
  /// In en, this message translates to:
  /// **'Side effects'**
  String get medicationResultSideEffects;

  /// No description provided for @medicationResultNone.
  ///
  /// In en, this message translates to:
  /// **'Not rated'**
  String get medicationResultNone;

  /// No description provided for @medicationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Medications'**
  String get medicationsTitle;

  /// No description provided for @medicationActiveTab.
  ///
  /// In en, this message translates to:
  /// **'Active ({count})'**
  String medicationActiveTab(int count);

  /// No description provided for @medicationPastTab.
  ///
  /// In en, this message translates to:
  /// **'Past ({count})'**
  String medicationPastTab(int count);

  /// No description provided for @medicationNoActiveCourses.
  ///
  /// In en, this message translates to:
  /// **'No active medication courses.\nStart one with the + button.'**
  String get medicationNoActiveCourses;

  /// No description provided for @medicationNoPastCourses.
  ///
  /// In en, this message translates to:
  /// **'No past courses yet.'**
  String get medicationNoPastCourses;

  /// No description provided for @medicationTimesGiven.
  ///
  /// In en, this message translates to:
  /// **'Given {count}×'**
  String medicationTimesGiven(int count);

  /// No description provided for @medicationLastGivenShort.
  ///
  /// In en, this message translates to:
  /// **'Last: {date}'**
  String medicationLastGivenShort(String date);

  /// No description provided for @medicationNextDueShort.
  ///
  /// In en, this message translates to:
  /// **'Next due {time}'**
  String medicationNextDueShort(String time);

  /// No description provided for @medicationEndCourse.
  ///
  /// In en, this message translates to:
  /// **'End course'**
  String get medicationEndCourse;

  /// No description provided for @feedLastSideHint.
  ///
  /// In en, this message translates to:
  /// **'Last time: {side}'**
  String feedLastSideHint(String side);

  /// No description provided for @feedSideLeft.
  ///
  /// In en, this message translates to:
  /// **'Left'**
  String get feedSideLeft;

  /// No description provided for @feedSideRight.
  ///
  /// In en, this message translates to:
  /// **'Right'**
  String get feedSideRight;

  /// No description provided for @feedSideBoth.
  ///
  /// In en, this message translates to:
  /// **'Both'**
  String get feedSideBoth;

  /// No description provided for @feedSideLeftMinutes.
  ///
  /// In en, this message translates to:
  /// **'Left (min)'**
  String get feedSideLeftMinutes;

  /// No description provided for @feedSideRightMinutes.
  ///
  /// In en, this message translates to:
  /// **'Right (min)'**
  String get feedSideRightMinutes;

  /// No description provided for @timeAgoJustNow.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get timeAgoJustNow;

  /// No description provided for @timeUntilOverdue.
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get timeUntilOverdue;

  /// No description provided for @timeUntilMinutes.
  ///
  /// In en, this message translates to:
  /// **'in {count}m'**
  String timeUntilMinutes(int count);

  /// No description provided for @timeUntilHours.
  ///
  /// In en, this message translates to:
  /// **'in {count}h'**
  String timeUntilHours(int count);

  /// No description provided for @timeUntilDays.
  ///
  /// In en, this message translates to:
  /// **'in {count}d'**
  String timeUntilDays(int count);

  /// No description provided for @timerDiscardTitle.
  ///
  /// In en, this message translates to:
  /// **'Discard this timer?'**
  String get timerDiscardTitle;

  /// No description provided for @timerDiscard.
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get timerDiscard;

  /// No description provided for @timerFeedingRunning.
  ///
  /// In en, this message translates to:
  /// **'Feeding · {side}'**
  String timerFeedingRunning(String side);

  /// No description provided for @timerSleepRunning.
  ///
  /// In en, this message translates to:
  /// **'Sleep timer running'**
  String get timerSleepRunning;

  /// No description provided for @timerSwitchSide.
  ///
  /// In en, this message translates to:
  /// **'Switch side'**
  String get timerSwitchSide;

  /// No description provided for @timerStop.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get timerStop;

  /// No description provided for @sinceLastFeed.
  ///
  /// In en, this message translates to:
  /// **'Last feed'**
  String get sinceLastFeed;

  /// No description provided for @sinceLastDiaper.
  ///
  /// In en, this message translates to:
  /// **'Last diaper'**
  String get sinceLastDiaper;

  /// No description provided for @sinceAwake.
  ///
  /// In en, this message translates to:
  /// **'Awake'**
  String get sinceAwake;

  /// No description provided for @sinceAsleep.
  ///
  /// In en, this message translates to:
  /// **'Asleep'**
  String get sinceAsleep;

  /// No description provided for @nextDoseDue.
  ///
  /// In en, this message translates to:
  /// **'{name} due'**
  String nextDoseDue(String name);

  /// No description provided for @weighConditionNaked.
  ///
  /// In en, this message translates to:
  /// **'Naked'**
  String get weighConditionNaked;

  /// No description provided for @weighConditionDiaper.
  ///
  /// In en, this message translates to:
  /// **'Diaper only'**
  String get weighConditionDiaper;

  /// No description provided for @weighConditionLightClothes.
  ///
  /// In en, this message translates to:
  /// **'Light clothes'**
  String get weighConditionLightClothes;

  /// No description provided for @weighConditionDressed.
  ///
  /// In en, this message translates to:
  /// **'Dressed'**
  String get weighConditionDressed;

  /// No description provided for @weighCondition.
  ///
  /// In en, this message translates to:
  /// **'Weighed wearing'**
  String get weighCondition;

  /// No description provided for @growthMeasurementsOptional.
  ///
  /// In en, this message translates to:
  /// **'Other measurements (optional)'**
  String get growthMeasurementsOptional;

  /// No description provided for @growthHeightCm.
  ///
  /// In en, this message translates to:
  /// **'Height (cm)'**
  String get growthHeightCm;

  /// No description provided for @growthHeadCm.
  ///
  /// In en, this message translates to:
  /// **'Head circumference (cm)'**
  String get growthHeadCm;

  /// No description provided for @weighConditionChangedWarning.
  ///
  /// In en, this message translates to:
  /// **'Last time was weighed {condition} — the difference may not be just growth'**
  String weighConditionChangedWarning(String condition);

  /// No description provided for @growthHeightValue.
  ///
  /// In en, this message translates to:
  /// **'{cm} cm'**
  String growthHeightValue(String cm);

  /// No description provided for @growthHeadValue.
  ///
  /// In en, this message translates to:
  /// **'Head {cm} cm'**
  String growthHeadValue(String cm);

  /// No description provided for @growthHeightOverTime.
  ///
  /// In en, this message translates to:
  /// **'Height over time'**
  String get growthHeightOverTime;

  /// No description provided for @growthHeadOverTime.
  ///
  /// In en, this message translates to:
  /// **'Head circumference over time'**
  String get growthHeadOverTime;

  /// No description provided for @graphsRecentWeighIns.
  ///
  /// In en, this message translates to:
  /// **'Recent weigh-ins'**
  String get graphsRecentWeighIns;

  /// No description provided for @solidsAmountFewSpoons.
  ///
  /// In en, this message translates to:
  /// **'A few spoons'**
  String get solidsAmountFewSpoons;

  /// No description provided for @solidsAmountHalf.
  ///
  /// In en, this message translates to:
  /// **'Half a portion'**
  String get solidsAmountHalf;

  /// No description provided for @solidsAmountFull.
  ///
  /// In en, this message translates to:
  /// **'Full portion'**
  String get solidsAmountFull;

  /// No description provided for @solidsAmountTaste.
  ///
  /// In en, this message translates to:
  /// **'Just a taste'**
  String get solidsAmountTaste;

  /// No description provided for @solidsReactionMild.
  ///
  /// In en, this message translates to:
  /// **'Mild reaction'**
  String get solidsReactionMild;

  /// No description provided for @solidsReactionAllergic.
  ///
  /// In en, this message translates to:
  /// **'Allergic reaction'**
  String get solidsReactionAllergic;

  /// No description provided for @solidsReactionNone.
  ///
  /// In en, this message translates to:
  /// **'No reaction'**
  String get solidsReactionNone;

  /// No description provided for @solidsEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit solid food'**
  String get solidsEditTitle;

  /// No description provided for @solidsLogTitle.
  ///
  /// In en, this message translates to:
  /// **'Log solid food'**
  String get solidsLogTitle;

  /// No description provided for @solidsFoodsLabel.
  ///
  /// In en, this message translates to:
  /// **'Foods'**
  String get solidsFoodsLabel;

  /// No description provided for @solidsAddFoodHint.
  ///
  /// In en, this message translates to:
  /// **'Add a food'**
  String get solidsAddFoodHint;

  /// No description provided for @solidsAmount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get solidsAmount;

  /// No description provided for @solidsLiked.
  ///
  /// In en, this message translates to:
  /// **'How did they like it?'**
  String get solidsLiked;

  /// No description provided for @solidsReaction.
  ///
  /// In en, this message translates to:
  /// **'Reaction'**
  String get solidsReaction;

  /// No description provided for @solidsNotesOptional.
  ///
  /// In en, this message translates to:
  /// **'Notes (optional)'**
  String get solidsNotesOptional;

  /// No description provided for @foodsTitle.
  ///
  /// In en, this message translates to:
  /// **'Foods tried'**
  String get foodsTitle;

  /// No description provided for @foodsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No solid foods logged yet.'**
  String get foodsEmpty;

  /// No description provided for @foodsAllergensNotYet.
  ///
  /// In en, this message translates to:
  /// **'Common allergens not yet introduced'**
  String get foodsAllergensNotYet;

  /// No description provided for @foodsTriedCount.
  ///
  /// In en, this message translates to:
  /// **'{count} foods tried'**
  String foodsTriedCount(int count);

  /// No description provided for @foodsFirstTried.
  ///
  /// In en, this message translates to:
  /// **'First: {date}'**
  String foodsFirstTried(String date);

  /// No description provided for @foodsTimesEaten.
  ///
  /// In en, this message translates to:
  /// **'{count}×'**
  String foodsTimesEaten(int count);

  /// No description provided for @entryTypeSolids.
  ///
  /// In en, this message translates to:
  /// **'Solid food'**
  String get entryTypeSolids;

  /// No description provided for @feedAmountOz.
  ///
  /// In en, this message translates to:
  /// **'Amount (oz)'**
  String get feedAmountOz;

  /// No description provided for @notifFeedingReminderDescInterval.
  ///
  /// In en, this message translates to:
  /// **'Remind me {interval} after the last feed'**
  String notifFeedingReminderDescInterval(String interval);

  /// No description provided for @notifDiaperReminderDescInterval.
  ///
  /// In en, this message translates to:
  /// **'Remind me {interval} after the last diaper'**
  String notifDiaperReminderDescInterval(String interval);

  /// No description provided for @notifIntervalEvery.
  ///
  /// In en, this message translates to:
  /// **'Every {interval}'**
  String notifIntervalEvery(String interval);

  /// No description provided for @notifIntervalTitle.
  ///
  /// In en, this message translates to:
  /// **'Reminder interval'**
  String get notifIntervalTitle;

  /// No description provided for @notifIntervalHours.
  ///
  /// In en, this message translates to:
  /// **'Hours'**
  String get notifIntervalHours;

  /// No description provided for @notifIntervalMinutes.
  ///
  /// In en, this message translates to:
  /// **'Minutes'**
  String get notifIntervalMinutes;

  /// No description provided for @notifIntervalTooShort.
  ///
  /// In en, this message translates to:
  /// **'At least {minutes} minutes'**
  String notifIntervalTooShort(int minutes);

  /// No description provided for @settingsFeeding.
  ///
  /// In en, this message translates to:
  /// **'Feeding'**
  String get settingsFeeding;

  /// No description provided for @settingsTrackBottles.
  ///
  /// In en, this message translates to:
  /// **'Track bottles'**
  String get settingsTrackBottles;

  /// No description provided for @settingsTrackBottlesDesc.
  ///
  /// In en, this message translates to:
  /// **'Pick which bottle was used, and how much was prepared vs drunk'**
  String get settingsTrackBottlesDesc;

  /// No description provided for @bottlesTitle.
  ///
  /// In en, this message translates to:
  /// **'My bottles'**
  String get bottlesTitle;

  /// No description provided for @bottlesEmpty.
  ///
  /// In en, this message translates to:
  /// **'No bottles yet.\nAdd the bottles you use so you can pick one when logging a feed.'**
  String get bottlesEmpty;

  /// No description provided for @bottleAdd.
  ///
  /// In en, this message translates to:
  /// **'Add bottle'**
  String get bottleAdd;

  /// No description provided for @bottleEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit bottle'**
  String get bottleEdit;

  /// No description provided for @bottleLabel.
  ///
  /// In en, this message translates to:
  /// **'Label / number (e.g. #3)'**
  String get bottleLabel;

  /// No description provided for @bottleBrand.
  ///
  /// In en, this message translates to:
  /// **'Brand / type (optional)'**
  String get bottleBrand;

  /// No description provided for @bottleCapacity.
  ///
  /// In en, this message translates to:
  /// **'Capacity (optional)'**
  String get bottleCapacity;

  /// No description provided for @bottleNipple.
  ///
  /// In en, this message translates to:
  /// **'Nipple size / flow (optional)'**
  String get bottleNipple;

  /// No description provided for @bottleMaterial.
  ///
  /// In en, this message translates to:
  /// **'Material'**
  String get bottleMaterial;

  /// No description provided for @bottleRetired.
  ///
  /// In en, this message translates to:
  /// **'Retired'**
  String get bottleRetired;

  /// No description provided for @bottleRetire.
  ///
  /// In en, this message translates to:
  /// **'Retire'**
  String get bottleRetire;

  /// No description provided for @bottleUnretire.
  ///
  /// In en, this message translates to:
  /// **'Use again'**
  String get bottleUnretire;

  /// No description provided for @bottleDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete {name}?'**
  String bottleDeleteTitle(String name);

  /// No description provided for @bottleDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'Past feeds keep their amounts but will no longer show this bottle. To hide it from the picker but keep history, use Retire instead.'**
  String get bottleDeleteBody;

  /// No description provided for @feedPrepared.
  ///
  /// In en, this message translates to:
  /// **'Prepared'**
  String get feedPrepared;

  /// No description provided for @feedDrank.
  ///
  /// In en, this message translates to:
  /// **'Drank'**
  String get feedDrank;

  /// No description provided for @feedLeftover.
  ///
  /// In en, this message translates to:
  /// **'{amount} left over'**
  String feedLeftover(String amount);

  /// No description provided for @feedDrankMoreThanPrepared.
  ///
  /// In en, this message translates to:
  /// **'More than was prepared?'**
  String get feedDrankMoreThanPrepared;

  /// No description provided for @feedWhichBottle.
  ///
  /// In en, this message translates to:
  /// **'Which bottle?'**
  String get feedWhichBottle;

  /// No description provided for @feedNoBottlesYet.
  ///
  /// In en, this message translates to:
  /// **'No bottles yet — add them in Settings → My bottles.'**
  String get feedNoBottlesYet;

  /// No description provided for @photoPrivacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Your photos stay on this phone'**
  String get photoPrivacyTitle;

  /// No description provided for @photoPrivacyBody.
  ///
  /// In en, this message translates to:
  /// **'Photos are saved only inside this app on this device. The app has no internet access, so nothing is ever uploaded or shared unless you export a backup yourself.\n\nAndroid may ask for camera access the first time you take a photo.'**
  String get photoPrivacyBody;

  /// No description provided for @photoPrivacyContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get photoPrivacyContinue;

  /// No description provided for @photoTakePhoto.
  ///
  /// In en, this message translates to:
  /// **'Take a photo'**
  String get photoTakePhoto;

  /// No description provided for @photoChooseFromGallery.
  ///
  /// In en, this message translates to:
  /// **'Choose from gallery'**
  String get photoChooseFromGallery;

  /// No description provided for @photoCaption.
  ///
  /// In en, this message translates to:
  /// **'Caption'**
  String get photoCaption;

  /// No description provided for @photoCompare.
  ///
  /// In en, this message translates to:
  /// **'First vs latest'**
  String get photoCompare;

  /// No description provided for @photoAddOtherDay.
  ///
  /// In en, this message translates to:
  /// **'Add for another day'**
  String get photoAddOtherDay;

  /// No description provided for @photoEmpty.
  ///
  /// In en, this message translates to:
  /// **'No photos yet.\nTake one photo a day and watch your baby grow.'**
  String get photoEmpty;

  /// No description provided for @photoToday.
  ///
  /// In en, this message translates to:
  /// **'Today\'s photo'**
  String get photoToday;

  /// No description provided for @photoAddToday.
  ///
  /// In en, this message translates to:
  /// **'Add today\'s photo'**
  String get photoAddToday;

  /// No description provided for @photoReplace.
  ///
  /// In en, this message translates to:
  /// **'Replace'**
  String get photoReplace;

  /// No description provided for @photoDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this photo?'**
  String get photoDeleteTitle;

  /// No description provided for @ageBeforeBirth.
  ///
  /// In en, this message translates to:
  /// **'Before birth'**
  String get ageBeforeBirth;

  /// No description provided for @ageDays.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{Birth day} one{1 day old} other{{count} days old}}'**
  String ageDays(int count);

  /// No description provided for @ageMonthsDays.
  ///
  /// In en, this message translates to:
  /// **'{months} mo {days} d'**
  String ageMonthsDays(int months, int days);

  /// No description provided for @ageYearsMonths.
  ///
  /// In en, this message translates to:
  /// **'{years} yr {months} mo'**
  String ageYearsMonths(int years, int months);

  /// No description provided for @navMemories.
  ///
  /// In en, this message translates to:
  /// **'Memories'**
  String get navMemories;

  /// No description provided for @memoriesTabPhotos.
  ///
  /// In en, this message translates to:
  /// **'Photos'**
  String get memoriesTabPhotos;

  /// No description provided for @milestoneNoAchievedHint.
  ///
  /// In en, this message translates to:
  /// **'Tap \"Upcoming\" to log a preset,\nor use the button below for a custom one.'**
  String get milestoneNoAchievedHint;

  /// No description provided for @skinTitle.
  ///
  /// In en, this message translates to:
  /// **'Skin conditions'**
  String get skinTitle;

  /// No description provided for @skinNew.
  ///
  /// In en, this message translates to:
  /// **'New skin condition'**
  String get skinNew;

  /// No description provided for @skinEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit skin condition'**
  String get skinEdit;

  /// No description provided for @skinTabActive.
  ///
  /// In en, this message translates to:
  /// **'Active ({count})'**
  String skinTabActive(int count);

  /// No description provided for @skinTabHealed.
  ///
  /// In en, this message translates to:
  /// **'Healed ({count})'**
  String skinTabHealed(int count);

  /// No description provided for @skinEmptyActive.
  ///
  /// In en, this message translates to:
  /// **'No skin conditions being tracked.\nTap + to start one — you can add a photo each day to show the doctor how it\'s changing.'**
  String get skinEmptyActive;

  /// No description provided for @skinEmptyHealed.
  ///
  /// In en, this message translates to:
  /// **'Nothing healed yet.'**
  String get skinEmptyHealed;

  /// No description provided for @skinUpdateDue.
  ///
  /// In en, this message translates to:
  /// **'Update today'**
  String get skinUpdateDue;

  /// No description provided for @skinSince.
  ///
  /// In en, this message translates to:
  /// **'Since {date}'**
  String skinSince(String date);

  /// No description provided for @skinDays.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{1 day} other{{count} days}}'**
  String skinDays(int count);

  /// No description provided for @skinHealedOn.
  ///
  /// In en, this message translates to:
  /// **'Healed {date}'**
  String skinHealedOn(String date);

  /// No description provided for @skinReminderAt.
  ///
  /// In en, this message translates to:
  /// **'Daily reminder at {time}'**
  String skinReminderAt(String time);

  /// No description provided for @skinSeverityTrend.
  ///
  /// In en, this message translates to:
  /// **'Severity over time'**
  String get skinSeverityTrend;

  /// No description provided for @skinNoUpdates.
  ///
  /// In en, this message translates to:
  /// **'No updates yet. Add today\'s to start the timeline.'**
  String get skinNoUpdates;

  /// No description provided for @skinExportPdf.
  ///
  /// In en, this message translates to:
  /// **'Export for doctor (PDF)'**
  String get skinExportPdf;

  /// No description provided for @skinMarkHealed.
  ///
  /// In en, this message translates to:
  /// **'Mark healed'**
  String get skinMarkHealed;

  /// No description provided for @skinReopen.
  ///
  /// In en, this message translates to:
  /// **'Mark active again'**
  String get skinReopen;

  /// No description provided for @skinUpdateToday.
  ///
  /// In en, this message translates to:
  /// **'Add today\'s update'**
  String get skinUpdateToday;

  /// No description provided for @skinEditToday.
  ///
  /// In en, this message translates to:
  /// **'Edit today\'s update'**
  String get skinEditToday;

  /// No description provided for @skinDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete {name} and all its updates?'**
  String skinDeleteTitle(String name);

  /// No description provided for @skinDeleteUpdateTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this update?'**
  String get skinDeleteUpdateTitle;

  /// No description provided for @skinTreatmentValue.
  ///
  /// In en, this message translates to:
  /// **'Treatment: {treatment}'**
  String skinTreatmentValue(String treatment);

  /// No description provided for @skinName.
  ///
  /// In en, this message translates to:
  /// **'Condition *'**
  String get skinName;

  /// No description provided for @skinBodyArea.
  ///
  /// In en, this message translates to:
  /// **'Where on the body?'**
  String get skinBodyArea;

  /// No description provided for @skinBegan.
  ///
  /// In en, this message translates to:
  /// **'Began on'**
  String get skinBegan;

  /// No description provided for @skinRemindDaily.
  ///
  /// In en, this message translates to:
  /// **'Remind me to update it daily'**
  String get skinRemindDaily;

  /// No description provided for @skinReminderTime.
  ///
  /// In en, this message translates to:
  /// **'Reminder time'**
  String get skinReminderTime;

  /// No description provided for @skinUpdateTitle.
  ///
  /// In en, this message translates to:
  /// **'Skin update'**
  String get skinUpdateTitle;

  /// No description provided for @skinSeverity.
  ///
  /// In en, this message translates to:
  /// **'How does it look?'**
  String get skinSeverity;

  /// No description provided for @skinSeverity0.
  ///
  /// In en, this message translates to:
  /// **'0 · Clear'**
  String get skinSeverity0;

  /// No description provided for @skinSeverity1.
  ///
  /// In en, this message translates to:
  /// **'1 · Mild'**
  String get skinSeverity1;

  /// No description provided for @skinSeverity2.
  ///
  /// In en, this message translates to:
  /// **'2 · Moderate'**
  String get skinSeverity2;

  /// No description provided for @skinSeverity3.
  ///
  /// In en, this message translates to:
  /// **'3 · Severe'**
  String get skinSeverity3;

  /// No description provided for @skinSeverity4.
  ///
  /// In en, this message translates to:
  /// **'4 · Very severe'**
  String get skinSeverity4;

  /// No description provided for @skinTreatment.
  ///
  /// In en, this message translates to:
  /// **'Treatment (optional)'**
  String get skinTreatment;

  /// No description provided for @skinTreatmentHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. moisturiser, hydrocortisone 1%'**
  String get skinTreatmentHint;

  /// No description provided for @skinAddPhoto.
  ///
  /// In en, this message translates to:
  /// **'Add a photo'**
  String get skinAddPhoto;

  /// No description provided for @skinCardNone.
  ///
  /// In en, this message translates to:
  /// **'Track a rash, eczema or other skin condition day by day, with photos for the doctor'**
  String get skinCardNone;

  /// No description provided for @skinCardDue.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{1 needs today\'s update} other{{count} need today\'s update}}'**
  String skinCardDue(int count);

  /// No description provided for @backupPreparing.
  ///
  /// In en, this message translates to:
  /// **'Preparing backup…'**
  String get backupPreparing;

  /// No description provided for @backupFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t create the backup.'**
  String get backupFailed;

  /// No description provided for @backupSavedTo.
  ///
  /// In en, this message translates to:
  /// **'Backup saved to:'**
  String get backupSavedTo;

  /// No description provided for @backupShareSubject.
  ///
  /// In en, this message translates to:
  /// **'Baby Tracker backup'**
  String get backupShareSubject;

  /// No description provided for @importIncludesPhotos.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{Includes 1 photo.} other{Includes {count} photos.}}'**
  String importIncludesPhotos(int count);

  /// No description provided for @widgetFeed.
  ///
  /// In en, this message translates to:
  /// **'Feed'**
  String get widgetFeed;

  /// No description provided for @widgetStopFeed.
  ///
  /// In en, this message translates to:
  /// **'Stop feed'**
  String get widgetStopFeed;

  /// No description provided for @widgetDiaper.
  ///
  /// In en, this message translates to:
  /// **'Diaper'**
  String get widgetDiaper;

  /// No description provided for @widgetSleep.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get widgetSleep;

  /// No description provided for @widgetWakeUp.
  ///
  /// In en, this message translates to:
  /// **'Woke up'**
  String get widgetWakeUp;

  /// No description provided for @widgetFeedingFor.
  ///
  /// In en, this message translates to:
  /// **'Feeding {duration}'**
  String widgetFeedingFor(String duration);

  /// No description provided for @widgetFedAgo.
  ///
  /// In en, this message translates to:
  /// **'Fed {ago}'**
  String widgetFedAgo(String ago);

  /// No description provided for @widgetNoFeedsYet.
  ///
  /// In en, this message translates to:
  /// **'No feeds yet'**
  String get widgetNoFeedsYet;

  /// No description provided for @widgetChangedAgo.
  ///
  /// In en, this message translates to:
  /// **'Changed {ago}'**
  String widgetChangedAgo(String ago);

  /// No description provided for @widgetNoDiapersYet.
  ///
  /// In en, this message translates to:
  /// **'No diapers yet'**
  String get widgetNoDiapersYet;

  /// No description provided for @widgetAsleepFor.
  ///
  /// In en, this message translates to:
  /// **'Asleep {duration}'**
  String widgetAsleepFor(String duration);

  /// No description provided for @widgetAwakeFor.
  ///
  /// In en, this message translates to:
  /// **'Woke {ago}'**
  String widgetAwakeFor(String ago);

  /// No description provided for @widgetStopSleepFirst.
  ///
  /// In en, this message translates to:
  /// **'Stop the sleep timer first'**
  String get widgetStopSleepFirst;

  /// No description provided for @widgetStopFeedFirst.
  ///
  /// In en, this message translates to:
  /// **'Stop the feeding timer first'**
  String get widgetStopFeedFirst;

  /// No description provided for @quickAddTitle.
  ///
  /// In en, this message translates to:
  /// **'Add for {name}'**
  String quickAddTitle(String name);

  /// No description provided for @quickAddOpenApp.
  ///
  /// In en, this message translates to:
  /// **'Open the app'**
  String get quickAddOpenApp;

  /// No description provided for @foodPeanut.
  ///
  /// In en, this message translates to:
  /// **'Peanut'**
  String get foodPeanut;

  /// No description provided for @foodEgg.
  ///
  /// In en, this message translates to:
  /// **'Egg'**
  String get foodEgg;

  /// No description provided for @foodDairy.
  ///
  /// In en, this message translates to:
  /// **'Dairy'**
  String get foodDairy;

  /// No description provided for @foodWheat.
  ///
  /// In en, this message translates to:
  /// **'Wheat'**
  String get foodWheat;

  /// No description provided for @foodSoy.
  ///
  /// In en, this message translates to:
  /// **'Soy'**
  String get foodSoy;

  /// No description provided for @foodFish.
  ///
  /// In en, this message translates to:
  /// **'Fish'**
  String get foodFish;

  /// No description provided for @foodShellfish.
  ///
  /// In en, this message translates to:
  /// **'Shellfish'**
  String get foodShellfish;

  /// No description provided for @foodTreeNuts.
  ///
  /// In en, this message translates to:
  /// **'Tree nuts'**
  String get foodTreeNuts;

  /// No description provided for @foodSesame.
  ///
  /// In en, this message translates to:
  /// **'Sesame'**
  String get foodSesame;

  /// No description provided for @foodBanana.
  ///
  /// In en, this message translates to:
  /// **'Banana'**
  String get foodBanana;

  /// No description provided for @foodAvocado.
  ///
  /// In en, this message translates to:
  /// **'Avocado'**
  String get foodAvocado;

  /// No description provided for @foodSweetPotato.
  ///
  /// In en, this message translates to:
  /// **'Sweet potato'**
  String get foodSweetPotato;

  /// No description provided for @foodRiceCereal.
  ///
  /// In en, this message translates to:
  /// **'Rice cereal'**
  String get foodRiceCereal;

  /// No description provided for @foodOatmeal.
  ///
  /// In en, this message translates to:
  /// **'Oatmeal'**
  String get foodOatmeal;

  /// No description provided for @foodCarrot.
  ///
  /// In en, this message translates to:
  /// **'Carrot'**
  String get foodCarrot;

  /// No description provided for @foodApple.
  ///
  /// In en, this message translates to:
  /// **'Apple'**
  String get foodApple;

  /// No description provided for @foodPea.
  ///
  /// In en, this message translates to:
  /// **'Pea'**
  String get foodPea;

  /// No description provided for @symptomRash.
  ///
  /// In en, this message translates to:
  /// **'Rash'**
  String get symptomRash;

  /// No description provided for @symptomHives.
  ///
  /// In en, this message translates to:
  /// **'Hives'**
  String get symptomHives;

  /// No description provided for @symptomVomiting.
  ///
  /// In en, this message translates to:
  /// **'Vomiting'**
  String get symptomVomiting;

  /// No description provided for @symptomDiarrhea.
  ///
  /// In en, this message translates to:
  /// **'Diarrhea'**
  String get symptomDiarrhea;

  /// No description provided for @symptomSwelling.
  ///
  /// In en, this message translates to:
  /// **'Swelling'**
  String get symptomSwelling;

  /// No description provided for @doseUnitDrops.
  ///
  /// In en, this message translates to:
  /// **'drops'**
  String get doseUnitDrops;

  /// No description provided for @doseUnitTablets.
  ///
  /// In en, this message translates to:
  /// **'tablets'**
  String get doseUnitTablets;

  /// No description provided for @bottleMaterialPlastic.
  ///
  /// In en, this message translates to:
  /// **'Plastic'**
  String get bottleMaterialPlastic;

  /// No description provided for @bottleMaterialGlass.
  ///
  /// In en, this message translates to:
  /// **'Glass'**
  String get bottleMaterialGlass;

  /// No description provided for @bottleMaterialSilicone.
  ///
  /// In en, this message translates to:
  /// **'Silicone'**
  String get bottleMaterialSilicone;

  /// No description provided for @bottleMaterialSteel.
  ///
  /// In en, this message translates to:
  /// **'Stainless steel'**
  String get bottleMaterialSteel;

  /// No description provided for @visitReasonRoutine.
  ///
  /// In en, this message translates to:
  /// **'Routine check-up'**
  String get visitReasonRoutine;

  /// No description provided for @visitReasonSick.
  ///
  /// In en, this message translates to:
  /// **'Sick visit'**
  String get visitReasonSick;

  /// No description provided for @visitReasonVaccination.
  ///
  /// In en, this message translates to:
  /// **'Vaccination'**
  String get visitReasonVaccination;

  /// No description provided for @visitReasonSpecialist.
  ///
  /// In en, this message translates to:
  /// **'Specialist'**
  String get visitReasonSpecialist;

  /// No description provided for @visitReasonFollowUp.
  ///
  /// In en, this message translates to:
  /// **'Follow-up'**
  String get visitReasonFollowUp;

  /// No description provided for @visitReasonOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get visitReasonOther;

  /// No description provided for @pooColourPale.
  ///
  /// In en, this message translates to:
  /// **'Pale'**
  String get pooColourPale;

  /// No description provided for @noteTagHappyDay.
  ///
  /// In en, this message translates to:
  /// **'Happy day'**
  String get noteTagHappyDay;

  /// No description provided for @noteTagSleptWell.
  ///
  /// In en, this message translates to:
  /// **'Slept well'**
  String get noteTagSleptWell;

  /// No description provided for @noteTagFussy.
  ///
  /// In en, this message translates to:
  /// **'Fussy'**
  String get noteTagFussy;

  /// No description provided for @noteTagNotWell.
  ///
  /// In en, this message translates to:
  /// **'Not feeling well'**
  String get noteTagNotWell;

  /// No description provided for @noteTagFirstTime.
  ///
  /// In en, this message translates to:
  /// **'First time!'**
  String get noteTagFirstTime;

  /// No description provided for @noteTagTeething.
  ///
  /// In en, this message translates to:
  /// **'Teething'**
  String get noteTagTeething;

  /// No description provided for @noteTagGrowthSpurt.
  ///
  /// In en, this message translates to:
  /// **'Growth spurt'**
  String get noteTagGrowthSpurt;

  /// No description provided for @noteTagMilestone.
  ///
  /// In en, this message translates to:
  /// **'Milestone'**
  String get noteTagMilestone;

  /// No description provided for @tummyTimeNotesHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. enjoyed it, fussy...'**
  String get tummyTimeNotesHint;

  /// No description provided for @skinSuggestEczema.
  ///
  /// In en, this message translates to:
  /// **'Eczema'**
  String get skinSuggestEczema;

  /// No description provided for @skinSuggestDiaperRash.
  ///
  /// In en, this message translates to:
  /// **'Diaper rash'**
  String get skinSuggestDiaperRash;

  /// No description provided for @skinSuggestCradleCap.
  ///
  /// In en, this message translates to:
  /// **'Cradle cap'**
  String get skinSuggestCradleCap;

  /// No description provided for @skinSuggestBabyAcne.
  ///
  /// In en, this message translates to:
  /// **'Baby acne'**
  String get skinSuggestBabyAcne;

  /// No description provided for @skinSuggestHeatRash.
  ///
  /// In en, this message translates to:
  /// **'Heat rash'**
  String get skinSuggestHeatRash;

  /// No description provided for @skinSuggestDrySkin.
  ///
  /// In en, this message translates to:
  /// **'Dry skin'**
  String get skinSuggestDrySkin;

  /// No description provided for @bodyFace.
  ///
  /// In en, this message translates to:
  /// **'Face'**
  String get bodyFace;

  /// No description provided for @bodyScalp.
  ///
  /// In en, this message translates to:
  /// **'Scalp'**
  String get bodyScalp;

  /// No description provided for @bodyNeck.
  ///
  /// In en, this message translates to:
  /// **'Neck'**
  String get bodyNeck;

  /// No description provided for @bodyChest.
  ///
  /// In en, this message translates to:
  /// **'Chest'**
  String get bodyChest;

  /// No description provided for @bodyBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get bodyBack;

  /// No description provided for @bodyArms.
  ///
  /// In en, this message translates to:
  /// **'Arms'**
  String get bodyArms;

  /// No description provided for @bodyHands.
  ///
  /// In en, this message translates to:
  /// **'Hands'**
  String get bodyHands;

  /// No description provided for @bodyDiaperArea.
  ///
  /// In en, this message translates to:
  /// **'Diaper area'**
  String get bodyDiaperArea;

  /// No description provided for @bodyLegs.
  ///
  /// In en, this message translates to:
  /// **'Legs'**
  String get bodyLegs;

  /// No description provided for @bodyFeet.
  ///
  /// In en, this message translates to:
  /// **'Feet'**
  String get bodyFeet;

  /// No description provided for @medSuggestGripeWater.
  ///
  /// In en, this message translates to:
  /// **'Gripe water'**
  String get medSuggestGripeWater;

  /// No description provided for @medSuggestVitaminD.
  ///
  /// In en, this message translates to:
  /// **'Vitamin D'**
  String get medSuggestVitaminD;

  /// No description provided for @medSuggestIronDrops.
  ///
  /// In en, this message translates to:
  /// **'Iron drops'**
  String get medSuggestIronDrops;

  /// No description provided for @medSuggestAntibiotic.
  ///
  /// In en, this message translates to:
  /// **'Antibiotic'**
  String get medSuggestAntibiotic;

  /// No description provided for @medSuggestProbiotic.
  ///
  /// In en, this message translates to:
  /// **'Probiotic'**
  String get medSuggestProbiotic;

  /// No description provided for @vaccinePageTitle.
  ///
  /// In en, this message translates to:
  /// **'{name} — Vaccinations'**
  String vaccinePageTitle(String name);

  /// No description provided for @vaccineDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete vaccine record?'**
  String get vaccineDeleteTitle;

  /// No description provided for @vaccineSiteHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. left thigh'**
  String get vaccineSiteHint;

  /// No description provided for @vaccineNotesHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. mild fever, fussiness, no reaction...'**
  String get vaccineNotesHint;

  /// No description provided for @vaccineNoGivenHint.
  ///
  /// In en, this message translates to:
  /// **'Use the + button or tap \"Mark as given\" in the Schedule tab.'**
  String get vaccineNoGivenHint;

  /// No description provided for @vaccineAgeBirth.
  ///
  /// In en, this message translates to:
  /// **'Birth'**
  String get vaccineAgeBirth;

  /// No description provided for @vaccineAgeMonths.
  ///
  /// In en, this message translates to:
  /// **'{range} months'**
  String vaccineAgeMonths(String range);

  /// No description provided for @vaccineAgeMonthsAnnual.
  ///
  /// In en, this message translates to:
  /// **'{range} months (yearly)'**
  String vaccineAgeMonthsAnnual(String range);

  /// No description provided for @whoTabHeight.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get whoTabHeight;

  /// No description provided for @whoTabHead.
  ///
  /// In en, this message translates to:
  /// **'Head'**
  String get whoTabHead;

  /// No description provided for @whoChartFor.
  ///
  /// In en, this message translates to:
  /// **'Chart for:'**
  String get whoChartFor;

  /// No description provided for @whoAgeRange.
  ///
  /// In en, this message translates to:
  /// **'{title} (0–24 months)'**
  String whoAgeRange(String title);

  /// No description provided for @whoNoDataPoints.
  ///
  /// In en, this message translates to:
  /// **'No data points yet. Log measurements to see your baby on the chart.'**
  String get whoNoDataPoints;

  /// No description provided for @whoLatestMeasurement.
  ///
  /// In en, this message translates to:
  /// **'Latest measurement'**
  String get whoLatestMeasurement;

  /// No description provided for @whoApproxPercentile.
  ///
  /// In en, this message translates to:
  /// **'Approximate percentile: {value}'**
  String whoApproxPercentile(String value);

  /// No description provided for @whoBetween.
  ///
  /// In en, this message translates to:
  /// **'between {low} and {high}'**
  String whoBetween(String low, String high);

  /// No description provided for @whoMonthsOld.
  ///
  /// In en, this message translates to:
  /// **'{months} months old'**
  String whoMonthsOld(String months);

  /// No description provided for @whoDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'These charts are for information only. Always ask your paediatrician to interpret them.'**
  String get whoDisclaimer;

  /// No description provided for @whoMedian.
  ///
  /// In en, this message translates to:
  /// **'P50 (median)'**
  String get whoMedian;

  /// No description provided for @notifChannelName.
  ///
  /// In en, this message translates to:
  /// **'Baby Tracker reminders'**
  String get notifChannelName;

  /// No description provided for @notifChannelDesc.
  ///
  /// In en, this message translates to:
  /// **'Feeding, diaper, medication and skin check reminders'**
  String get notifChannelDesc;

  /// No description provided for @notifFeedTitle.
  ///
  /// In en, this message translates to:
  /// **'Time to feed!'**
  String get notifFeedTitle;

  /// No description provided for @notifFeedBody.
  ///
  /// In en, this message translates to:
  /// **'No feeding logged in the last {interval}.'**
  String notifFeedBody(String interval);

  /// No description provided for @notifDiaperTitle.
  ///
  /// In en, this message translates to:
  /// **'Diaper check!'**
  String get notifDiaperTitle;

  /// No description provided for @notifDiaperBody.
  ///
  /// In en, this message translates to:
  /// **'No diaper change logged in the last {interval}.'**
  String notifDiaperBody(String interval);

  /// No description provided for @notifDoseTitle.
  ///
  /// In en, this message translates to:
  /// **'Dose due: {name}'**
  String notifDoseTitle(String name);

  /// No description provided for @notifDoseBody.
  ///
  /// In en, this message translates to:
  /// **'It\'s time for the next dose of {name}.'**
  String notifDoseBody(String name);

  /// No description provided for @notifSkinTitle.
  ///
  /// In en, this message translates to:
  /// **'Skin check: {name}'**
  String notifSkinTitle(String name);

  /// No description provided for @notifSkinBody.
  ///
  /// In en, this message translates to:
  /// **'Add today\'s update (and a photo if you like).'**
  String get notifSkinBody;

  /// No description provided for @timerFeedingNotif.
  ///
  /// In en, this message translates to:
  /// **'Feeding timer running'**
  String get timerFeedingNotif;

  /// No description provided for @intervalMinutes.
  ///
  /// In en, this message translates to:
  /// **'{m} min'**
  String intervalMinutes(String m);

  /// No description provided for @intervalHours.
  ///
  /// In en, this message translates to:
  /// **'{h} h'**
  String intervalHours(String h);

  /// No description provided for @intervalHoursMinutes.
  ///
  /// In en, this message translates to:
  /// **'{h} h {m} min'**
  String intervalHoursMinutes(String h, String m);

  /// No description provided for @settingsRtlActive.
  ///
  /// In en, this message translates to:
  /// **'Right-to-left layout active'**
  String get settingsRtlActive;

  /// No description provided for @measurementHeightIn.
  ///
  /// In en, this message translates to:
  /// **'Length / height (in)'**
  String get measurementHeightIn;

  /// No description provided for @measurementHeadIn.
  ///
  /// In en, this message translates to:
  /// **'Head circumference (in)'**
  String get measurementHeadIn;

  /// No description provided for @growthHeightIn.
  ///
  /// In en, this message translates to:
  /// **'Height (in)'**
  String get growthHeightIn;

  /// No description provided for @growthHeadIn.
  ///
  /// In en, this message translates to:
  /// **'Head circumference (in)'**
  String get growthHeadIn;

  /// No description provided for @growthHeightValueIn.
  ///
  /// In en, this message translates to:
  /// **'{value} in'**
  String growthHeightValueIn(String value);

  /// No description provided for @growthHeadValueIn.
  ///
  /// In en, this message translates to:
  /// **'Head {value} in'**
  String growthHeadValueIn(String value);

  /// No description provided for @settingsLengthUnitNote.
  ///
  /// In en, this message translates to:
  /// **'Length follows the weight unit (cm with kg, inches with lbs)'**
  String get settingsLengthUnitNote;

  /// No description provided for @formulaStoreBrand.
  ///
  /// In en, this message translates to:
  /// **'Store brand'**
  String get formulaStoreBrand;

  /// No description provided for @pooShade1.
  ///
  /// In en, this message translates to:
  /// **'Chalk white'**
  String get pooShade1;

  /// No description provided for @pooShade2.
  ///
  /// In en, this message translates to:
  /// **'Light grey'**
  String get pooShade2;

  /// No description provided for @pooShade3.
  ///
  /// In en, this message translates to:
  /// **'Grey clay'**
  String get pooShade3;

  /// No description provided for @pooShade4.
  ///
  /// In en, this message translates to:
  /// **'Cream'**
  String get pooShade4;

  /// No description provided for @pooShade5.
  ///
  /// In en, this message translates to:
  /// **'Tan'**
  String get pooShade5;

  /// No description provided for @pooShade6.
  ///
  /// In en, this message translates to:
  /// **'Pale yellow-green'**
  String get pooShade6;

  /// No description provided for @pooShade7.
  ///
  /// In en, this message translates to:
  /// **'Mustard yellow'**
  String get pooShade7;

  /// No description provided for @pooShade8.
  ///
  /// In en, this message translates to:
  /// **'Brown'**
  String get pooShade8;

  /// No description provided for @pooShade9.
  ///
  /// In en, this message translates to:
  /// **'Green'**
  String get pooShade9;

  /// No description provided for @vaccineScheduleNote.
  ///
  /// In en, this message translates to:
  /// **'Based on the US CDC schedule. Your country\'s schedule may differ — follow your doctor\'s advice.'**
  String get vaccineScheduleNote;

  /// No description provided for @settingsAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsAbout;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About & licences'**
  String get aboutTitle;

  /// No description provided for @aboutVersion.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String aboutVersion(String version);

  /// No description provided for @aboutLicenseLine.
  ///
  /// In en, this message translates to:
  /// **'Free software, released under the GNU General Public License v3.0 or later. You may use, study, share and change it.'**
  String get aboutLicenseLine;

  /// No description provided for @aboutSourceCode.
  ///
  /// In en, this message translates to:
  /// **'Source code'**
  String get aboutSourceCode;

  /// No description provided for @aboutDisclaimerTitle.
  ///
  /// In en, this message translates to:
  /// **'Not medical advice'**
  String get aboutDisclaimerTitle;

  /// No description provided for @aboutDisclaimerBody.
  ///
  /// In en, this message translates to:
  /// **'Simple Baby Tracker is a diary for your own records. It is not a medical device and does not diagnose, treat or monitor any condition. Growth charts, temperature ranges, medication reminders and stool-colour notes are general information only and can be incomplete or wrong. Always follow the advice of your doctor or pharmacist, and contact them or emergency services if you are worried about your baby.'**
  String get aboutDisclaimerBody;

  /// No description provided for @aboutPrivacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Your data stays on this phone'**
  String get aboutPrivacyTitle;

  /// No description provided for @aboutPrivacyBody.
  ///
  /// In en, this message translates to:
  /// **'The app has no internet access, no account, no ads and no analytics. Entries and photos are stored only on this device. Nothing leaves it unless you export a backup and share it yourself.'**
  String get aboutPrivacyBody;

  /// No description provided for @aboutCreditsTitle.
  ///
  /// In en, this message translates to:
  /// **'Credits'**
  String get aboutCreditsTitle;

  /// No description provided for @aboutCreditsBody.
  ///
  /// In en, this message translates to:
  /// **'Icons: created with Claude Design.\nFonts: Inter and Quicksand (SIL Open Font License 1.1).\nGrowth charts: WHO Child Growth Standards (who.int).\nVaccine schedule: based on the US CDC schedule.\nBuilt with Flutter.'**
  String get aboutCreditsBody;

  /// No description provided for @aboutLicencesButton.
  ///
  /// In en, this message translates to:
  /// **'Open-source licences'**
  String get aboutLicencesButton;
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
