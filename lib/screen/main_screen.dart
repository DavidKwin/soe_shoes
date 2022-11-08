import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {

  int _selectedIndex = 0;
  PageController controller= PageController(initialPage: 0);
 @override
  void initState() {
    controller.addListener(() { });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shooping"),
      ),
      body: PageView(
        controller: controller,
        children: [
          Container(
            color: Colors.red,
            child: Icon(Icons.home),
          ),
          Container(
            color: Colors.yellow,
            child: Icon(Icons.shopping_cart_sharp),
          ),
          Container(
            color: Colors.green,
            child: Icon(Icons.favorite),
          ),

          Container(
            color: Colors.blue,
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            controller.jumpToPage(index);

          });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded), label: "cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "home")
        ],
      ),
    );
  }
}
