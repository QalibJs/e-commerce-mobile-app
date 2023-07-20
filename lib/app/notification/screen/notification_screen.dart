import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text.dart';
import '../../../provider/notification_provider.dart';
import '../widget/notification_clear_button_widget.dart';
import '../widget/notification_empty_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> onRefresh() async {
      return await Future.delayed(const Duration(milliseconds: 700));
    }

    NotificationProvider notificationProvider =
        context.watch<NotificationProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.greyHardBlue,
        centerTitle: true,
        title: Text(
          AppText.notifications,
        ),
      ),
      body: notificationProvider.notifications.isEmpty
          ? const NotificationEmptyWidget()
          : LiquidPullToRefresh(
              color: AppColors.whiteColor,
              backgroundColor: AppColors.simpleBlueColor,
              springAnimationDurationInMilliseconds: 300,
              onRefresh: onRefresh,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 150,
                    child: ListView.builder(
                      itemCount: notificationProvider.notifications.length,
                      itemBuilder: (context, index) {
                        final notificationWidget =
                            notificationProvider.notifications[index];
                        return notificationWidget;
                      },
                    ),
                  ),
                  const NotificationClearButtonWidget(),
                ],
              ),
            ),
    );
  }
}
