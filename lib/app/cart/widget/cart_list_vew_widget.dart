import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/products_model.dart';
import '../../../provider/cart_provider.dart';
import 'cart_widget.dart';

class CartListViewWidget extends StatelessWidget {
  const CartListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CartProvider appProvider = context.watch<CartProvider>();
    List<ProductModel> products = appProvider.products;
    return SizedBox(
      height: MediaQuery.of(context).size.height - 210,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: products.length,
        itemBuilder: (context, index) {
          // final cartDatas = cartModel[index];
          final ProductModel product = products[index];
          return CartWidget(
            description: product.description!,
            price: '${product.price?.toStringAsFixed(0)}',
            productImage: product.image!,
            title: product.title!,
            index: index,
          );
        },
      ),
    );
  }
}
