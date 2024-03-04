import 'package:awesome_notifications/awesome_notifications.dart';

import '../../../../app/_/_/interaction/listener/_/awesome_notifications/action_received_stream.dart';
import '../../../../app/_/_/interaction/listener/_/awesome_notifications/dismissed_action_stream.dart';
import '../../../../app/_/_/interaction/listener/_/awesome_notifications/notification_created_stream.dart';
import '../../../../app/_/_/interaction/listener/_/awesome_notifications/notification_displayed_stream.dart';
import '../../../config/notification_channel.dart';
import '../../../start_app.dart';

Future<void> readyForAwesomeNotifications() async {
  AwesomeNotifications().initialize(
    // set the icon to null if you want to use the default app icon
      null,
      NotificationChannelConfig.channelList);

  AwesomeNotifications().setListeners(
    onActionReceivedMethod: (ReceivedAction receivedAction) {
      ActionReceivedStreamListener(receivedAction);
      return Future.value(null);
    },
    onNotificationCreatedMethod: (ReceivedNotification receivedNotification) {
      NotificationCreatedStreamListener(receivedNotification);
      return Future.value(null);
    },
    onNotificationDisplayedMethod: (ReceivedNotification receivedNotification) {
      NotificationDisplayedListener(receivedNotification);
      return Future.value(null);
    },
    onDismissActionReceivedMethod: (ReceivedAction receivedAction) {
      DisMissedActionStreamListener(receivedAction);
      return Future.value(null);
    },
  );
}
