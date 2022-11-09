import 'package:flutter/material.dart';
import 'package:soe_shoes/screen/main/page/cart_page.dart';
import 'package:soe_shoes/screen/main/page/favorite_page.dart';
import 'package:soe_shoes/screen/main/page/home/home_page.dart';
import 'package:soe_shoes/screen/main/page/parson_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex = 0;
  PageController pageController= PageController(initialPage: 0);
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
        backgroundColor: Colors.white,
        title: const Text("Shooping",
          style: TextStyle(color: Colors.redAccent),),
        elevation: 0,
        actions: [TextButton(onPressed: (){}, child: const Icon(Icons.notifications,color: Colors.black,))],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          HomePage(),
          CartPage(),
          FavoritePage(),
          ParsonPage(),




        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            pageController.jumpToPage(index);
            setState(() {
              pageController.animateToPage(index,
                  duration: const Duration(microseconds: 350), curve: Curves.easeIn);
            });



          });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded), label: "cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "person")
        ],

      ),

    );
  }
}
