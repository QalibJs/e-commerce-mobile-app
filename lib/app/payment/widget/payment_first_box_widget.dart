import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../../provider/payment_provider.dart';

class PaymentFirstBoxWidget extends StatelessWidget {
  const PaymentFirstBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    PaymentProvider paymenProvider = context.read<PaymentProvider>();
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      margin: AppPadding.lr12(),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColors.greyColor, width: 0.5),
      ),
      child: Column(
        children: [
          AppSizedBox.h20,
          Row(
            children: [
              AppSizedBox.w15,
              Text(
                AppText.payment,
                style: AppTextStyle.costStyle(),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  AppNavigator.pop(context);
                },
                child: Padding(
                  padding: AppPadding.lr12().copyWith(left: 0),
                  child: Text(
                    AppText.edit,
                    style: AppTextStyle.editStyle(),
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: AppPadding.t10().copyWith(top: 0, bottom: 20),
            child: Row(
              children: [
                AppSizedBox.w15,
                Container(
                  width: 30,
                  height: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAssets.visa),
                    ),
                  ),
                ),
                AppSizedBox.w10,
                Text(
                  "**** 1212",
                  style: AppTextStyle.costStyle(),
                ),
                const Spacer(),
                Padding(
                  padding: AppPadding.lr12().copyWith(left: 0),
                  child: Text(
                    paymenProvider.expCode.text.trim(),
                    style: AppTextStyle.orderNameStyle(),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
