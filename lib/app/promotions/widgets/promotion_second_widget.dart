import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';
import 'promotion_second_list_view_widget.dart';

class PromotionSecondWidget extends StatelessWidget {
  const PromotionSecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        
        width: MediaQuery.of(context).size.width,
        color: AppColors.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSizedBox.h10,
            Padding(
              padding: AppPadding.lr12().copyWith(right: 0),
              child: Text(
                "Promosyonlar necə işləyir?",
                style: AppTextStyle.descriptionStyleB(),
              ),
            ),
            AppSizedBox.h10,
            Padding(
              padding: AppPadding.lr12().copyWith(right: 0),
              child: Text(
                "Mağazada endirimlərin görünməsi sizə daha çox klik qazandırır",
                style: AppTextStyle.promotionSubtitle(),
              ),
            ),
            AppSizedBox.h20,
            const PromotionSecondListViewWidget(),
            
            
            
          ],
        ),
      ),
    );
  }
}
