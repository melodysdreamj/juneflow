import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../../../../../main.dart';
import '../../../../_/initial_app/ready_functions/after_material_app/_.dart';
import '../../../../_/shared_params/_/go_router.dart';

// final GoRouter app_router = GoRouter(
//   observers: GoRouterParams.goRouterObservers,
//   initialLocation: '/',
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (BuildContext context, GoRouterState state) {
//         return _WorkSpacePage();
//       },
//     ),
//   ],
//   redirect: (BuildContext context, GoRouterState state) async {
//     await readyAfterMaterialApp(context);
//     return null;
//   },
// );

final app_router = BeamerDelegate(
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '/': (context, state, data) => _WorkSpacePage(),
    },
  ),
  guards: [
    BeamGuard(
      pathPatterns: ['/.*'],  // 모든 경로에 대해 적용
      check: (context, location) {

        return true;
      },
    ),
  ],
);

class _WorkSpacePage extends StatelessWidget {
  const _WorkSpacePage();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => MyAppCallAfterBuild?.call(context));
    return Scaffold(
        body: MyAppHome ??
            (MyAppCallAfterBuild == null ? InitView() : Container()));
  }
}
