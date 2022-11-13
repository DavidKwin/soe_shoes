import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:soe_shoes/screens/main/main_screen.dart';

import '../../constants/my_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MainScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SlideInDown(
                duration: const Duration(milliseconds: 300),
                child: Image.asset(
                  appLogo,
                  height: 120,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Soe Shoes',
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
