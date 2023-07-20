import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text_style.dart';
import '../../../cubit/cart/cart_cubit.dart';

class ProductCounterWidget extends StatelessWidget {
  final int index;
  const ProductCounterWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    CartCubit cartCubit = context.read<CartCubit>();
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
          "${cartCubit.titleModel[index].count}",
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
  }
}
