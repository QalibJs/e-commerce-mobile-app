import 'package:flutter/material.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import 'cart_subtotal_widget.dart';

class CartPriceTotalWidget extends StatelessWidget {
  const CartPriceTotalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.lrt12(),
      child: Column(
        children: [
          // AppSizedBox.h10,
          const CartSubtotalWidget(isSubtotal: true),
          AppSizedBox.h15,
          const CartSubtotalWidget(isSubtotal: false),
          AppSizedBox.h15,
        ],
      ),
    );
  }
}
