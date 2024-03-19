import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../main.dart';
import '../../../../_/initial_app/ready_functions/after_material_app/_.dart';
import '../../../../_/shared_params/_/go_router.dart';
import '../../init_view.dart';

// GoRouter configuration
final GoRouter app_router = GoRouter(
  observers: GoRouterParams.goRouterObservers,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return _WorkSpacePage();
      },
    ),
  ],
  redirect: (BuildContext context, GoRouterState state) async {
    await readyAfterMaterialApp(context);
    return null;
  },
);

class _WorkSpacePage extends StatelessWidget {
  const _WorkSpacePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => MyAppCallAfterBuild?.call(context));
    return Scaffold(
        body: MyAppHome ??
            (MyAppCallAfterBuild == null ? InitView() : Container()));
  }
}
