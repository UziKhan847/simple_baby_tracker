class AppSettings {
  final bool useKg;
  final bool useCelsius;
  final bool useMl;
  final String languageCode; // 'en' | 'ar' | 'fr' | 'es' | 'pt'
  final String themeModeOverride; // 'system' | 'light' | 'dark'
  final bool oledDarkMode;
  final bool immersiveMode;

  const AppSettings({
    this.useKg = true,
    this.useCelsius = true,
    this.useMl = true,
    this.languageCode = 'en',
    this.themeModeOverride = 'system',
    this.oledDarkMode = false,
    this.immersiveMode = false,
  });

  AppSettings copyWith({
    bool? useKg,
    bool? useCelsius,
    bool? useMl,
    String? languageCode,
    String? themeModeOverride,
    bool? oledDarkMode,
    bool? immersiveMode,
  }) => AppSettings(
    useKg: useKg ?? this.useKg,
    useCelsius: useCelsius ?? this.useCelsius,
    useMl: useMl ?? this.useMl,
    languageCode: languageCode ?? this.languageCode,
    themeModeOverride: themeModeOverride ?? this.themeModeOverride,
    oledDarkMode: oledDarkMode ?? this.oledDarkMode,
    immersiveMode: immersiveMode ?? this.immersiveMode,
  );

  Map<String, dynamic> toJson() => {
    'useKg': useKg,
    'useCelsius': useCelsius,
    'useMl': useMl,
    'languageCode': languageCode,
    'themeModeOverride': themeModeOverride,
    'oledDarkMode': oledDarkMode,
    'immersiveMode': immersiveMode,
  };

  factory AppSettings.fromJson(Map<String, dynamic> j) => AppSettings(
    useKg: j['useKg'] as bool? ?? true,
    useCelsius: j['useCelsius'] as bool? ?? true,
    useMl: j['useMl'] as bool? ?? true,
    languageCode: j['languageCode'] as String? ?? 'en',
    themeModeOverride: j['themeModeOverride'] as String? ?? 'system',
    oledDarkMode: j['oledDarkMode'] as bool? ?? false,
    immersiveMode: j['immersiveMode'] as bool? ?? false,
  );

  @override
  bool operator ==(Object other) =>
      other is AppSettings &&
      other.useKg == useKg &&
      other.useCelsius == useCelsius &&
      other.useMl == useMl &&
      other.languageCode == languageCode &&
      other.themeModeOverride == themeModeOverride &&
      other.oledDarkMode == oledDarkMode &&
      other.immersiveMode == immersiveMode;

  @override
  int get hashCode => Object.hash(
    useKg,
    useCelsius,
    useMl,
    languageCode,
    themeModeOverride,
    oledDarkMode,
    immersiveMode,
  );
}
