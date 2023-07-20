import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class OtpDescriptionWidget extends StatelessWidget {
  const OtpDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: AppPadding.lrt24(),
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.orangeColor)),
      child: Padding(
        padding: AppPadding.lrt12().copyWith(bottom: 5),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Text(
              "OTP və ya birdəfəlik parol, birdəfəlik istifadə üçün yaradılan və adətən SMS, səsli zəng və ya push bildirişi vasitəsilə istifadəçinin mobil cihazına çatdırılan unikal koddur. Daha sonra istifadəçi şəxsiyyətini təsdiqləmək və proqramın xüsusiyyətlərinə giriş əldə etmək üçün proqramın OTP ekranına bu kodu daxil edir.",
              style: AppTextStyle.otpDescription(),
            ),
            AppSizedBox.h15,
            Text(
              "OTP yoxlanışı istifadəçilərin şəxsiyyətini təsdiqləmək üçün vebsaytlar, mobil proqramlar və digər rəqəmsal platformalar tərəfindən adətən istifadə edilən təhlükəsizlik xüsusiyyətidir. OTP və ya birdəfəlik parol, birdəfəlik istifadə üçün yaradılan və adətən SMS, səsli zəng və ya push bildirişi vasitəsilə istifadəçinin mobil cihazına çatdırılan unikal koddur. Daha sonra istifadəçi şəxsiyyətini təsdiqləmək və platformanın xüsusiyyətlərinə çıxış əldə etmək üçün platformanın OTP ekranına bu kodu daxil edir.",
              style: AppTextStyle.otpDescription(),
            )
          ],
        ),
      ),
    );
  }
}
