import 'package:flutter/material.dart';

import '../../../../../../../../../../../../util/start_app.dart';
import '../../action/cycle/dispose_view.dart';
import '../params.dart';

viewDispose(NewParams params, BuildContext context,
    {String? tag, String? slug}) {
  disposeViewAction(tag: tag);
}
