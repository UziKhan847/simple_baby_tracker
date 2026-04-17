/// User-configurable measurement preferences.
class AppSettings {
  final bool useKg;
  final bool useCelsius;

  const AppSettings({this.useKg = true, this.useCelsius = true});

  AppSettings copyWith({bool? useKg, bool? useCelsius}) => AppSettings(
        useKg: useKg ?? this.useKg,
        useCelsius: useCelsius ?? this.useCelsius,
      );

  Map<String, dynamic> toJson() => {
        'useKg': useKg,
        'useCelsius': useCelsius,
      };

  factory AppSettings.fromJson(Map<String, dynamic> j) => AppSettings(
        useKg: j['useKg'] as bool? ?? true,
        useCelsius: j['useCelsius'] as bool? ?? true,
      );

  @override
  bool operator ==(Object other) =>
      other is AppSettings &&
      other.useKg == useKg &&
      other.useCelsius == useCelsius;

  @override
  int get hashCode => Object.hash(useKg, useCelsius);
}