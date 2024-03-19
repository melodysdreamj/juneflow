import 'package:flutter/material.dart';
import '../../../../../main.dart';
import 'web_url_strategy/none.dart'
    if (dart.library.html) 'web_url_strategy/_.dart' as url_strategy;
import 'widgets_binding/_.dart';

Future<void> readyBeforeRunApp() async {
  url_strategy.readyForWebUrlStrategy();
  await readyForWidgetsBinding();

}
