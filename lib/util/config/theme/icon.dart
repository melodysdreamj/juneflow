import 'package:flutter/material.dart';

import '../../start_app.dart';
import 'colors.dart';

/*
reference
flutter text theme - https://api.flutter.dev/flutter/material/TextTheme-class.html
 */

class ThemeIconScheme {
  static const IconThemeData theme = IconThemeData(
    // color: ThemeColorScheme.lightColorScheme.primary,
    size: 24,
  );
}

class _View extends StatelessWidget {
  const _View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Gap(30),
          Text("icon size is defined here"),
          Icon(Icons.favorite_border),
        ],
      ),
    );
  }
}

main() async {
  return startApp(home: _View());
}
