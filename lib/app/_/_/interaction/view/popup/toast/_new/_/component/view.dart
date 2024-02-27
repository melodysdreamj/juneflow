import 'package:flutter/material.dart';

import '../../../../../../../../../../util/start_app.dart';
import 'state.dart';
import '_/params.dart';
import '_/util/view_skeleton.dart';
import '_/widget/_new.dart';

class V extends StatefulWidget {
  const V({super.key, this.tag, required this.params});

  final String? tag;
  final NewParams params;

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
      builder: (state) => Container(
        color: Colors.blue,
        // floatingActionButton: FloatingActionButtonKit(),
        child: const Text("New View")
            .textStyle(Theme.of(context).textTheme.displaySmall!)
            .fontWeight(FontWeight.bold)
            .textAlignment(TextAlign.center)
            .center(),
      ).height(100).width(1.sw),
    );
  }
}

main() async {
  return await startApp(
      home: SafeArea(
    child: NewView(
      // tag: "someTag",
      params: NewParams(),
    ),
  ));
}
