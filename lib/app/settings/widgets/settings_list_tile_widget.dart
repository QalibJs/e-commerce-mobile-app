import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';
import '../../../provider/notification_provider.dart';

class SettingsListTileWidget extends StatelessWidget {
  final String photo;
  final String text;
  final bool? isNotification;
  final void Function()? onTap;
  const SettingsListTileWidget({
    Key? key,
    required this.photo,
    required this.text,
    this.onTap,
    this.isNotification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NotificationProvider notificationProvider =
        context.read<NotificationProvider>();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppColors.transparentColor,
        child: Row(
          children: [
            AppSizedBox.w5,
            Container(
              width: 50,
              height: 50,
              margin: AppPadding.t30(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(
                    photo,
                  ),
                ),
              ),
            ),
            AppSizedBox.w25,
            Padding(
              padding: AppPadding.t30(),
              child: Text(
                text,
                style: AppTextStyle.costStyle(),
              ),
            ),
            const Spacer(),
            Padding(
              padding: AppPadding.t30(),
              child: isNotification!
                  ? Container(
                      width: 35,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.redColor,
                      ),
                      child: Center(
                        child: Text(
                          "${notificationProvider.notifications.length}",
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
            Padding(
              padding: AppPadding.t30(),
              child: const Icon(
                Icons.navigate_next,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
