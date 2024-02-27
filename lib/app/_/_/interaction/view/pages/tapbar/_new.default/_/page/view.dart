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
          body: DefaultTabController(
            length: 3, // 탭의 개수
            child: Scaffold(
              appBar: AppBar(
                title: Text('TabBar'),
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.directions_car), text: "1번"),
                    Tab(icon: Icon(Icons.directions_bike), text: "2번"),
                    Tab(icon: Icon(Icons.directions_transit), text: "3번"),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  // 각 탭의 내용
                  Icon(Icons.directions_car),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_transit),
                ],
              ),
            ),
          ),
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
