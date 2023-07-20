import '../../../cubit/cart/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class OrderBoxBottomWidget extends StatelessWidget {
  final String image;
  final int index;
  const OrderBoxBottomWidget({
    super.key,
    required this.image,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    CartCubit cartCubit = context.read<CartCubit>();
    return Padding(
      padding: AppPadding.lrt18().copyWith(bottom: 12, top: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 22,
                height: 22,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.rolley),
                  ),
                ),
              ),
              AppSizedBox.w15,
              Text(
                "Kargoya verildi",
                style: AppTextStyle.kargoText(),
              ),
            ],
          ),
          AppSizedBox.h15,
          Container(
            width: 60,
            height: 90,
            decoration: BoxDecoration(
              color: AppColors.amber,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image),
              ),
            ),
          ),
          AppSizedBox.h10,
          Text(
            "${cartCubit.titleModel[index].count} məhsul göndərildi",
            style: AppTextStyle.simpleText(),
          )
        ],
      ),
    );
  }
}
