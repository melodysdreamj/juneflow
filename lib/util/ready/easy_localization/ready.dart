import 'package:easy_localization/easy_localization.dart';

Future<void> readyForEasyLocalization() async {
  await EasyLocalization.ensureInitialized();
}
