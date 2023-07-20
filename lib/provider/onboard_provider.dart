import 'package:flutter/material.dart';

import '../hive/hive_service.dart';

class OnboardProvider with ChangeNotifier {
  void saveOnboardScreen(Widget item) {
    HiveService.instance.then((value) {
      value.saveData("onboard", item);
    });
  }

  void deleteOnboardScreen() {
    HiveService.instance.then((value) {
      value.deleteData("onboard");
    });
  }
}
