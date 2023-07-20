import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/onboard/onboard_cubit.dart';
import '../../../data/model/onboard_model.dart';
import 'full_promotion_widget.dart';
import 'image_box_widget.dart';

class OnboardWidget extends StatelessWidget {
  const OnboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardCubit promotionCubit = context.read<OnboardCubit>();

    return Stack(
      children: [
        PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: promotionCubit.controller,
          itemCount: OnboardModel.promotionModel.length,
          itemBuilder: (context, index) {
            OnboardModel promotion = OnboardModel.promotionModel[index];
            return ImageBoxWidget(promotionModel: promotion);
          },
        ),
        const Positioned(
          bottom: 0,
          child: PromotionWidget(),
        ),
      ],
    );
  }
}
