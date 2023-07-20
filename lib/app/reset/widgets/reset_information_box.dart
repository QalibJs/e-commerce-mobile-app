import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text_style.dart';

class ResetInformationBox extends StatelessWidget {
  const ResetInformationBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 190,
      margin: AppPadding.lrt24(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.orangeColor,
        ),
      ),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Padding(
            padding: AppPadding.lr12().copyWith(top: 8, bottom: 8),
            child: Column(
              children: [
                Text(
                  "Parolun sıfırlanması əvvəllər yaratdığınız hesab üçün yeni parolun dəyişdirilməsi və ya yaradılması prosesidir. Bu proses adətən parolunuzu unutduğunuzda, hesabınız sındırıldıqda və ya təhlükəsizlik səbəbi ilə parolunuzu dəyişmək istədiyiniz zaman başlayır.",
                  style: AppTextStyle.otpDescription(),
                ),
                Text(
                  "Parolunuzun sıfırlanması prosesi istifadə etdiyiniz platforma və ya xidmətdən asılı olaraq dəyişə bilər. Bununla belə, əksər veb-saytlar və proqramlar oxşar prosesə sahib olacaq.",
                  style: AppTextStyle.otpDescription(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
