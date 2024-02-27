import '../start_app.dart';

screenRotateConfig() async {
  //set screen orientation
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      // DeviceOrientation.landscapeLeft,
    ],
  );
}
