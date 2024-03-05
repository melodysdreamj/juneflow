import '../../../main.dart';
import '../../config/logger.dart';
import '../../params/logger.dart';

@ReadyRunApp()
Future<void> readyForLogger() async {
  myLoggerObject = LoggerConfig.log;
}
