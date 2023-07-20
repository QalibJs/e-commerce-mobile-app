import 'package:flutter/material.dart';

import '../../../constants/app_sized_box.dart';
import 'promotion_second_widget.dart';
import 'promotion_third_widget.dart';
import 'promotion_top_widget.dart';

class PromFullWidget extends StatelessWidget {
  const PromFullWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PromotionTopWidget(),
        AppSizedBox.h5,
        const PromotionSecondWidget(),
        AppSizedBox.h5,
        const PromotionThirdWidget(),
      ],
    );
  }
}
