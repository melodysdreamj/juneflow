import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import '../../../../../main.dart';

import '../../../../config/router.dart';
import '../../../shared_params/_/material_app.dart';

Widget materialAppInsideBuilder(BuildContext context, Widget? child) {
  return child!;
}

Widget Function() MaterialAppBuilder(BuildContext context) {
  return () => MaterialApp.router(
        routeInformationParser: BeamerParser(),
        routerDelegate: app_router,
        backButtonDispatcher: MaterialAppParams.backButtonDispatcher,
        localizationsDelegates: MaterialAppParams.localizationsDelegates,
        supportedLocales: MaterialAppParams.supportedLocales ?? const <Locale>[Locale('en', 'US')],
        locale: MaterialAppParams.locale,
        title: MaterialAppParams.appName ?? 'June',
        theme: MaterialAppParams.lightTheme,
        darkTheme: MaterialAppParams.darkTheme,
        themeMode: MaterialAppParams.themeMode ?? ThemeMode.system,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return materialAppInsideBuilder(context, child);
        },
      );
}
