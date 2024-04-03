[![pub package](https://img.shields.io/pub/v/hive_module.svg)](https://pub.dartlang.org/packages/hive_module)

[![](https://img.shields.io/badge/Module-Hub-007bff?style=for-the-badge&logo=flutter)](https://module.juneflow.org/)
[![](https://img.shields.io/badge/View-Hub-007bff?style=for-the-badge&logo=flutter)](https://view.juneflow.org/)

[![](https://img.shields.io/badge/DISCORD-JOIN%20SERVER-5663F7?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/zXXHvAXCug)
[![](https://img.shields.io/badge/KakaoTalk-Join%20Room-FEE500?style=for-the-badge&logo=kakao)](https://open.kakao.com/o/gEwrffbg)

# hive_module
this module is a wrapper for the [hive](https://pub.dev/packages/hive) package, it provides a simple way to use hive in juneflow project.

##  Installation
1. If the juneflow project doesn't exist, please create it by following [this guide](https://doc.juneflow.org/).
2. open terminal in the juneflow project root directory, enter the following command.
 ```bash
 june add hive_module
 ```

## Usage
```dart
hiveBox.put('key', 123);

int value = hiveBox.get('key');
print(value); // 123
```

