import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_sized_box.dart';
import '../../../cubit/products/product_cubit.dart';
import '../../../cubit/products/product_cubit_state.dart';
import 'shopping_best_sale_list_tile_widget.dart';
import 'shopping_best_sale_widget.dart';
import 'shopping_cashback_widget.dart';
import 'shopping_grid_products_widget.dart';
import 'shopping_most_popular_widget.dart';
import 'shopping_promos_widget.dart';
import 'shopping_third_widget.dart';

class ShoppingProductWidget extends StatelessWidget {
  const ShoppingProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is SuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height + 2030,
            child: Column(
              children: [
                const ShoppingGridPoductsWidget(),
                AppSizedBox.h10,
                const ShoppingCashBackWidget(),
                const ShoppingPromosWidget(),
                AppSizedBox.h30,
                const ShoppingThirdWidget(),
                const ShoppingFlashSale(),
                AppSizedBox.h15,
                const ShoppingBestSaleWidget(),
                const ShoppingMostPopular(),
              ],
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
