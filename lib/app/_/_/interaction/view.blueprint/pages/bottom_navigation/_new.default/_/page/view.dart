import 'package:flutter/material.dart';

import '../../../../../../../../../../util/start_app.dart';
import 'state.dart';
import '_/params.dart';
import '_/config/navigator.dart';
import '_/config/view_skeleton.dart';

class V extends StatefulWidget {
  const V({super.key, this.tag, required this.params, required this.slug});

  final String? tag;
  final NewParams params;
  final String? slug;

  @override
  State<V> createState() => _VState();
}

class _VState extends State<V> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return JuneBuilder(
      () => NewState(),
      tag: widget.tag,
      autoRemove: false,
      builder: (state) => Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            //textTheme.bodyLarge!.color!,
            selectedItemColor: Theme.of(context).textTheme.bodyLarge!.color!,
            unselectedItemColor:
                Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.4),
            selectedFontSize: 14,
            unselectedFontSize: 14,
            currentIndex: _selectedIndex,
            //현재 선택된 Index
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              //////////////////////////////////////////////////////////////////
              BottomNavigationBarItem(
                label: 'Favorites',
                icon: Icon(Icons.home_filled),
                activeIcon: Icon(
                  Icons.home_filled,
                  color: Theme.of(context).textTheme.bodyLarge!.color!,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Music',
                icon: Icon(Icons.favorite),
                activeIcon: Icon(
                  Icons.favorite,
                  color: Theme.of(context).textTheme.bodyLarge!.color!,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Places',
                icon: Icon(Icons.search),
                activeIcon: Icon(
                  Icons.search,
                  color: Theme.of(context).textTheme.bodyLarge!.color!,
                ),
              ),
              BottomNavigationBarItem(
                label: 'News',
                icon: Icon(Icons.person),
                activeIcon: Icon(
                  Icons.person,
                  color: Theme.of(context).textTheme.bodyLarge!.color!,
                ),
              ),
              //////////////////////////////////////////////////////////////////
            ],
          ),
        ),
        body: <Widget>[
          //////////////////////////////////////////////////////////////////
          Container().backgroundColor(Colors.red),
          Container().backgroundColor(Colors.blue),
          Container().backgroundColor(Colors.yellow),
          Container().backgroundColor(Colors.green),
          //////////////////////////////////////////////////////////////////
        ].elementAt(_selectedIndex),
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
