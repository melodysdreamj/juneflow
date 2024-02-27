import 'package:flutter/material.dart';

import '../../../../../../../../../../../../util/start_app.dart';
import '../state.dart';

changeScreenAction(int screenIndex, {String? tag}) {
  NewState state = June.getState(NewState(), tag: tag);

  state.selectedIndex = screenIndex;

  state.setState();
}
