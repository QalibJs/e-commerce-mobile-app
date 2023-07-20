import 'package:flutter/material.dart';

class CartProductImageWidget extends StatelessWidget {
  final String productImage;
  const CartProductImageWidget({
    Key? key, required this.productImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: DecorationImage(
          // fit: BoxFit.cover,
          image: NetworkImage(productImage),
        ),
      ),
    );
  }
}
