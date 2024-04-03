import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

import '../../../../../../main.dart';
import '../../../../shared_params/_/go_router.dart';
import '../../../../shared_params/bot_toast_module/_.dart';

@ReadyBeforeMaterialApp()
Future<void> readyForBotToastModule(BuildContext context) async {
  botToastBuilder = BotToastInit();
  GoRouterParams.goRouterObservers = [BotToastNavigatorObserver()];
}
