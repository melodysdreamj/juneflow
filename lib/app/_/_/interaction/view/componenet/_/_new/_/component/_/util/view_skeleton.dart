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
  String? randomTag;


  @override
  Widget build(BuildContext context) {
    widget.params.context = context;
    refreshView(widget.params, widget.params.context, widget.tag);
    return (!isReadyView)
        ? LoadingComponent(
            params: widget.params,
            tag: widget.tag,
          )
        : V(
            params: widget.params,
            tag: widget.tag,
          );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    viewAfterFirstLayout(context, widget.params, widget.tag);
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
    viewDispose(tag: widget.tag);
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
    await readyView(params, context, widget.tag);

    if (isDisposed == false) {
      setState(() {
        isReadyView = true;
      });
    }
  }
}
