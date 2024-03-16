import '../../../../../../main.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

Future<void> readyForWebUrlStrategy() async {
  setUrlStrategy(PathUrlStrategy());
}
