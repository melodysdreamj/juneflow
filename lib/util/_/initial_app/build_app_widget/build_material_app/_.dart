import 'package:flutter/material.dart';
import '../../../../../main.dart';

import '../../../../config/_/router/_/_.dart';
import '../../../shared_params/_/material_app.dart';


Widget materialAppInsideBuilder(BuildContext context, Widget? child) {

  return child!;
}

Widget Function() MaterialAppBuilder(BuildContext context) {
  return () => MaterialApp.router(
        routeInformationParser: app_router.routeInformationParser,
        routerDelegate: app_router.routerDelegate,
        routeInformationProvider: app_router.routeInformationProvider,
        localizationsDelegates: MaterialAppParams.localizationsDelegates,
        supportedLocales: MaterialAppParams.supportedLocales ?? const <Locale>[Locale('en', 'US')],
        locale: MaterialAppParams.locale,
        title: MaterialAppParams.appName ?? 'June',
        theme: MaterialAppParams.lightTheme,
        darkTheme: MaterialAppParams.darkTheme,
        themeMode: MaterialAppParams.themeMode,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return materialAppInsideBuilder(context, child);
        },
      );
}
