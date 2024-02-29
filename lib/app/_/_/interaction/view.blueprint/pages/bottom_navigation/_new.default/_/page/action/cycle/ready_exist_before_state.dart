import 'package:flutter/material.dart';

import '../../../../../../../../../../../../../util/start_app.dart';
import '../../_/params.dart';
import '../../state.dart';

Future<void> readyExistBeforeStateAction(BuildContext context, NewParams params,
    {String? tag, String? slug}) async {
  NewState state = June.getState(NewState(), tag: tag);

  state.setState();
}
