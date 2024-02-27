import 'package:flutter/material.dart';

import '../../../../../../../../../../util/start_app.dart';
import 'action/change_screen.dart';
import 'state.dart';
import '_/params.dart';
import '_/util/navigator.dart';
import '_/util/view_skeleton.dart';


class V extends StatefulWidget {
  const V({super.key, this.tag, required this.params, required this.slug});

  final String? tag;
  final NewParams params;
  final String? slug;

  @override
  State<V> createState() => _VState();
}

class _VState extends State<V> {
  @override
  Widget build(BuildContext context) {
    return JuneBuilder(
      () => NewState(),
      tag: widget.tag,
      autoRemove: false,
      builder: (state) => Scaffold(
        body: IndexedStack(
          index: state.selectedIndex,
          children: [
            //////////////////////////////////////////////////////////////////
            Container().backgroundColor(Colors.red),
            Container().backgroundColor(Colors.blue),
            Container().backgroundColor(Colors.yellow),
            Container().backgroundColor(Colors.green),
            //////////////////////////////////////////////////////////////////
          ],
        ),
        floatingActionButton: FloatingActionButtonKit(
          button1: (context) {
            changeScreenAction(1, tag: widget.tag);
          },
        ),
      ),
    );
  }
}

main() async {
  // return await startApp(home: NewView(params: NewParams()));

  return await startApp(callAfterBuild: (context) async {
    NewNavigator(
      NewParams(),
      // tag: "someTag"
    ).withoutRouterMovePage(
      context,
    );
  });
}
