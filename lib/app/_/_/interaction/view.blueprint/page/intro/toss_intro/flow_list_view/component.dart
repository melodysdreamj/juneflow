import 'dart:async';

import 'package:flutter/material.dart';
import 'package:after_layout/after_layout.dart'; // after_layout 패키지를 사용합니다.
import 'package:infinite_listview/infinite_listview.dart';

import '../../../../../../../../../main.dart';

class FlowListView extends StatefulWidget {
  FlowListView({
    Key? key,
    required this.itemWidget,
    this.padding,
    this.modeSpeed,
    this.axis = Axis.horizontal, // 기본값을 horizontal로 설정합니다.
    this.h = 0,
    this.w = 0,
    this.reverseAnimationFlow = false,
  }) : super(key: key);

  final Widget Function(int) itemWidget;
  final double? padding;
  final double? modeSpeed;
  final Axis axis;
  final double h;
  final double w;
  final bool reverseAnimationFlow;

  @override
  State<FlowListView> createState() => _FlowListViewState();
}

class _FlowListViewState extends State<FlowListView> with AfterLayoutMixin<FlowListView> {
  Timer? _timer;
  final InfiniteScrollController _scrollController = InfiniteScrollController();

  @override
  void afterFirstLayout(BuildContext context) {
    // 화면 렌더링 후 스크롤 시작
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      if (_scrollController.hasClients) { // 스크롤 컨트롤러가 스크롤 뷰에 연결되어 있는지 확인
        final offsetIncrement = (widget.modeSpeed ?? 40) * (widget.reverseAnimationFlow ? -1 : 1);
        final newOffset = _scrollController.offset + offsetIncrement;

        _scrollController.animateTo(
          newOffset,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.linear,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // 타이머 해제
    _scrollController.dispose(); // 스크롤 컨트롤러 해제
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InfiniteListView.builder(
      scrollDirection: widget.axis,
      physics: const NeverScrollableScrollPhysics(),
      controller: _scrollController,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(widget.padding ?? 8.0),
          child: widget.itemWidget(index),
        );
      },
    ).height(widget.h).width(widget.w);
  }
}
