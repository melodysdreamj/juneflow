import 'package:flutter/material.dart';
import '../../../../../main.dart';
import 'widgets_binding/_.dart';

Future<void> readyBeforeRunApp() async {
if (_done) return; _done = true;

  await readyForWidgetsBinding();

}
bool _done = false;
