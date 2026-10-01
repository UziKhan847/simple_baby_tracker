import 'package:simple_baby_tracker/main.dart';

/// A physical feeding bottle the family owns — only used when "Track
/// bottles" is enabled in Settings. Shared across baby profiles (bottles are
/// household items, not per-child), so it's stored app-wide.
class Bottle {
  final String id;

  /// Short label/number written on (or used for) the bottle, e.g. "#3".
  String label;

  /// Brand or type, e.g. "Dr. Brown's Anti-Colic".
  String? brand;

  /// e.g. "Glass", "Plastic", "Silicone".
  String? material;

  int? capacityMl;

  /// Nipple / teat size or flow, e.g. "Level 2", "Slow flow".
  String? nippleSize;
  String? notes;

  /// Hidden from the feeding form's picker but kept so older feeds still
  /// resolve their bottle label.
  bool retired;

  Bottle({
    String? id,
    required this.label,
    this.brand,
    this.material,
    this.capacityMl,
    this.nippleSize,
    this.notes,
    this.retired = false,
  }) : id = id ?? uuid.v4();

  /// "#3 · Dr. Brown's" — how a bottle is named in lists and day rows.
  String get displayName =>
      [label, if (brand != null && brand!.isNotEmpty) brand!].join(' · ');

  Map<String, dynamic> toJson() => {
    'id': id,
    'label': label,
    'brand': brand,
    'material': material,
    'capacityMl': capacityMl,
    'nippleSize': nippleSize,
    'notes': notes,
    'retired': retired,
  };

  factory Bottle.fromJson(Map<String, dynamic> j) => Bottle(
    id: j['id'] as String,
    label: j['label'] as String? ?? '',
    brand: j['brand'] as String?,
    material: j['material'] as String?,
    capacityMl: (j['capacityMl'] as num?)?.toInt(),
    nippleSize: j['nippleSize'] as String?,
    notes: j['notes'] as String?,
    retired: j['retired'] as bool? ?? false,
  );
}

const bottleMaterials = ['Plastic', 'Glass', 'Silicone', 'Stainless steel'];
