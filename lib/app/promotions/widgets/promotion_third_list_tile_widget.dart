import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import 'promotion_comment_widget.dart';
import 'promotion_user_pp_widget.dart';
import 'promotion_username_widget.dart';

class PromotionThirdListTileWidget extends StatelessWidget {
  final String text;
  final String username;
  final String userCity;
  const PromotionThirdListTileWidget(
      {super.key,
      required this.text,
      required this.username,
      required this.userCity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.lr12(),
      child: Container(
        width: 340,
        decoration: BoxDecoration(
          color: AppColors.darkBlueColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Row(
                children:  [
                  const PromotionUserPpWidget(),
                  PromotionUserNameWidget(
                    usercity: userCity,
                    username: username,
                  ),
                ],
              ),
            ),
            AppSizedBox.h10,
            PromotionCommentWidget(
              text: text,
            )
          ],
        ),
      ),
    );
  }
}
