import 'package:flutter/material.dart';
import 'package:june/june.dart';
import '../../../../../../main.dart';
import '../../../../shared_params/theme_mode_changer/_.dart';

@CoverMyApp()
Widget Function() coverThemeModeChanger(Widget Function() materialAppBuilder) {
  return () => JuneBuilder(
    () => ThemeModeChangerVM(),
    builder: (vm) {
      return materialAppBuilder();
    },
  );
}