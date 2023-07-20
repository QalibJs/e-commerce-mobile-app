import 'package:flutter/material.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class LanguageListTileWidget extends StatelessWidget {
  final String language;
  final String flag;
  final Color color;
  final void Function() onTap;
  const LanguageListTileWidget({
    Key? key,
    required this.language,
    required this.flag,
    required this.onTap, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.lrt12().copyWith(left: 4, right: 4),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          decoration: BoxDecoration(
            color: color
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppSizedBox.w5,
              Container(
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(flag),
                  ),
                ),
              ),
              AppSizedBox.w5,
              Text(
                language,
                style: AppTextStyle.costStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
