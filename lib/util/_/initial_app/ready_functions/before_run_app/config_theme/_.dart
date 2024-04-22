import 'package:flutter/material.dart';

import '../../../../../../main.dart';
import '../../../../../config/config_theme/_.dart';
import '../../../../shared_params/_/material_app.dart';

@ReadyBeforeRunApp()
Future<void> readyForConfigTheme() async {
  MaterialAppParams.themeMode = ThemeConfig.startThemeMode;
  MaterialAppParams.lightTheme = ThemeConfig.lightTheme;
  MaterialAppParams.darkTheme = ThemeConfig.darkTheme;
}
