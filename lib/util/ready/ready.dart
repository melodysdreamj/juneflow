import 'package:flutter/material.dart';
import '../start_app.dart';
import 'web_url_strategy/none.dart'
    if (dart.library.html) 'web_url_strategy/_.dart' as url_strategy;


import 'logger/_.dart';
import 'timeago/_.dart';
import 'flutter_native_splash/_.dart';
import 'hive/_.dart';
import 'package_info/_.dart';
import 'widgets_binding/_.dart';
import 'easy_localization/_.dart';
import 'my_app_version_change/_.dart';
import 'when_open_app_listener/_.dart';
import 'awesome_notification/_.dart';


readyForRunAppStart() async {
  if (_readyForRunAppStart) return;
  _readyForRunAppStart = true;

  url_strategy.readyForWebUrlStrategy();
  await readyForWidgetsBinding();
  await Future.wait([
    readyForLogger(),
    readyForTimeAgo(),
    readyForFlutterNativeSplashPreserve(),
    readyForHive(),
    readyForPackageInfo(),
    readyForEasyLocalization(),
  ]);
}

readyForMaterialAppStart() async {
  if (_readyForMaterialAppStart) return;
  _readyForMaterialAppStart = true;
}

Future<void> readyForAppStart(BuildContext context) async {
  if (_readyForAppStart) return;
  _readyForAppStart = true;
  await readyForFlutterNativeSplashRemove();
  await Future.wait([
    readyForMyAppVersionChange(),
    readyForWhenOpenAppListener(),
    readyForAwesomeNotifications(),
  ]);
}

bool _readyForRunAppStart = false;
bool _readyForMaterialAppStart = false;
bool _readyForAppStart = false;
