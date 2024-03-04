import 'package:awesome_notifications/awesome_notifications.dart';

import '../../../../../../../util/start_app.dart';

NotificationDisplayedListener(ReceivedNotification receivedNotification) async {
  log('NotificationDisplayedListener: ${receivedNotification.id}');
}
