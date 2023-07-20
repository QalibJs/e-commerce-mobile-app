import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../Widgets/global/global_button_widget.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text.dart';
import '../../../provider/onboard_provider.dart';
import '../../register/screens/register_screen.dart';

class ContinueOrFinishButton extends StatelessWidget {
  final bool isLast;
  final Function? onContinue;
  const ContinueOrFinishButton({
    super.key,
    required this.isLast,
    this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    OnboardProvider onboardprovider = context.read<OnboardProvider>();
    return Padding(
      padding: AppPadding.lrt88().copyWith(left: 0, right: 0),
      child: ValueListenableBuilder<Box>(
        valueListenable: Hive.box("onboard").listenable(),
        builder: (context, box, child) {
          return GlobalButtonWidget(
            color: AppColors.orangeColor,
            text: isLast ? AppText.finish : AppText.continueText,
            onPressed: () async {
              if (isLast) {
                onboardprovider.deleteOnboardScreen();
                AppNavigator.go(context, const RegisterScreen());
              } else {
                onContinue?.call();
              }
            },
          );
        },
      ),
    );
  }
}
