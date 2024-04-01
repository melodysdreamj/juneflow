import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../../main.dart';

@ReadyAfterMaterialApp()
Future<void> readyForHiveModule(BuildContext context) async {
  await Hive.initFlutter();
  hiveBox = await Hive.openBox('box');
}
