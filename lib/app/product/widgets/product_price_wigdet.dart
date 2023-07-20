import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text_style.dart';
import '../../../cubit/cart/cart_cubit.dart';
import '../../../cubit/cart/cart_state.dart';

class ProductPriceWidget extends StatelessWidget {
  final String price;
  final int index;
  const ProductPriceWidget({
    super.key,
    required this.price, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    CartCubit cartCubit = context.read<CartCubit>();
    return Padding(
      padding: AppPadding.lr6(),
      child: Row(
        children: [
          Text(
            "$price  USD",
            style: AppTextStyle.productCostStyle(),
          ),
          const Spacer(),
          Container(
            width: 100,
            height: 30,
            decoration: BoxDecoration(
              color: AppColors.simpleGreyColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        cartCubit.increment(index);
                      },
                      child: Icon(
                        Icons.add_outlined,
                        color: AppColors.darkBlueColor,
                      ),
                    ),
                    Text(
                      "${cartCubit.titleModel[index].count} ",
                      style: AppTextStyle.cartTitle(),
                    ),
                    GestureDetector(
                      onTap: () => cartCubit.decrement(index),
                      child: Icon(
                        Icons.remove,
                        color: AppColors.darkBlueColor,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
