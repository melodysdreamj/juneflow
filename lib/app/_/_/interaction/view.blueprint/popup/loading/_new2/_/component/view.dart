import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../../util/start_app.dart';
import 'state.dart';
import '_/params.dart';
import '_/config/view_skeleton.dart';

class V extends StatefulWidget {
  const V({super.key, this.tag, required this.params});

  final String? tag;
  final NewParams params;

  @override
  State<V> createState() => _VState();
}

class _VState extends State<V> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));

    animationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });
    animationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void handleTap() {
    BotToast.showCustomText(
        onlyOne: true,
        duration: null,
        toastBuilder: (textCancel) => Align(
              alignment: const Alignment(0, 0.8),
              child: Card(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                        ),
                        onPressed: () {
                          widget.params.cancelFunc();
                          textCancel();
                        }),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("Tap loading toast"),
                    )
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return JuneBuilder(
      () => NewState(),
      tag: widget.tag,
      autoRemove: false,
      builder: (state) => Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FadeTransition(
                opacity: animationController,
                child: IconButton(
                  icon:
                      const Icon(Icons.add, color: Colors.redAccent, size: 30),
                  onPressed: handleTap,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Loading",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// main() async {
//   return await startApp(
//       home: SafeArea(
//     child: NewView(
//       tag: "someTag",
// params: NewParams(),
// ),
// ));
// }
