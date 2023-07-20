import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../home/screens/home_screen.dart';

class OtpPinputWidget extends StatelessWidget {
  const OtpPinputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> globalKey = GlobalKey<FormState>();
    TextEditingController pinController = TextEditingController();
    FocusNode focusNode = FocusNode();
    PinTheme defaultPinTheme = const PinTheme();
    return Form(
      key: globalKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Directionality(
            // Specify direction if desired
            textDirection: TextDirection.ltr,
            child: Pinput(
              length: 6,
              controller: pinController,
              focusNode: focusNode,
              androidSmsAutofillMethod:
                  AndroidSmsAutofillMethod.smsUserConsentApi,
              listenForMultipleSmsOnAndroid: true,
              defaultPinTheme: PinTheme(
                width: 55,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(color: AppColors.blackColor),
                ),
              ),
              validator: (value) {
                if (value == "111111") {
                  return 'Pin yanlışdır, yenidən cəhd edin';
                } else if (value == "222222") {
                  return 'Pin yanlışdır, yenidən cəhd edin';
                } else if (value == "555555") {
                  return 'Pin yanlışdır, yenidən cəhd edin';
                } else if (value == "123456") {
                  return 'Pin yanlışdır, yenidən cəhd edin';
                } else {
                  AppNavigator.go(context, const HomeScreen());
                }
                return null;
              },
              // onClipboardFound: (value) {
              //   debugPrint('onClipboardFound: $value');
              //   pinController.setText(value);
              // },

              hapticFeedbackType: HapticFeedbackType.lightImpact,
              onCompleted: (pin) {
                debugPrint('onCompleted: $pin');
              },
              onChanged: (value) {
                debugPrint('onChanged: $value');
              },
              cursor: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 9),
                    width: 55,
                    height: 65,
                    color: AppColors.whiteColor,
                  ),
                ],
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.blackColor),
              )),
              submittedPinTheme: defaultPinTheme.copyWith(
                width: 55,
                height: 65,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.greenColor),
                ),
              ),
              errorPinTheme: PinTheme(
                width: 55,
                height: 65,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent),
                ),
              ),
            ),
          ),
          // TextButton(
          //   onPressed: () {
          //     focusNode.unfocus();
          //     globalKey.currentState!.validate();
          //   },
          //   child: const Text('Write pin!'),
          // ),
        ],
      ),
    );
  }
}
