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
  late FocusNode myFocusNode;

  @override
  void initState() {
    myFocusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: TextField(
        focusNode: myFocusNode, // TextField에 포커스 노드를 연결합니다.
      ).width(0.7.sw).center(),
      floatingActionButton: FloatingActionButtonKit(
        button1: (context) {
          FocusScope.of(context).requestFocus(myFocusNode);
        },
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}
