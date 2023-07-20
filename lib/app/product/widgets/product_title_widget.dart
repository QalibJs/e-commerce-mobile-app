import 'package:flutter/material.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_text_style.dart';

class ProductTitleWidget extends StatelessWidget {
  final String title;
  const ProductTitleWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: AppPadding.lr12().copyWith(left: 9),
            child: Text(
              title,
              style: AppTextStyle.cartTitle(),
            ),
          ),
        ),
      ],
    );
  }
}
