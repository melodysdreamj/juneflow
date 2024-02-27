import 'package:flutter/material.dart';

import '../../start_app.dart';
import '_config.dart';

class ThemeColorScheme {
  // Color(0xFF601410),//
  static ColorScheme lightColorScheme = ColorScheme.fromSeed(
    seedColor: Color(0xFFFFD8E4), // 주요 색상 지정
    background: Colors.white, // 라이트 모드의 배경색
    onBackground: Colors.black, // 라이트 모드에서 배경 위의 글자색
  );

  static ColorScheme darkColorScheme = ColorScheme.fromSeed(
    seedColor: Color(0xFFFFD8E4), // 주요 색상 지정
    brightness: Brightness.dark, // 다크 모드 설정
    background: Colors.black, // 다크 모드의 배경색
    onBackground: Colors.white, // 다크 모드에서 배경 위의 글자색
  );

  static Color dialogBackgroundColor = Colors.white;
  static Color dialogDarkBackgroundColor = Colors.black;
}

// class _View extends StatelessWidget {
//   const _View({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("App bar background color"),
//       ),
//       body: Column(
//         children: [
//           Gap(30),
//           Text("text color "),
//           ElevatedButton(
//             onPressed: () {
//               print('Button Pressed');
//             },
//             child: Text('"button little primary color '),
//           ).padding(all: 8),
//           Container(
//             height: 30,
//             width: 1.sw,
//             child: Text("container color is same as background color"),
//           ),
//           Icon(Icons.favorite_border),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//           onPressed: () {
//             // Get.changeTheme((Theme.of(context).brightness == Brightness.dark)
//             //     ? ThemeConfig.appTheme
//             //     : ThemeConfig.appDarkTheme);
//           },
//           label: Text("floating button color is primaryContainer ")),
//     );
//   }
// }
//
// main() async {
//   return startApp(home: _View());
// }
