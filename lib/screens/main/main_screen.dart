import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soe_shoes/screens/main/pages/cart/cart_page.dart';
import 'package:soe_shoes/screens/main/pages/favorite/favorite_page.dart';
import 'package:soe_shoes/screens/main/pages/home/home_page.dart';
import 'package:soe_shoes/screens/main/pages/profile/profile_page.dart';

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
      appBar: AppBar(
        title: const Text(
          "Soe Shoe",
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: SvgPicture.asset(notificationIcon, color: Theme.of(context).colorScheme.onPrimary),
            onPressed: () {},
          )
        ],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [HomePage(), CartPage(), FavoritePage(), ProfilePage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            pageController.animateToPage(index,
                duration: const Duration(
                  milliseconds: 500,
                ),
                curve: Curves.easeIn);
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                homeIcon,
                color: _selectedIndex == 0 ? Colors.black : Colors.grey,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                cartIcon,
                color: _selectedIndex == 1 ? Colors.black : Colors.grey,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                favoriteIcon,
                color: _selectedIndex == 2 ? Colors.black : Colors.grey,
              ),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                profileIcon,
                color: _selectedIndex == 3 ? Colors.black : Colors.grey,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
