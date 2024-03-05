import 'package:package_info_plus/package_info_plus.dart' as package_info_plus;

import '../../start_app.dart';

@ReadyRunApp()
Future<void> readyForPackageInfo() async {
  package_info_plus.PackageInfo packageInfo =
      await package_info_plus.PackageInfo.fromPlatform();
  MyPackageInfo.appName = packageInfo.appName;
  MyPackageInfo.packageName = packageInfo.packageName;
  MyPackageInfo.version = packageInfo.version;
  MyPackageInfo.buildNumber = packageInfo.buildNumber;
  MyPackageInfo.buildSignature = packageInfo.buildSignature;
}
