class AppSettings {
  final bool useKg;
  final bool useCelsius;
  final String languageCode; // 'en' | 'ar' | 'fr' | 'es' | 'pt'

  const AppSettings({
    this.useKg = true,
    this.useCelsius = true,
    this.languageCode = 'en',
  });

  AppSettings copyWith({bool? useKg, bool? useCelsius, String? languageCode}) =>
      AppSettings(
        useKg: useKg ?? this.useKg,
        useCelsius: useCelsius ?? this.useCelsius,
        languageCode: languageCode ?? this.languageCode,
      );

  Map<String, dynamic> toJson() => {
    'useKg': useKg,
    'useCelsius': useCelsius,
    'languageCode': languageCode,
  };

  factory AppSettings.fromJson(Map<String, dynamic> j) => AppSettings(
    useKg: j['useKg'] as bool? ?? true,
    useCelsius: j['useCelsius'] as bool? ?? true,
    languageCode: j['languageCode'] as String? ?? 'en',
  );

  @override
  bool operator ==(Object other) =>
      other is AppSettings &&
      other.useKg == useKg &&
      other.useCelsius == useCelsius &&
      other.languageCode == languageCode;

  @override
  int get hashCode => Object.hash(useKg, useCelsius, languageCode);
}
