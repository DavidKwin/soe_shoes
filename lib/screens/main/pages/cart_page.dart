import 'package:flutter/material.dart';

import '../../../data/data.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Container();
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            )
          ],
        ));
  }
}
