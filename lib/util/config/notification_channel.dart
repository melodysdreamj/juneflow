import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:awesome_notifications/awesome_notifications.dart';

class NotificationChannelConfig {
  static List<NotificationChannel> channelList = [
    NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Basic notifications',
        channelDescription: 'Notification channel for basic tests',
        defaultColor: const Color(0xFF9D50DD),
        ledColor: Colors.white),
    NotificationChannel(
        channelKey: 'scheduled',
        channelName: 'schedule notifications',
        channelDescription: 'Notification channel for scheduled tests',
        defaultColor: const Color(0xFF9D50DD),
        ledColor: Colors.white),
  ];
}
