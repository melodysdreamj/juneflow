import 'package:flutter/material.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../../../../../util/start_app.dart';

_LoadingConfig() {
  EasyLoading.instance

    /// loading indicator type. see [https://github.com/jogboms/flutter_spinkit#-showcase]
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.black.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
  // ..customAnimation = CustomAnimation();
}

NewLoading(Duration duration) {
  NewLoadingStart();

  Future.delayed(duration, () {
    NewLoadingStop();
  });
}

NewLoadingStart() {
  _LoadingConfig();
  EasyLoading.show(
    maskType: EasyLoadingMaskType.custom,
  );
}

NewLoadingStop() {
  EasyLoading.dismiss();
}
