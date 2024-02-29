import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

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
  @override
  Widget build(BuildContext context) {
    return JuneBuilder(
      () => NewState(),
      tag: widget.tag,
      autoRemove: false,
      builder: (state) => SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: ZoomDrawer(
            controller: state.zoomDrawerController,
            style: DrawerStyle.defaultStyle,
            menuScreen: Container(
              color: Colors.red,
              child: Text("Menu View")
                  .textStyle(Theme.of(context).textTheme.headlineMedium!)
                  .fontWeight(FontWeight.bold)
                  .center(),
            ),
            mainScreen: Container(
              color: Colors.green,
              child: Text("Main View")
                  .textStyle(Theme.of(context).textTheme.headlineMedium!)
                  .fontWeight(FontWeight.bold)
                  .center(),
            ),
            menuBackgroundColor: Colors.blue,
            borderRadius: 24.0,
            // showShadow: true,
            mainScreenTapClose: true,
            angle: 0.0,
            drawerShadowsBackgroundColor: Colors.grey,
            slideWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          floatingActionButton: FloatingActionButtonKit(
            button1: (context) {
              state.zoomDrawerController.toggle!();
            },
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
