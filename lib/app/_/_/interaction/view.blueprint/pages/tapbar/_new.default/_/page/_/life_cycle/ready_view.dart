import 'package:flutter/material.dart';

import '../../../../../../../../../../../../util/start_app.dart';

import '../../action/cycle/ready_state.dart';
import '../params.dart';
import '../../action/cycle/ready_exist_before_state.dart';
import '../config/view_skeleton.dart';
import '../../state.dart';

Future readyView(
  NewParams params,
  BuildContext context,
  String? tag,
  String? slug,
) async {
  if (June.isRegistered<NewState>()) {
    await readyExistBeforeStateAction(context, params, tag: tag, slug: slug);
  } else {
    await readyStateAction(context, params, tag: tag, slug: slug);
  }
}
