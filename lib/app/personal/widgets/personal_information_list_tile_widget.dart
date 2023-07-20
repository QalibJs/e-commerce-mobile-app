import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text_style.dart';

class PersonalInformationsWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const PersonalInformationsWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.lrt24().copyWith(top: 6),
      child: Card(
        elevation: 4,
        shadowColor: AppColors.purpleColor,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 85,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: AppPadding.lrt12(),
                child: Text(
                  title,
                  style: AppTextStyle.personalTitles(),
                ),
              ),
              Padding(
                padding: AppPadding.lrt12(),
                child: Text(
                  subtitle,
                  style: AppTextStyle.personalSimpleText(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
