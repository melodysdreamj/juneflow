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
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    // 뒤로 가기 버튼 숨기기
                    floating: true,
                    pinned: true,
                    expandedHeight: 200.0,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Column(
                        mainAxisSize: MainAxisSize.min,
                        // image + text
                        children: [
                          Container(
                            height: 130,
                            child: Image.network(
                              "https://picsum.photos/250?image=9",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "상단 위젯",
                          ),
                        ],
                      ),
                    ),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(48.0), // TabBar의 높이
                      child: Material(
                        child: TabBar(
                          tabs: [
                            Tab(icon: Icon(Icons.list)),
                            Tab(icon: Icon(Icons.grid_on)),
                            Tab(icon: Icon(Icons.directions_bike)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: <Widget>[
                  // ListView 탭
                  ListView.builder(
                    itemCount: 30,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text('리스트 아이템 $index'),
                      );
                    },
                  ),
                  // GridView 탭
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: 30,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Center(
                          child: Text('그리드 아이템 $index'),
                        ),
                      );
                    },
                  ),
                  // 다른 컨텐츠 탭
                  Center(child: Text('자전거 탭')),
                ],
              ),
            ),
          ),
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
