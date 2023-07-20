import '../../constants/app_text.dart';
import '../../cubit/password/password_cubit.dart';

class InformationModel {
  final String title;
  final String subtitle;

  InformationModel(
    this.title,
    this.subtitle,
  );
  PasswordCubit passwordCubit(context) => context.read<PasswordCubit>();
  static List<InformationModel> informationModel = [
    InformationModel(AppText.fullName, ""),
    InformationModel(AppText.email, ""),
    InformationModel(AppText.phoneNumber, "")
  ];
}
