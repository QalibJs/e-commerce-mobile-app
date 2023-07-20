import 'package:flutter/material.dart';

import '../../../data/model/promotion_comments_model.dart';
import 'promotion_third_list_tile_widget.dart';

class PromotionThirListViewWidget extends StatelessWidget {
  const PromotionThirListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<PromotionUsersModel> promotionCommentsModels =
        PromotionUsersModel.promotionCommentsModel;
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: promotionCommentsModels.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final promotionUserModel = promotionCommentsModels[index];
          return PromotionThirdListTileWidget(
            text:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only .",
            userCity: promotionUserModel.userCity,
            username: promotionUserModel.userName,
          );
        },
      ),
    );
  }
}
