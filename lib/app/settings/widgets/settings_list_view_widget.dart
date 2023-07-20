import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../data/model/settings_model.dart';
import '../../../provider/notification_provider.dart';
import '../../language/screen/language_screen.dart';
import '../../notification/screen/notification_screen.dart';
import 'settings_list_tile_widget.dart';

class SettingsListViewWidget extends StatelessWidget {
  const SettingsListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<SettingsModel> sideBarModel = SettingsModel.sidebarModel;

    NotificationProvider notificationProvider =
        context.watch<NotificationProvider>();

    Future<void> onRefresh() async {
      return await Future.delayed(const Duration(milliseconds: 700));
    }

    return Expanded(
      child: LiquidPullToRefresh(
        color: AppColors.whiteColor,
        backgroundColor: AppColors.appBarColor,
        springAnimationDurationInMilliseconds: 300,
        onRefresh: onRefresh,
        child: ListView.builder(
          itemCount: sideBarModel.length,
          itemBuilder: (context, index) {
            final settings = sideBarModel[index];
            return SettingsListTileWidget(
              isNotification: notificationProvider.notifications.isEmpty
                  ? false
                  : index == 3
                      ? true
                      : false,
              photo: settings.photo,
              onTap: () {
                if (index == 0) {
                  AppNavigator.go(context, const LanguageScreen());
                }
                if (index == 3) {
                  AppNavigator.go(context, const NotificationScreen());
                }
              },
              text: settings.description,
            );
          },
        ),
      ),
    );
  }
}
