import 'package:flutter/material.dart';
import '../../../../../main.dart';
import 'widgets_binding/_.dart';
import 'config_theme/_.dart';

Future<void> readyBeforeRunApp() async {
if (_done) return; _done = true;

  await readyForWidgetsBinding();
  await Future.wait([
    readyForConfigTheme(),
  ]);

}
bool _done = false;
