import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';
import '../../../cubit/cart/cart_cubit.dart';
import '../../../cubit/cart/cart_state.dart';
import 'cart_description_widget.dart';

class CartCounterWithDescription extends StatelessWidget {
  final String description;
  final String title;
  final String price;
  final int index;
  const CartCounterWithDescription({
    Key? key,
    required this.description,
    required this.title,
    required this.price,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartCubit cartCubit = context.read<CartCubit>();

    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return Column(
          children: [
            CartDescriptionWidget(
              description: description,
              title: title,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "$price \$",
                  style: AppTextStyle.costStyle(),
                ),
                const Spacer(),
                // Container(
                //   height: 38,
                //   decoration: BoxDecoration(
                //       border: Border.all(color: AppColors.blackColor)),
                  Center(
                    child: Row(
                      children: [
                        IconButton(
                          splashRadius: 16,
                          icon: const Icon(
                            Icons.remove_circle_outline,
                            size: 22,
                          ),
                          onPressed: () {
                            cartCubit.decrement(index);
                          },
                        ),
                        AppSizedBox.h5,
                        Text(
                          "${cartCubit.titleModel[index].count}",
                          style: AppTextStyle.costStyle(),
                        ),
                        AppSizedBox.h5,
                        IconButton(
                          splashRadius: 16,
                          icon: const Icon(
                            Icons.add_circle_outline,
                            size: 22,
                          ),
                          onPressed: () {
                            cartCubit.increment(index);
                          },
                        ),
                      ],
                    ),
                  ),
                // ),
              ],
            ),
          ],
        );
      },
    );
  }
}
