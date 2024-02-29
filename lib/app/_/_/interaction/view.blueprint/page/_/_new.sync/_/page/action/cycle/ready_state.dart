import 'package:flutter/material.dart';

import '../../../../../../../../../../../../../util/start_app.dart';
import '../../_/params.dart';
import '../../state.dart';

readyStateAction(NewParams params, {String? tag, String? slug}) {
  NewState state = June.getState(NewState(), tag: tag);

  state.setState();
}
