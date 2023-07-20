import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../../cubit/cart/cart_cubit.dart';
import '../../../cubit/cart/cart_state.dart';

class CartSubtotalWidget extends StatelessWidget {
  final bool isSubtotal;
  const CartSubtotalWidget({
    super.key,
    required this.isSubtotal,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          isSubtotal ? AppText.subtotal : AppText.delivery,
          style: AppTextStyle.costStyle(),
        ),
        const Spacer(),
        BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
              return Text(
                isSubtotal ? "\$22" : "\$22",
                style: AppTextStyle.costStyle(),
              );
          },
        ),
      ],
    );
  }
}
