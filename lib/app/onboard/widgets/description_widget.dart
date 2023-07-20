import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';
import '../../../cubit/onboard/onboard_cubit.dart';
import '../../../data/model/onboard_model.dart';
import 'bloc_builder_for_buttons.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardCubit, int>(
      builder: (context, state) {
        OnboardModel promotionModel = OnboardModel.promotionModel[state];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: AppPadding.lrt24().copyWith(top: 0),
              child: Text(
                promotionModel.title,
                textAlign: TextAlign.center,
                style: AppTextStyle.descriptionStyleB(),
              ),
            ),
            AppSizedBox.h20,
            Text(
              promotionModel.title2,
              textAlign: TextAlign.center,
              style: AppTextStyle.descriptionStyleS(),
            ),
            BlocBuilderForButtonWidget(index: state),
          ],
        );
      },
    );
  }
}
