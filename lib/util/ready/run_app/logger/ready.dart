import '../../../config/logger.dart';
import '../../../params/logger.dart';

Future<void> readyForLogger() async {
  myLoggerObject = LoggerConfig.log;
}
