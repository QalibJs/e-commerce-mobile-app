abstract class CartState {}

class CartInitial extends CartState {}

class CartCounting extends CartState {
  int countOfProduct;
  CartCounting({
    required this.countOfProduct,
  });
}
