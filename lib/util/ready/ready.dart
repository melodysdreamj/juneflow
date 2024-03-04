import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../app/_/_/interaction/listener/_/app_life_cycle/when_open_app.dart';
import '../start_app.dart';

import 'app/awesome_notification/ready.dart';
import 'app/my_app_version_change/ready.dart';
import 'run_app/easy_localization/ready.dart';
import 'run_app/hive/ready.dart';
import 'run_app/logger/ready.dart';
import 'run_app/package_info/ready.dart';
import 'run_app/timeago/ready.dart';
import 'run_app/web_url_strategy/none.dart'
    if (dart.library.html) 'run_app/web_url_strategy/_.dart' as url_strategy;
import 'run_app/widgets_binding/ready.dart';

readyForRunAppStart() async {
  if (_readyForRunAppStart) return;
  _readyForRunAppStart = true;

  url_strategy.readyForWebUrlStrategy();

  readyForWidgetsBinding();



  await readyForEasyLocalization();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await readyForLogger();

  await readyForHive();

  await readyForPackageInfo();
  await readyForTimeAgo();
}

readyForMaterialAppStart() async {
  if (_readyForMaterialAppStart) return;
  _readyForMaterialAppStart = true;

  screenRotateConfig();
}

Future<void> readyForAppStart(BuildContext context) async {
  if (_readyForAppStart) return;
  _readyForAppStart = true;

  FlutterNativeSplash.remove();

  WhenOpenAppListener();
  await readyForMyAppVersionChange();
  await readyForAwesomeNotifications();

  // await MyPromiseAllSpell().returnVoid([
  //   readyForFirebaseMessaging()
  // ]);
}

bool _readyForRunAppStart = false;
bool _readyForMaterialAppStart = false;
bool _readyForAppStart = false;
