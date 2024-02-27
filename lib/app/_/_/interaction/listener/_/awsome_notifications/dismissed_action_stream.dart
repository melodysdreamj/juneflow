import 'package:awesome_notifications/awesome_notifications.dart';

import '../../../../../../../util/start_app.dart';

DisMissedActionStreamListener(ReceivedAction receivedAction) async {
  log('DisMissedActionStreamListener: ${receivedAction.id}');
}
