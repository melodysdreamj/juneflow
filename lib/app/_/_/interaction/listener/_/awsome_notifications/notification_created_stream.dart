import 'package:awesome_notifications/awesome_notifications.dart';

import '../../../../../../../util/start_app.dart';

NotificationCreatedStreamListener(
    ReceivedNotification receivedNotification) async {
  log('NotificationCreatedStreamListener: ${receivedNotification.id}');
}
