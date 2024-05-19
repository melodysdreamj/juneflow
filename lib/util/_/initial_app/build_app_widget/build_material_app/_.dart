import 'package:flutter/material.dart';
import '../../../../../main.dart';

import '../../../shared_params/_/material_app_obj.dart';
import 'device_preview_module/_.dart';

Widget materialAppInsideBuilder(BuildContext context, Widget? child) {
  child = coverDevicePreviewModule(context, child!);

  return child!;
}

Widget Function() MaterialAppBuilder(BuildContext context) {
  return () => currentMaterialApp;
}

