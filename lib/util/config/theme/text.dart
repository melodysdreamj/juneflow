import 'package:flutter/material.dart';

import '../../start_app.dart';

/*
reference
flutter text theme - https://api.flutter.dev/flutter/material/TextTheme-class.html
 */

class ThemeTextScheme {
  static TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 92,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    displayMedium: TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    displaySmall: TextStyle(
      fontSize: 46,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headlineSmall: TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.w400,
    ),
    titleLarge: TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    titleMedium: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    titleSmall: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  );
}

class _View extends StatelessWidget {
  const _View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Gap(20),
          Text("displayLarge")
              .textStyle(Theme.of(context).textTheme.displayLarge!)
              .padding(all: 8),
          Text("displayMedium")
              .textStyle(Theme.of(context).textTheme.displayMedium!)
              .padding(all: 8),
          Text("displaySmall")
              .textStyle(Theme.of(context).textTheme.displaySmall!)
              .padding(all: 8),
          Text("headlineMedium")
              .textStyle(Theme.of(context).textTheme.headlineMedium!)
              .padding(all: 8),
          Text("headlineSmall")
              .textStyle(Theme.of(context).textTheme.headlineSmall!)
              .padding(all: 8),
          Text("titleLarge")
              .textStyle(Theme.of(context).textTheme.titleLarge!)
              .padding(all: 8),
          Text("titleMedium")
              .textStyle(Theme.of(context).textTheme.titleMedium!)
              .padding(all: 8),
          Text("titleSmall")
              .textStyle(Theme.of(context).textTheme.titleSmall!)
              .padding(all: 8),
          Text("bodyLarge")
              .textStyle(Theme.of(context).textTheme.bodyLarge!)
              .padding(all: 8),
          Text("bodyMedium")
              .textStyle(Theme.of(context).textTheme.bodyMedium!)
              .padding(all: 8),
          ElevatedButton(
            onPressed: () {
              print('Button Pressed');
            },
            child: Text('labelLarge'),
          ).padding(all: 8),
          Text("bodySmall")
              .textStyle(Theme.of(context).textTheme.bodySmall!)
              .padding(all: 8),
          Text("labelSmall")
              .textStyle(Theme.of(context).textTheme.labelSmall!)
              .padding(all: 8)
        ],
      ),
    );
  }
}

main() async {
  return startApp(home: _View());
}
