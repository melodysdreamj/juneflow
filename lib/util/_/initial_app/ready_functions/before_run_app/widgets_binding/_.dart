import 'package:flutter/material.dart';

import '../../../../../../main.dart';
import '../../../../shared_params/_/widgets_binding.dart';

@ReadyBeforeRunApp(index: 1)
Future<void> readyForWidgetsBinding() async {
  widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
}
