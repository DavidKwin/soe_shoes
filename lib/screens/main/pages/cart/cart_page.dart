import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:soe_shoes/models/product_model.dart';

import '../../../../data/data.dart';
import 'widgets/cart_item_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (context, index) {
                ProductModel product = products[index];
                return CartItemWidget(product: product);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            )
          ],
        ));
  }
}
