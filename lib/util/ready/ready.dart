import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../app/_/_/interaction/listener/_/app_life_cycle/when_open_app.dart';
import '../start_app.dart';
import 'awesome_notifications/ready.dart';
import 'easy_localization/ready.dart';
import 'hive/ready.dart';
import 'logger/ready.dart';
import 'my_app_version_change/ready.dart';
import 'package_info/ready.dart';
import 'timeago/ready.dart';

readyForRunAppStart() async {
  if (_readyForRunAppStart) return;
  _readyForRunAppStart = true;

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  await readyForEasyLocalization();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await readyForLogger();

  await readyForHive();

  await readyForPackageInfo();
  await readyForTimeAgo();

  // await readyObserver();
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
