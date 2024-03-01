import 'package:flutter/material.dart';

import '../../../../../../../../../../../../util/start_app.dart';
import '../loading.dart';
import '../params.dart';
import '../life_cycle/after_first_layout.dart';
import '../life_cycle/dispose.dart';
import '../life_cycle/init_state.dart';

import '../life_cycle/ready_view.dart';
import '../life_cycle/refresh_view.dart';
import '../../view.dart';

export '../params.dart';

class NewView extends StatefulWidget {
  NewView({
    super.key,
    this.tag,
    required this.params,
  });

  final NewParams params;
  final String? tag;

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<NewView> with AfterLayoutMixin<NewView> {
  bool isReadyView = false;
  String? localTag;

  @override
  Widget build(BuildContext context) {
    if (localTag == null && widget.tag == null) localTag = randomString(20);
    if (localTag == null && widget.tag != null) localTag = widget.tag;

    widget.params.context = context;
    if (isReadyView) refreshView(widget.params, widget.params.context, localTag);
    return (!isReadyView)
        ? LoadingComponent(
            params: widget.params,
            tag: localTag,
          )
        : V(
            params: widget.params,
            tag: localTag,
          );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    viewAfterFirstLayout(context, widget.params, localTag);
  }

  @override
  void initState() {
    widget.params.context = context;
    readyPage(widget.params, widget.params.context);
    viewInitState(widget.params, widget.params.context);
    super.initState();
  }

  bool isDisposed = false;

  @override
  void dispose() {
    super.dispose();
    viewDispose(tag: localTag);
    isDisposed = true;
  }

  mySetState() {
    if (isDisposed == false) {
      setState(() {});
    }
  }

  Future<void> readyPage(
    NewParams params,
    BuildContext context,
  ) async {
    if (isReadyView) return; // If it's already running, terminate it.
    params.context = context;
    await readyView(params, context, localTag);

    if (isDisposed == false) {
      setState(() {
        isReadyView = true;
      });
    }
  }
}
