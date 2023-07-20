import 'package:flutter/material.dart';

class ShoppingProvider with ChangeNotifier {
  int currentIndex = 0;
  int currentSize = 0;

  PageController controller = PageController();

  void selectCategory(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void selectSize(int index) {
    currentSize = index;
    notifyListeners();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
