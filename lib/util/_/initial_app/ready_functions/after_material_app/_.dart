import 'package:flutter/material.dart';
import '../../../../../main.dart';
import 'hive_module/_.dart';

Future<void> readyAfterMaterialApp(BuildContext context) async {
if (_done) return; _done = true;

  await readyForHiveModule(context);


}
bool _done = false;
