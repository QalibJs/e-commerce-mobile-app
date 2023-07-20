import 'package:flutter/material.dart';

import '../../../data/model/onboard_model.dart';

class ImageBoxWidget extends StatelessWidget {
  final OnboardModel promotionModel;
  const ImageBoxWidget({super.key, required this.promotionModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            promotionModel.imageUrl,
          ),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
