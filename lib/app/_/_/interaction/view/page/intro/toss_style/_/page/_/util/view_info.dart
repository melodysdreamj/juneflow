class ViewInfo {
  /// Please refer to the following guide to share the view.
  /// https://juneflutter-doc.junes-architecture.lol/ui/share-your-view

  /// Please write down the author's GitHub ID. If there are contributors later on, please add them as well.
  final List<String> contributors = ['melodysdreamj'];

  /// Please list in detail any packages or extensions that need to be installed to use this view.
  final String preInstall = '''
1. Please enter the following in the terminal at the project location.
```
flutter pub add tuple
flutter pub add infinite_listview
flutter pub add auto_size_text
flutter pub add flutter_color
```
2. Please add the following to the assets section in pubspec.yaml.
```
  assets:
    - assets/sample/page/intro/toss_style/
```
  ''';

  /// Please write down the app name or any tags that could categorize it.
  final List<String> tag = ['toss'];
}
