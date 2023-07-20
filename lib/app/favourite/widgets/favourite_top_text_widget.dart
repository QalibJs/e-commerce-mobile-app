import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';

class FavouriteTopTextWidget extends StatelessWidget {
  const FavouriteTopTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppPadding.lrt24().copyWith(top: 0, left: 20, right: 0),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Row(
        children: [
          Text(
            AppText.wshList,
            style: AppTextStyle.bigText(),
          ),
          const Spacer(),
          Container(
            margin: AppPadding.lrt24().copyWith(top: 0),
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.wsh,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
