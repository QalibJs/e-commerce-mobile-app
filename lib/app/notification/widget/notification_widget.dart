import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class NotificationBoxWidget extends StatelessWidget {
  final String notification;
  const NotificationBoxWidget({
    super.key,
    required this.notification,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.lrt12(),
      child: SizedBox(
        height: 60,
        child: Card(
          clipBehavior: Clip.hardEdge,
          borderOnForeground:false,
          elevation: 38,
          child: Row(
            children: [
              AppSizedBox.w5,
              Text(
                notification,
                style: AppTextStyle.haveAccount(),
              ),
              const Spacer(),
              Padding(
                padding: AppPadding.lr12().copyWith(left: 0),
                child: Icon(
                  Icons.notifications_on_outlined,
                  size: 30,
                  color: AppColors.greyHardBlue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
