import '../../../../../../../../../../../../main.dart';

class NewViewSomeKV {
  static set(dynamic value) {
    hiveBox.put('NewViewSomeKV', value);
  }

  static dynamic get() {
    return hiveBox.get('NewViewSomeKV');
  }
}
