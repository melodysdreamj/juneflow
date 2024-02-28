import 'package:flutter/material.dart';

import '../../../../../../../../../../../../util/start_app.dart';

import '../../action/cycle/ready_state.dart';
import '../params.dart';
import '../../action/cycle/ready_exist_before_state.dart';
import '../util/view_skeleton.dart';
import '../../state.dart';

readyView(
  NewParams params,
  String? tag,
  String? slug,
) {
  if (June.isRegistered<NewState>()) {
    readyExistBeforeStateAction(params, tag: tag, slug: slug);
  } else {
    readyStateAction(params, tag: tag, slug: slug);
  }
}
