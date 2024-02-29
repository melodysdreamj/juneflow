import 'package:flutter/material.dart';

import '../../../../../../../../../../../../util/start_app.dart';
import '../state.dart';

someAction({String? tag}) {
  NewState state = June.getState(NewState(), tag: tag);

  state.setState();
}
