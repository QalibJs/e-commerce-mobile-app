import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text.dart';
import '../widget/cart_scrollable_item_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.greyBlue,
        centerTitle: true,
        title: Text(
          AppText.myCart,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CartScrollableItemWidget(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
