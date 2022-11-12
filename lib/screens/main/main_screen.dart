import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soe_shoes/screens/main/pages/cart/cart_page.dart';
import 'package:soe_shoes/screens/main/pages/favorite/favorite_page.dart';
import 'package:soe_shoes/screens/main/pages/home/home_page.dart';
import 'package:soe_shoes/screens/main/pages/profile/person_page.dart';

import '../../constants/my_images.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        _selectedIndex = pageController.page!.floor();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Soe Shoe",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon:SvgPicture.asset(notificationIcon, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [HomePage(), CartPage(), FavoritePage(), PersonPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            pageController.animateToPage(index,
                duration: const Duration(
                  milliseconds: 350,
                ),
                curve: Curves.easeIn);
          });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(homeIcon),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(cartIcon),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(favoriteIcon),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(profileIcon),
              label: 'Profile'),
        ],
      ),
    );
  }
}
