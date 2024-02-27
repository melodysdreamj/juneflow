import 'dart:math';

import 'package:junes_flutter_architecture/functions/random.dart';

class NewModelConfig {
  static NewModelConfig to = NewModelConfig();

  // if you using pocketbase, id must 15 characters
  String generateDocId() {
    // return _generateRandomString();
    return DateTime.now().millisecondsSinceEpoch.toString() +
        randomStringWithNumber(2);
    // return "Sample";
  }
}
