import 'dart:math';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../util/start_app.dart';
import '_/component/_/util/view_skeleton.dart';

void NewLoading(
  BuildContext context, {
  int duration = 2,
  int backgroundColor = 0x42000000,
  int seconds = 10,
  bool clickClose = false,
  bool allowClick = false,
  bool ignoreContentClick = false,
  bool crossPage = true,
  int animationMilliseconds = 200,
  int animationReverseMilliseconds = 200,
  BackButtonBehavior backButtonBehavior = BackButtonBehavior.none,
}) async {
  BotToast.showCustomLoading(
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
      return NewView(
        params: NewParams(cancelFunc),
      );
    },
  );
}
