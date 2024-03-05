import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../app/_/_/interaction/listener/_/app_version_change/_.dart';
import '../../../app/_/_/interaction/listener/_/first_time_open_app/_.dart';
import '../../../main.dart';
import '../../params/my_package_info.dart';

@ReadyApp()
Future<void> readyForMyAppVersionChange() async {
  if (kIsWeb) return;
  int oldAppVersionNum = hiveBox.get("myVersionListener - versionNumber") ?? 0;
  int nowAppVersionNum = int.parse(MyPackageInfo.buildNumber);

  if (oldAppVersionNum == 0) {
    //first time open app
    _firstTimeOpen();

    _whenVersionChanged(nowAppVersionNum, oldAppVersionNum);
  } else if (oldAppVersionNum != nowAppVersionNum) {
    // this case is version changed.
    _whenVersionChanged(nowAppVersionNum, oldAppVersionNum);
  }
}

_firstTimeOpen() {
  if (hiveBox.get("myVersionListener - FirstOpenTime") == 0) {
    hiveBox.put("myVersionListener - FirstOpenTime",
        DateTime.now().millisecondsSinceEpoch);

    FirstTimeOpenAppListener();
  }
}

_whenVersionChanged(int nowAppVersionNum, int oldAppVersionNum) {
  hiveBox.put("myVersionListener - versionNumber", nowAppVersionNum);

  AppVersionChangeListener(nowAppVersionNum, oldAppVersionNum);
}
