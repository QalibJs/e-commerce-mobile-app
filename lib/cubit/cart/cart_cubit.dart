import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/title_model.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  List<TitleModel> titleModel = TitleModel.titleModel;

  void increment(int index) {
    if (titleModel[index].count < 10) {
      titleModel[index].count++;
      emit(
        CartCounting(countOfProduct: titleModel[index].count),
      );
    }
  }

  void decrement(int index) {
    if (titleModel[index].count > 0) {
      titleModel[index].count--;
      emit(
        CartCounting(
          countOfProduct: titleModel[index].count,
        ),
      );
    }
  }
}
