import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class ProductAppBarWidget extends StatelessWidget {
  final Widget icon;
  final int index;
  final void Function()? press;
  const ProductAppBarWidget({
    super.key,
    required this.icon,
    required this.press,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        GestureDetector(
          onTap: press,
          child: Container(
            color:AppColors.transparentColor,
            child: icon
          ),
        ),
      ],
    );
  }
}
