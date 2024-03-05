import 'package:hive_flutter/hive_flutter.dart';

import '../../../main.dart';
import '../../params/hive.dart';

@ReadyRunApp()
Future<void> readyForHive() async {
  await Hive.initFlutter();
  hiveBox = await Hive.openBox('box');
}
