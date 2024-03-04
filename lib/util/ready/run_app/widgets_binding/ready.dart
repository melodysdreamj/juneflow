import 'package:flutter/material.dart';

import '../../../../main.dart';

Future<void> readyForWidgetsBinding() async {
  widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
}
