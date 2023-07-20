import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../../data/model/most_popular_model.dart';

class ShoppingMostPopular extends StatelessWidget {
  
  const ShoppingMostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    List<MostPopularModel> mostPopularModel =
        MostPopularModel.mostPopularModels; 
    return Column(
      children: [
        Container(
          margin: AppPadding.lr12(),
          child: Row(children: [
            Text(
              AppText.mostPopular,
              style: AppTextStyle.descriptionStyleB(),
            ),
            const Spacer(),
            Text(
              AppText.seeAll,
              style: AppTextStyle.simpleText(),
            )
          ]),
        ),
        SizedBox(
          height: 350,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: mostPopularModel.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final mstPopular = mostPopularModel[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: AppPadding.lrt12(),
                    width: 160,
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 0.68,
                        color: AppColors.greyBlue,
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(mstPopular.image),
                      ),
                    ),
                  ),
                  Padding(
                    padding: AppPadding.lrt12().copyWith(
                      left: 14,
                      right: 14,
                    ),
                    child: Text(
                      mstPopular.title,
                      style: AppTextStyle.costStyle(),
                    ),
                  ),
                  Padding(
                    padding: AppPadding.lrt12().copyWith(
                      top: 6,
                      left: 14,
                      right: 14,
                    ),
                    child: Text(
                      mstPopular.price,
                      style: AppTextStyle.simpleOrderText(),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
