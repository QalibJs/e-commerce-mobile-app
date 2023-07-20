import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Widgets/global/global_button_widget.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text.dart';
import '../../../cubit/products/product_cubit.dart';
import '../../../cubit/products/product_cubit_state.dart';
import '../../../provider/cart_provider.dart';
import '../../../widgets/global/global_snacbar_widget.dart';

class ProductButtonWidget extends StatelessWidget {
  final int index;
  const ProductButtonWidget({
    super.key, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = context.read<CartProvider>();

    return Padding(
      padding: AppPadding.lr12(),
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is SuccessState) {
            return GlobalButtonWidget(
            text: AppText.addToCart,
            color: AppColors.orangeColor,
            onPressed: () {
              cartProvider.addToCart(
                state.productModel[index]
              );
              GlobalSnackBarWidget()
                  .snackBar(context, "Added to cart", AppColors.greenColor);
            },
          );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
