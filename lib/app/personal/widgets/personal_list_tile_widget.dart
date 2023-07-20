import 'package:flutter/material.dart';

import 'personal_top_widget.dart';

class PersonalListTileWidget extends StatelessWidget {
  final String topText;
  final String appDescription;
  final String profileImage;
  final String userDescription;
  const PersonalListTileWidget({
    super.key,
    required this.topText,
    required this.appDescription,
    required this.profileImage,
    required this.userDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PersonalTopWidget(
          appDescription: appDescription,
          topText: topText,
          profileImage: profileImage,
          userDescription: userDescription,
        ),
      ],
    );
  }
}
