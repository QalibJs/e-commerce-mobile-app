import 'package:flutter/material.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_text_style.dart';
import '../../shopping/widgets/shopping_timer_widget.dart';

class FlashSaleEndsInWidget extends StatelessWidget {
  const FlashSaleEndsInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: AppPadding.lrt24(),
      child: Row(
        children: [
          Text(
            "Ends In",
            style: AppTextStyle.shopNow(),
          ),
          const Spacer(),
          const ShoppingTimerWidget(),
        ],
      ),
    );
  }
}
