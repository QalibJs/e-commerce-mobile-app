import 'package:flutter/material.dart';

import '../data/model/products_model.dart';
import '../data/model/title_model.dart';

class FavouriteProvider with ChangeNotifier {
  bool isSelected = false;
  List<TitleModel> titlemodels = TitleModel.titleModel;
  int currentIndex = 0;

  void selectItem(int index) {
    isSelected = !isSelected;
    notifyListeners();
  }

  List<ProductModel> products = [];
  void addToWishList(ProductModel productModel) {
    products.add(productModel);
    notifyListeners();
  }

  void removeProduct(int index) {
    products.removeAt(index);
    notifyListeners();
  }
}
