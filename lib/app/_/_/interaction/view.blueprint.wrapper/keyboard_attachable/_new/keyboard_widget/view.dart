import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class KeyboardWidgetView extends StatefulWidget {
  KeyboardWidgetView({super.key});

  @override
  State<KeyboardWidgetView> createState() => StateChild();
}

class KeyboardWidgetViewState extends State<KeyboardWidgetView>
    with StateMother {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Text("KeyboardWidget")
          .textStyle(Theme.of(context).textTheme.displaySmall!)
          .fontWeight(FontWeight.bold)
          .textAlignment(TextAlign.center)
          .center(),
    ).height(100).width(1.sw);
  }
}

main() async {
  return buildApp(appHome: KeyboardWidgetView());
}
