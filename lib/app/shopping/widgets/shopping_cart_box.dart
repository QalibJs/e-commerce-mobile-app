import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../provider/cart_provider.dart';

class ShoppingCartBox extends StatelessWidget {
  const ShoppingCartBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = context.watch<CartProvider>();
    return Container(
      margin: AppPadding.lr6().copyWith(top: 6, right: 0),
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColors.simplewGreyColor,
      ),
      child: Stack(
        children: [
          const Center(
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 28,
            ),
          ),
          cartProvider.products.isEmpty
              ? const SizedBox.shrink()
              : Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.redColor,
                    ),
                    child: Center(
                        child: Text(
                      "${cartProvider.products.length}",
                      style: TextStyle(
                        color: AppColors.blackColor,
                      ),
                    )),
                  ),
                )
        ],
      ),
    );
  }
}
