import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class PersonalTopWidget extends StatelessWidget {
  final String topText;
  final String appDescription;
  final String profileImage;
  final String userDescription;
  const PersonalTopWidget({
    super.key,
    required this.topText,
    required this.appDescription,
    required this.profileImage,
    required this.userDescription,
  });

  @override
  Widget build(BuildContext context) {
    // File? _image;
    // Future _pickImage(ImageSource source) async {
    //   final image = await ImagePicker().pickImage(source: source);
    // }

    return Container(
      width: MediaQuery.of(context).size.width,
      margin: AppPadding.lrt24(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                topText,
                textAlign: TextAlign.start,
                style: AppTextStyle.bigText(),
              ),
            ],
          ),
          AppSizedBox.h15,
          Text(
            appDescription,
            style: AppTextStyle.personalDescriptions(),
          ),
          AppSizedBox.h30,
          SizedBox(
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(profileImage),
                    ),
                  ),
                ),
                AppSizedBox.w10,
                SizedBox(
                  width: 200,
                  height: 60,
                  child: Text(
                    userDescription,
                    style: AppTextStyle.personalUserDescriptions(),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: AppColors.purpleColor),
                    child: Icon(
                      Icons.photo_camera,
                      color: AppColors.whiteColor,
                      size: 40,
                    ),
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
