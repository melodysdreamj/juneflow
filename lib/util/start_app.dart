import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';

import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_fgbg/flutter_fgbg.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../main.dart';
import '../app/_/_/interaction/view/_/_/init_view.dart';
import '../util/params/app_cycle.dart';
import '../app/_/_/interaction/listener/_/app_life_cycle/turn_background.dart';
import '../app/_/_/interaction/listener/_/app_life_cycle/turn_foreground.dart';
import 'config/device_preview.dart';
import 'config/router/_.dart';
import 'config/screen_rotate.dart';
import 'config/support_language.dart';
import 'config/theme/_config.dart';
import 'handler/theme_mode/_.dart';
import 'ready/ready.dart';

export 'config/theme/_config.dart';
export 'config/screen_rotate.dart';
export 'config/support_language.dart';
export '../main.dart';

Future<void> myApp(
    {Widget? home, Function(BuildContext)? callAfterBuild}) async {
  MyAppHome = home;
  MyAppCallAfterBuild = callAfterBuild;

  await readyForRunAppStart();
  return runApp(ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        readyForMaterialAppStart();
        return EasyLocalization(
          supportedLocales: AppSupportLanguage().get(),
          path: 'assets/localization.csv',
          assetLoader: CsvAssetLoader(),
          fallbackLocale: const Locale('en'),
          child: Phoenix(
            child: (!kIsWeb || kReleaseMode)
                ? MyApp()
                : DevicePreview(
                    enabled: when_start_web_with_device_preview,
                    builder: (context) => MyApp(),
                  ),
          ),
        );
      }));
}

late Widget? MyAppHome;
late Function(BuildContext)? MyAppCallAfterBuild;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context)
        ?.setLocale(Locale(context.locale.languageCode));
    Widget appBody;

    if (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS) {
      appBody = FGBGNotifier(
        onEvent: (event) {
          if (event == FGBGType.foreground) {
            isForeground = true;
            TurnForegroundListener();
          } else {
            isForeground = false;
            TurnBackgroundListener();
          }
        },
        child: buildAppRouter(context),
      );
    } else {
      appBody = buildAppRouter(context);
    }

    return GlobalLoaderOverlay(
      overlayColor: Colors.transparent,
      useDefaultLoading: false,
      child: appBody,
    );
  }

  Widget buildAppRouter(BuildContext context) {
    final botToastBuilder = BotToastInit();
    return JuneBuilder(
      () => AppThemeMode(),
      autoRemove: false,
      builder: (appThemeMode) => MaterialApp.router(
        routeInformationParser: app_router.routeInformationParser,
        routerDelegate: app_router.routerDelegate,
        routeInformationProvider: app_router.routeInformationProvider,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale:
            (!kIsWeb || kReleaseMode) ? null : DevicePreview.locale(context),
        title: "Awesome Flutter StarterKit",
        theme: ThemeConfig.appTheme,
        darkTheme: ThemeConfig.appDarkTheme,
        themeMode: appThemeMode.mode,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          child = EasyLoading.init()(context, child);
          child = botToastBuilder(context, child);
          if (!(!kIsWeb || kReleaseMode)) {
            child = DevicePreview.appBuilder(context, child);
          }
          return child;
        },
      ),
    );
  }
}

class ReadyPage extends StatefulWidget {
  ReadyPage({super.key, this.home, this.callAfterBuild});

  final Widget? home;
  final Function(BuildContext)? callAfterBuild;

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<ReadyPage> with AfterLayoutMixin<ReadyPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widget.home ??
            ((widget.callAfterBuild == null) ? InitView() : Container()));
  }

  @override
  void afterFirstLayout(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 500), () {
      FlutterNativeSplash.remove();
    });
    widget.callAfterBuild?.call(context);
  }
}

startApp({Widget? home, Function(BuildContext)? callAfterBuild}) {
  return myApp(home: home, callAfterBuild: callAfterBuild);
}

main() {
  return startApp();
}
