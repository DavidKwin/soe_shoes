import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:soe_shoes/screens/login/login_screen.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const ListTile(
            leading: Icon(Icons.person),
            title: Text("My Profile"),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.menu),
            title: Text("Order List"),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.history),
            title: Text("Browse History"),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.discount),
            title: const Text("My Coupons"),
            trailing: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
                height: 28,
                width: 28,
                child: const Text(
                  "12",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Purchase History"),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              QuickAlert.show(
                  context: context,
                  type: QuickAlertType.confirm,
                  text: "Do you want to logout",
                  onConfirmBtnTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                        (Route<dynamic> route) => false);
                  });
            },
          ),
        ],
      ),
    );
  }
}
