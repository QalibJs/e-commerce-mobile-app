import 'package:flutter/material.dart';

import '../widgets/profile_bottom_widget.dart';
import '../widgets/profile_top_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: const [
              ProfileTopWidget(),
              ProfileBottomWidget(),
            ],
          ),
        ),
      ],
    );
  }
}