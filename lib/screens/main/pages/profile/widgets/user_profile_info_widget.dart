import 'package:flutter/material.dart';

class UserProfileInfoWidget extends StatelessWidget {
  const UserProfileInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              "assets/images/user_profile.png",
              height: 80,
              width: 80,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Aung Yin",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            "aungyin123@gmail.com",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
