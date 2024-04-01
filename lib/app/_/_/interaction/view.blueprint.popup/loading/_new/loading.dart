import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../../main.dart';
import '_/view.dart';

class NewLoading {
  static late CancelFunc cancelInstance;

  static start({
    int backgroundColor = 0x42000000,
    int seconds = 10,
    bool clickClose = true,
    bool allowClick = true,
    bool ignoreContentClick = false,
    bool crossPage = true,
    int animationMilliseconds = 200,
    int animationReverseMilliseconds = 200,
    BackButtonBehavior backButtonBehavior = BackButtonBehavior.none,
  }) {
    cancelInstance = BotToast.showCustomLoading(
        clickClose: clickClose,
        allowClick: allowClick,
        backButtonBehavior: backButtonBehavior,
        ignoreContentClick: ignoreContentClick,
        animationDuration: Duration(milliseconds: animationMilliseconds),
        animationReverseDuration:
            Duration(milliseconds: animationReverseMilliseconds),
        duration: Duration(seconds: seconds),
        backgroundColor: Color(backgroundColor),
        align: Alignment.center,
        toastBuilder: (cancelFunc) {
          return NewView();
        });
  }

  static stop() {
    cancelInstance.call();
  }
}
