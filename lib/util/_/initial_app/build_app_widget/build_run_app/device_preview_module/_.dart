import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../../../main.dart';
import '../../../../../config/device_preview_module/params.dart';

@CoverRunApp()
Widget coverDevicePreviewModule(Widget widget) {
  if (force_use_device_preview) {
    return DevicePreview(
      enabled: true,
      builder: (context) => widget,
    );
  }

  if (kIsWeb && !kReleaseMode) {
    return DevicePreview(
      enabled: when_start_web_with_device_preview,
      builder: (context) => widget,
    );
  }

  return widget;
}
