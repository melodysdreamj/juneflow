import 'package:flutter/material.dart';
import 'package:june/june.dart';

class AppThemeMode extends JuneState {
  ThemeMode mode = ThemeMode.system;
}

switchThemeMode(BuildContext context) {
  AppThemeMode vm = June.getState(AppThemeMode());
  if (_isDarkMode(context)) {
    vm.mode = ThemeMode.light;
  } else {
    vm.mode = ThemeMode.dark;
  }
  vm.setState();
}

setSystemThemeMode(BuildContext context) {
  AppThemeMode vm = June.getState(AppThemeMode());
  vm.mode = ThemeMode.system;
  vm.setState();
}

bool _isDarkMode(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark;
}
