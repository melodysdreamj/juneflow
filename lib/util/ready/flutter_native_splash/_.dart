import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../../main.dart';

@ReadyRunApp()
Future<void> readyForFlutterNativeSplashPreserve() async {
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
}

@ReadyApp(index: 1)
Future<void> readyForFlutterNativeSplashRemove() async {
  FlutterNativeSplash.remove();
}
