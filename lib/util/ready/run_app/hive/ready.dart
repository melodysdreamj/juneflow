import 'package:hive_flutter/hive_flutter.dart';

import '../../../params/hive.dart';

Future<void> readyForHive() async {
  await Hive.initFlutter();
  hiveBox = await Hive.openBox('box');
}
