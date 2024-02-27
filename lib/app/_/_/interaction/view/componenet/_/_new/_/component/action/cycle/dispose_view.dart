import 'package:flutter/material.dart';

import '../../../../../../../../../../../../../util/start_app.dart';
import '../../state.dart';

disposeViewAction({String? tag}) {
  June.delete<NewState>(
      tag: tag, force: true); // To keep state after disposal, remove this code.
}
