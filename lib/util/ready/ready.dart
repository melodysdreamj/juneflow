import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../app/_/_/interaction/listener/_/app_life_cycle/when_open_app.dart';
import '../start_app.dart';

import 'awesome_notification/_.dart';
import 'flutter_native_splash/_.dart';
import 'my_app_version_change/_.dart';
import 'easy_localization/_.dart';
import 'hive/_.dart';
import 'logger/_.dart';
import 'package_info/_.dart';
import 'screen_rotate_config/_.dart';
import 'timeago/_.dart';
import 'web_url_strategy/none.dart'
    if (dart.library.html) 'web_url_strategy/_.dart' as url_strategy;
import 'when_open_app_listener/_.dart';
import 'widgets_binding/_.dart';

readyForRunAppStart() async {
  if (_readyForRunAppStart) return;
  _readyForRunAppStart = true;

  url_strategy.readyForWebUrlStrategy();

  readyForWidgetsBinding();

  await readyForEasyLocalization();
  await readyForFlutterNativeSplashPreserve();
  await readyForLogger();

  await readyForHive();

  await readyForPackageInfo();
  await readyForTimeAgo();
}

readyForMaterialAppStart() async {
  if (_readyForMaterialAppStart) return;
  _readyForMaterialAppStart = true;

  await readyForScreenRotateConfig();
}

Future<void> readyForAppStart(BuildContext context) async {
  if (_readyForAppStart) return;
  _readyForAppStart = true;

  await readyForFlutterNativeSplashRemove();

  await readyForWhenOpenAppListener();
  await readyForMyAppVersionChange();
  await readyForAwesomeNotifications();
}

bool _readyForRunAppStart = false;
bool _readyForMaterialAppStart = false;
bool _readyForAppStart = false;
