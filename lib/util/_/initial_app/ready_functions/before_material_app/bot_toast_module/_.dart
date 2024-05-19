import 'package:bot_toast/bot_toast.dart';
import 'package:bot_toast_module/util/_/shared_params/_/material_app.dart';
import 'package:flutter/material.dart';

import '../../../../../../main.dart';
import '../../../../shared_params/bot_toast_module/_.dart';

@ReadyBeforeMaterialApp()
Future<void> readyForBotToastModule(BuildContext context) async {
  botToastBuilder = BotToastInit();
  MaterialAppParams.navigatorObservers = [BotToastNavigatorObserver()];
}
