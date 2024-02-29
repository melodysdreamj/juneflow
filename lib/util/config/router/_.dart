import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';

import '../../../app/_/_/interaction/view/_/_/init_view.dart';
import '../../start_app.dart';

// GoRouter configuration
final GoRouter app_router = GoRouter(
  observers: [BotToastNavigatorObserver()],
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return ReadyPage(home: MyAppHome, callAfterBuild: MyAppCallAfterBuild);
      },
    ),
//     GoRoute(
//       path: '/${toSnakeCase('New')}',
//       pageBuilder: (context, state) {
//         return CustomTransitionPage<void>(
//           key: state.pageKey,
//           child: NewView(
//             params: NewParams.fromUri(context, state.uri),
//             tag: state.uri.queryParameters['tag'],
//           ),
//           transitionsBuilder: (BuildContext context,
//               Animation<double> animation,
//               Animation<double> secondaryAnimation,
//               Widget child) {
// // return FadeTransition(opacity: animation, child: child);
//             return SlideTransition(
//               position: animation.drive(
//                   Tween(begin: Offset(1.0, 0.0), end: Offset.zero)
//                       .chain(CurveTween(curve: Curves.easeInOut))),
//               child: child,
//             );
//           },
//         );
//       },
//     ),
  ],
  redirect: (BuildContext context, GoRouterState state) async {
    await readyForAppStart(context);
    return null;
  },
);
