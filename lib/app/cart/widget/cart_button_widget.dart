import 'package:flutter/material.dart';

import '../../../Widgets/global/global_button_widget.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../check/screens/check_screen.dart';

class CartButtonWidget extends StatelessWidget {
  const CartButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GlobalButtonWidget(
          text: AppText.check,
          color: AppColors.appBarColor,
          onPressed: () {
            dialog(context);
          },
        ),
      ],
    );
  }

  void dialog(context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Column(
            children: [
              const Text("Əminsiniz?"),
              AppSizedBox.h20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: GlobalButtonWidget(
                      onPressed: () {
                        AppNavigator.pop(context);
                      },
                      text: AppText.no,
                      color: AppColors.redColor,
                    ),
                  ),
                  AppSizedBox.w15,
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: GlobalButtonWidget(
                      onPressed: () {
                        AppNavigator.pop(context);

                        AppNavigator.go(
                          context,
                          const CheckScreen(),
                        );
                      },
                      text: AppText.yes,
                      color: AppColors.appBarColor,
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
