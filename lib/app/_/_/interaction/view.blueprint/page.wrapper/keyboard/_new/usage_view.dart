import 'package:flutter/material.dart';

import 'package:keyboard_attachable/keyboard_attachable.dart';

import '../../../../../../../../util/start_app.dart';
import '_/component/_/config/view_skeleton.dart';

main() async {
  return await startApp(
    home: FooterLayout(
        footer: NewView(
          params: NewParams(),
        ),
        child: Container().backgroundColor(Colors.transparent)),
  );
}
