import 'package:flutter/material.dart';

import '../../../../../../../../../../../../util/start_app.dart';

import '../params.dart';
import '../../action/cycle/refresh_state.dart';
import '../config/view_skeleton.dart';

refreshView(
  NewParams params,
  BuildContext context,
  String? tag,
  String? slug,
) {
  refreshStateAction(context, params, tag: tag);
}
