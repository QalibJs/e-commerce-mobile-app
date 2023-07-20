import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_text_style.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: AppPadding.lrt18().copyWith(top: 4),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Row(
                        children: [
                          Text(
                            "Name :",
                            style: AppTextStyle.descriptionStyleB(),
                          ),
                          const Spacer(),
                          Text(
                            "${FirebaseAuth.instance.currentUser!.email}",
                            style: AppTextStyle.costStyle(),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
