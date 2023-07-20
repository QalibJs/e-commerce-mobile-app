import 'package:flutter/material.dart';

import '../data/model/products_model.dart';

class OrderProvider with ChangeNotifier {
  PageController controller = PageController();

  List<ProductModel> product = [];
  void addToCart(ProductModel productModel) {
    product.add(productModel);
    notifyListeners();
  }

  void removeAll() {
    product.clear();
    notifyListeners();
  }

  int currentIndex = 0;
  void selectCategory(int index) {
    currentIndex = index;
    notifyListeners();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
