import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Text("NewView")
          .textStyle(Theme.of(context).textTheme.displaySmall!)
          .fontWeight(FontWeight.bold)
          .textAlignment(TextAlign.center)
          .center(),
    ).height(300).width(1.sw);
  }
}

main() async {
  return buildApp(appHome: NewView().center());
}
