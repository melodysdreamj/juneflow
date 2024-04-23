[![pub package](https://img.shields.io/pub/v/theme_mode_changer.svg)](https://pub.dartlang.org/packages/theme_mode_changer)

[![juneflow_github](https://img.shields.io/badge/Juneflow-GitHub-181717?style=for-the-badge&logo=github)](https://github.com/melodysdreamj/juneflow)
[![](https://img.shields.io/badge/View-Hub-007bff?style=for-the-badge&logo=flutter)](https://view.juneflow.org/)

# theme_mode_changer
change or switch theme mode in your app.

##  Installation
1. If the juneflow project doesn't exist, please create it by following [this guide](https://doc.juneflow.org/).
2. open terminal in the juneflow project root directory, enter the following command.
 ```bash
 june add theme_mode_changer
 ```

## Usage
```dart
// change to dark theme
ThemeModeChanger.changeToDarkTheme();

// change to light theme
ThemeModeChanger.changeToLightTheme();

// switch theme mode
ThemeModeChanger.switchThemeMode(context);

// check current theme is dark
ThemeModeChanger.isDarkTheme(context);
```
