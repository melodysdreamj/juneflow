import 'package:awesome_notifications/awesome_notifications.dart';

import '../../../../../../../util/start_app.dart';

ActionReceivedStreamListener(ReceivedAction receivedAction) async {
  log('ActionReceivedStreamListener: ${receivedAction.id}');
}
