import 'package:flutter/material.dart';

import '../../../../../../../../../../../../util/start_app.dart';
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
    this.slug,
    required this.params,
  });

  final NewParams params;
  final String? tag;
  final String? slug;

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<NewView> with AfterLayoutMixin<NewView> {
  bool isReadyView = false;

  @override
  Widget build(BuildContext context) {
    refreshView(widget.params, context, widget.tag, widget.slug);
    return V(
      params: widget.params,
      tag: widget.tag,
      slug: widget.slug,
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    viewAfterFirstLayout(widget.params, widget.tag, widget.slug);
  }

  @override
  void initState() {
    readyPage();
    viewInitState(widget.params, context, widget.tag, widget.slug);

    super.initState();
  }

  bool isDisposed = false;

  @override
  void dispose() {
    super.dispose();
    viewDispose(widget.params, context, tag: widget.tag, slug: widget.slug);
    isDisposed = true;
  }

  mySetState() {
    if (isDisposed == false) {
      setState(() {});
    }
  }

  readyPage() {
    if (isReadyView) return; // If it's already running, terminate it.
    readyView(widget.params, widget.tag, widget.slug);

    if (isDisposed == false) {
      setState(() {
        isReadyView = true;
      });
    }
  }
}
