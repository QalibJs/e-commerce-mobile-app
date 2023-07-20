import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../provider/cart_provider.dart';
import 'cart_button_widget.dart';
import 'cart_empty_data.dart';
import 'cart_list_vew_widget.dart';

class CartScrollableItemWidget extends StatelessWidget {
  const CartScrollableItemWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CartProvider appProvider = context.watch<CartProvider>();

    return appProvider.products.isEmpty
        ? const CartEmptyData()
        : Column(
            children: const [
              CartListViewWidget(),
              CartButtonWidget(),
            ],
          );
  }
}
