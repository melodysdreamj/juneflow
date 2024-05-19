import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../../../main.dart';

@CoverMaterialApp()
Widget coverDevicePreviewModule(BuildContext context, Widget widget) {
  if (kIsWeb && !kReleaseMode) {
    return widget;
  }

  return DevicePreview.appBuilder(context, widget);
}
