import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../../provider/notification_provider.dart';
import '../../../widgets/global/global_button_widget.dart';
import '../../notification/widget/notification_widget.dart';

class PaymentButtonWidget extends StatelessWidget {
  final dynamic product;
  const PaymentButtonWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NotificationProvider notificationProvider =
        context.watch<NotificationProvider>();
    return GlobalButtonWidget(
      onPressed: () {
        dialogBox(context);
        notificationProvider.addNotifications(
          const NotificationBoxWidget(
            notification: "sifarişlərə bir məhsul əlavə edildi",
          ),
        );
      },
      text: AppText.submitOrder,
      color: AppColors.blackColor,
    );
  }

  void dialogBox(context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColors.greenBlueColor,
                    width: 1.5,
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    size: 40,
                    color: AppColors.greenBlueColor,
                  ),
                ),
              ),
              AppSizedBox.h10,
              Text(
                "Biz bunun üzərindəyik!",
                style: AppTextStyle.descriptionStyleB(),
              ),
              AppSizedBox.h10,
              Text(
                "Ödənişiniz alındı ​​və sifarişinizin vəziyyəti ilə bağlı bildirişlər alacaqsınız",
                style: AppTextStyle.simpleOrderText(),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
