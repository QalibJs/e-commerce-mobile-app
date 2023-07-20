import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Widgets/global/global_button_widget.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';
import '../../../cubit/image/image_picker_cubit.dart';

class ProfileTopWidget extends StatelessWidget {
  const ProfileTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ImagePickerProvider imageProvider = context.watch<ImagePickerProvider>();
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AppColors.blackBlueColor,
      child: Column(
        children: [
          Container(
            margin: AppPadding.lrt24().copyWith(top: 16),
            child: Row(
              children: [
                Text(
                  "Profile",
                  style: AppTextStyle.whiteText(),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Container(
                            color: AppColors.whiteColor,
                            child: Column(
                              children: [
                                GlobalButtonWidget(
                                  onPressed: () {
                                    imageProvider.selectImage();
                                    AppNavigator.pop(context);
                                  },
                                  text: "Şəkil Çəkin",
                                  color: AppColors.blackBlueColor,
                                ),
                                AppSizedBox.h30,
                                GlobalButtonWidget(
                                  onPressed: () {
                                    imageProvider.pickImage();
                                    AppNavigator.pop(context);
                                  },
                                  text: "Şəkil seçin",
                                  color: AppColors.blackBlueColor,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: AppColors.whiteColor),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.more_vert,
                      size: 30,
                      color: AppColors.whiteColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          AppSizedBox.h30,
          imageProvider.image != null
              ? ClipOval(
                  child: Image.file(
                    imageProvider.image!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                )
              : Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    border: Border.all(
                      width: 1.5,
                      color: AppColors.simpleBlueColor,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.person,
                    color: AppColors.whiteColor,
                    size: 45,
                  ),
                ),
          AppSizedBox.h20,
          Text(
            FirebaseAuth.instance.currentUser!.email == null
                ? "eqalan.63@gmail.com"
                : "${FirebaseAuth.instance.currentUser!.email}",
            style: AppTextStyle.whiteText2(),
          )
          // Text("${FirebaseAuth.instance.currentUser!.phoneNumber}"),
        ],
      ),
    );
  }
}
