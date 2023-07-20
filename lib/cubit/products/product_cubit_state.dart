import '../../data/model/products_model.dart';

abstract class ProductState {}

class InitialState extends ProductState {}

class LoadingState extends ProductState {}

class SuccessState extends ProductState {
  List<ProductModel> productModel;
  SuccessState({
    required this.productModel,
  });
}

class ErrorState extends ProductState {}
