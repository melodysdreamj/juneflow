import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';

import '../../../../../../../../../../main.dart';
import 'keyboard_widget/view.dart';
import '_/view.dart';

class Usage extends StatelessWidget {
  const Usage({super.key});

  @override
  Widget build(BuildContext context) {
    return FooterLayout(footer: KeyboardWidgetView(), child: NewView());
  }
}

main() async {
  MyAppHome = Usage();

  return await buildApp();
}
