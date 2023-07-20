import 'package:flutter/material.dart';

class NotificationProvider with ChangeNotifier {
  List<Widget> notifications = [];

  void addNotifications(Widget notificationItem) {
    notifications.add(notificationItem);
    notifyListeners();
  }

  void deleteAllNotifications() {
    notifications.clear();
    notifyListeners();
  }
}
