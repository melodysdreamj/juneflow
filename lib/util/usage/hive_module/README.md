[![pub package](https://img.shields.io/pub/v/hive_module.svg)](https://pub.dartlang.org/packages/hive_module)

<p>
  <a href="https://github.com/melodysdreamj/juneflow">Juneflow</a> •
  <a href="https://doc.juneflow.org/get-started">Documentation</a>
</p>

# hive_module
this module is a wrapper for the [hive](https://pub.dev/packages/hive) package, it provides a simple way to use hive in juneflow project.

##  Installation
1. If the juneflow project doesn't exist, please create it by following [this guide](https://doc.juneflow.org/get-started).
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
