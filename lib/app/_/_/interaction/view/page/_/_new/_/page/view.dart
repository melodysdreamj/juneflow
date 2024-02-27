import 'package:flutter/material.dart';

import '../../../../../../../../../../util/start_app.dart';
import 'state.dart';
import '_/params.dart';
import '_/util/navigator.dart';
import '_/util/view_skeleton.dart';
import '_/widget/_new.dart';

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
      builder: (state) => SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: Text("New Page")
              .textStyle(Theme.of(context).textTheme.displaySmall!)
              .fontWeight(FontWeight.bold)
              .textAlignment(TextAlign.center)
              .center(),
          floatingActionButton: FloatingActionButtonKit(),
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
