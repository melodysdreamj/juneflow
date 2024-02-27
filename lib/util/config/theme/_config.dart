import 'package:flutter/material.dart';

import '../../start_app.dart';
import 'appbar.dart';
import 'colors.dart';
import 'font.dart';
import 'icon.dart';
import 'text.dart';

class ThemeConfig {
  static var appTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ThemeColorScheme.lightColorScheme,
    textTheme: ThemeTextScheme.textTheme,
    appBarTheme: ThemeAppbar.theme,
    iconTheme: ThemeIconScheme.theme,
    dialogTheme: DialogTheme(
      backgroundColor: ThemeColorScheme.dialogBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
    ),
    fontFamily: ThemeFont.fontFamily,
  );
  static var appDarkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ThemeColorScheme.darkColorScheme,
    textTheme: ThemeTextScheme.textTheme,
    appBarTheme: ThemeAppbar.theme,
    iconTheme: ThemeIconScheme.theme,
    dialogTheme: DialogTheme(
      backgroundColor: ThemeColorScheme.dialogDarkBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
    ),
    fontFamily: ThemeFont.fontFamily,
  );
}
