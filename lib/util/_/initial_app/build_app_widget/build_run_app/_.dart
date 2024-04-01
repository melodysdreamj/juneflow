import 'package:flutter/material.dart';
import '../../../../../main.dart';
import '../../ready_functions/before_run_app/_.dart';
import '../build_my_app/_.dart';
import 'device_preview_module/_.dart';
import 'screenutil_module/_.dart';

Future<void> buildApp({Widget? appHome, Function(BuildContext)? appCallAfterBuild}) async {
  if(appHome != null) MyAppHome = appHome;
  if(appCallAfterBuild != null) MyAppCallAfterBuild = appCallAfterBuild;
  await readyBeforeRunApp();
  Widget childWidget = MyApp();
  childWidget = coverDevicePreviewModule(childWidget);
  childWidget = coverScreenutilModule(childWidget);

  return runApp(childWidget);
}
