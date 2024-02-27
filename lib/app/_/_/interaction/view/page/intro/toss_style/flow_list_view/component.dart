import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../../../../../main.dart';
import 'package:infinite_listview/infinite_listview.dart';

class FlowListView extends StatefulWidget {
  FlowListView({
    super.key,
    required this.itemWidget,
    this.padding,
    this.modeSpeed,
    this.axis,
    this.h = 0,
    this.w = 0,
    this.reverseAnimationFlow = false,
  });

  final Widget Function(int) itemWidget;
  final double? padding;
  final double? modeSpeed;
  final Axis? axis; //가로 리스트뷰인지, 세로 리스트뷰인지 설정 ex) Axis.vertical,horizontal
  final double h;
  final double w;
  final bool reverseAnimationFlow;

  @override
  State<FlowListView> createState() => FlowListViewState();
}

class FlowListViewState extends State<FlowListView>
    with AfterLayoutMixin<FlowListView> {
  late Timer _timer;
  final InfiniteScrollController _scrollController = InfiniteScrollController();

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      // myLogger(timer.tick.toString());

      _scrollController.animateTo(
        _scrollController.offset +
            ((widget.modeSpeed ?? 40) *
                ((widget.reverseAnimationFlow) ? -1 : 1)),
        duration: const Duration(milliseconds: 1000),
        curve: Curves.linear,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InfiniteListView.builder(
        scrollDirection: widget.axis ?? Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        controller: _scrollController,
        // padding: myEdgeAll(widget.padding ?? 8),
        // itemCount: widget.itemLength, //실제 데이터로 object.length 길이를 넣어줍니다.
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(widget.padding ?? 8.0),
            child: widget.itemWidget(index),
          );
        }).height(widget.h).width(widget.w);
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {}
}
