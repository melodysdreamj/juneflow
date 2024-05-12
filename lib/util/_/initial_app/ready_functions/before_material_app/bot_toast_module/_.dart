import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

import '../../../../../../main.dart';
import '../../../../shared_params/_/navigator_observer_params.dart';
import '../../../../shared_params/bot_toast_module/_.dart';

@ReadyBeforeMaterialApp()
Future<void> readyForBotToastModule(BuildContext context) async {
  botToastBuilder = BotToastInit();
  NavigatorObserverParams.navigatorObservers = [BotToastNavigatorObserver()];
}
