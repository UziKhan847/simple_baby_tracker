import 'package:simple_baby_tracker/l10n/app_localizations.dart';

/// Translated display labels for values that are *stored* in English.
///
/// Quick-pick chips (foods, symptoms, units, visit reasons, bottle
/// materials) save a fixed English id, so matching keeps working across
/// language switches — e.g. the "allergens not yet introduced" check, or a
/// visit logged in German still counting as a routine check-up after
/// switching to French. These map an id to the current language for display;
/// anything typed by hand isn't a known id and is shown as written.

String foodLabel(String food, AppLocalizations l) =>
    switch (food.toLowerCase()) {
      'peanut' => l.foodPeanut,
      'egg' => l.foodEgg,
      'dairy' => l.foodDairy,
      'wheat' => l.foodWheat,
      'soy' => l.foodSoy,
      'fish' => l.foodFish,
      'shellfish' => l.foodShellfish,
      'tree nuts' => l.foodTreeNuts,
      'sesame' => l.foodSesame,
      'banana' => l.foodBanana,
      'avocado' => l.foodAvocado,
      'sweet potato' => l.foodSweetPotato,
      'rice cereal' => l.foodRiceCereal,
      'oatmeal' => l.foodOatmeal,
      'carrot' => l.foodCarrot,
      'apple' => l.foodApple,
      'pea' => l.foodPea,
      _ => food,
    };

String symptomLabel(String symptom, AppLocalizations l) => switch (symptom) {
  'Rash' => l.symptomRash,
  'Hives' => l.symptomHives,
  'Vomiting' => l.symptomVomiting,
  'Diarrhea' => l.symptomDiarrhea,
  'Swelling' => l.symptomSwelling,
  _ => symptom,
};

String doseUnitLabel(String unit, AppLocalizations l) => switch (unit) {
  'drops' => l.doseUnitDrops,
  'tablets' => l.doseUnitTablets,
  _ => unit,
};

String bottleMaterialLabel(String material, AppLocalizations l) =>
    switch (material) {
      'Plastic' => l.bottleMaterialPlastic,
      'Glass' => l.bottleMaterialGlass,
      'Silicone' => l.bottleMaterialSilicone,
      'Stainless steel' => l.bottleMaterialSteel,
      _ => material,
    };

String visitReasonLabel(String reason, AppLocalizations l) => switch (reason) {
  'Routine check-up' => l.visitReasonRoutine,
  'Sick visit' => l.visitReasonSick,
  'Vaccination' => l.visitReasonVaccination,
  'Specialist' => l.visitReasonSpecialist,
  'Follow-up' => l.visitReasonFollowUp,
  'Other' => l.visitReasonOther,
  _ => reason,
};

/// Brand chips (formula, diapers, rash cream) are brand names, except these.
String brandLabel(String brand, AppLocalizations l) => switch (brand) {
  'Store brand' => l.formulaStoreBrand,
  'Other' => l.visitReasonOther,
  _ => brand,
};
