import 'package:flutter/material.dart';

import '../../../../../../../../../../../../../util/start_app.dart';
import '../../_/params.dart';
import '../../state.dart';

refreshStateAction(BuildContext context, NewParams params, {String? tag}) {
  NewState state = June.getState(NewState(), tag: tag);

  /// WARNING: Do not use `setState()` here.
  /// Using `setState()` in this context can lead to recursive calls.
  /// Without setState(), changes are still reflected in the view.
}
