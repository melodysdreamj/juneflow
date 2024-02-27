import 'package:flutter/material.dart';

import '../../../../../../../../../util/start_app.dart';
import '../vm.dart';

someAction({String? tag}) {
  NewVM vm = June.getState(NewVM(), tag: tag);

  vm.setState();
}
