import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../../main.dart';

Future<void> readyForFlutterNativeSplashPreserve() async {
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
}

Future<void> readyForFlutterNativeSplashRemove() async {
  FlutterNativeSplash.remove();
}
