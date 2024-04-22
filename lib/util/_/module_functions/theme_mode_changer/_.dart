import 'package:flutter/material.dart';
import 'package:june/june.dart';

import '../../shared_params/_/material_app.dart';
import '../../shared_params/theme_mode_changer/_.dart';

class ThemeModeChanger {
  static changeToLightTheme() {
    var state = June.getState(ThemeModeChangerVM());
    MaterialAppParams.themeMode= ThemeMode.light;
    state.setState();
  }

  static changeToDarkTheme() {
    var state = June.getState(ThemeModeChangerVM());
    MaterialAppParams.themeMode = ThemeMode.dark;
    state.setState();
  }

  static void switchThemeMode(BuildContext context) {
    var state = June.getState(ThemeModeChangerVM());
    switch (MaterialAppParams.themeMode) {
      case ThemeMode.light:
        MaterialAppParams.themeMode = ThemeMode.dark;
        break;
      case ThemeMode.dark:
        var brightness = MediaQuery.of(context).platformBrightness;
        MaterialAppParams.themeMode = (brightness == Brightness.dark)
            ? ThemeMode.light
            : ThemeMode.system;
        break;
      case ThemeMode.system:
        var brightness = MediaQuery.of(context).platformBrightness;
        MaterialAppParams.themeMode =
        (brightness == Brightness.light) ? ThemeMode.dark : ThemeMode.light;
        break;
      case null:
        var brightness = MediaQuery.of(context).platformBrightness;
        MaterialAppParams.themeMode =
        (brightness == Brightness.light) ? ThemeMode.dark : ThemeMode.light;
        break;
    }
    state.setState();
  }
}
