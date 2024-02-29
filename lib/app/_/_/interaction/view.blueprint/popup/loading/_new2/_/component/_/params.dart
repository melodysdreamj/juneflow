import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../../../util/start_app.dart';

class NewParams {
  late BuildContext context;

  // 1. add parameters here
  CancelFunc cancelFunc;

  NewParams(
      // 2. add parameters here
      this.cancelFunc);
}
