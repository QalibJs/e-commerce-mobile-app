import 'package:flutter/cupertino.dart';

import '../data/model/products_model.dart';

class CartProvider with ChangeNotifier {
  List<ProductModel> products = [];
  void addToCart(ProductModel productModel) {
    products.add(productModel);
    notifyListeners();
  }

  void addToWishList(ProductModel productModel) {
    products.add(productModel);
    notifyListeners();
  }

  void removeProduct(int index) {
    products.removeAt(index);
    notifyListeners();
  }

  void clearAll() {
    products.clear();
    notifyListeners();
  }
}
