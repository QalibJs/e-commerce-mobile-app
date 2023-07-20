import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/products_model.dart';
import '../../data/services/products_service.dart';
import 'product_cubit_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(InitialState());

  bool sellected = false;


  void selectCategory() {
    sellected = !sellected;
  }

  void productFetching() async {
    emit(LoadingState());
    final product = await ProductService.getProductService();
    if (product is List<ProductModel>) {
      emit(SuccessState(productModel: product));
    } else {
      emit(ErrorState());
    }
  }

  
}
