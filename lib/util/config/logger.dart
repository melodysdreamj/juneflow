import 'package:logger/logger.dart';

class LoggerConfig {
  static Logger log = Logger(
    printer: PrettyPrinter(
      methodCount: 4,
      // number of method calls to be displayed
      errorMethodCount: 15,
      // number of method calls if stacktrace is provided
      lineLength: 120,
      // width of the output
      colors: true,
      // Colorful log messages
      printEmojis: true,
      // Print an emoji for each log message
      printTime: true, // Should each log print contain a timestamp,
    ),
  );
}
