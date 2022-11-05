import 'package:flutter/material.dart';
import 'package:soe_shoes/models/product_model.dart';

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
                ProductModel product = products[index];
                return Container(
                  height: 100,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                              color: Color(0xFFEDEDED)),
                          child: Image.asset(product.image),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text("\$ ${product.price}"), Text('X1')],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            )
          ],
        ));
  }
}
