import 'package:flutter/material.dart';

import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class CartDescriptionWidget extends StatelessWidget {
  final String description;
  final String title;
  const CartDescriptionWidget({
    super.key,
    required this.description,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSizedBox.h20,
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.cartDescription(),
        ),
        AppSizedBox.h5,
        Text(
          description,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.cartDescription(),
        )
      ],
    );
  }
}
