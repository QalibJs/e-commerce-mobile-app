import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_text.dart';

class PersonalModel {
  final String topText;
  final String profileImage;
  final String userDescription;
  final String fullName;
  final String gmailAddress;
  final String phoneNumber;
  final String appDescription;
  final IconData photografMachine;
  PersonalModel({
    required this.fullName,
    required this.gmailAddress,
    required this.phoneNumber,
    required this.topText,
    required this.profileImage,
    required this.userDescription,
    required this.appDescription,
    required this.photografMachine,
  });

  static List<PersonalModel> personalModel = [
    PersonalModel(
      topText: AppText.personalInformation,
      profileImage: AppAssets.userpp,
      appDescription:
          AppText.personalDescription,
      userDescription: AppText.ppDescription,
      photografMachine: Icons.photo_camera_outlined,
      fullName: AppText.fullName,
      gmailAddress: AppText.email,
      phoneNumber: AppText.phoneNumber,
    )
  ];
}
