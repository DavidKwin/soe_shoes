import 'package:flutter/material.dart';

import 'widgets/profile_menu_widget.dart';
import 'widgets/user_profile_info_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          UserProfileInfoWidget(),
          ProfileMenuWidget(),
        ],
      ),
    );
  }
}
