class MyPackageInfo {
  static late final String appName;

  /// The package name. `bundleIdentifier` on iOS, `getPackageName` on Android.
  static late final String packageName;

  /// The package version. `CFBundleShortVersionString` on iOS, `versionName` on Android.
  static late final String version;

  /// The build number. `CFBundleVersion` on iOS, `versionCode` on Android.
  static late final String buildNumber;

  /// The build signature. Empty string on iOS, signing key signature (hex) on Android.
  static late final String buildSignature;
}
