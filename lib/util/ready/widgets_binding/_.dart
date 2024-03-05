import 'package:flutter/material.dart';
import 'package:junes_flutter_architecture/ready_annotation/_.dart';


import '../../../main.dart';

@ReadyRunApp(index: 1)
Future<void> readyForWidgetsBinding() async {
  widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
}
