import 'package:easy_localization/easy_localization.dart';

import '../../../main.dart';

@ReadyRunApp()
Future<void> readyForEasyLocalization() async {
  await EasyLocalization.ensureInitialized();
}
