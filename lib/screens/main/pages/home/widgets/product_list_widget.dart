import 'package:flutter/material.dart';
import 'package:soe_shoes/screens/product/product_detail_screen.dart';

import '../../../../../data/data.dart';
import '../../../../../models/product_model.dart';
import '../../../../../widgets/product_image_widget.dart';
import '../../../../../widgets/product_info_widget.dart';

class ProductListWidget extends StatelessWidget {
  ProductListWidget({Key? key, required this.title, required this.products})
      : super(key: key);

  String title;
  List<ProductModel> products; //popular, new arrival

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(title), Text('See All')],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(products.length, (index) {
              ProductModel product = products[index]; // 0,1,2,3,  4 -1
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailScreen(product: product)));
                },
                child: HomeProductWidget(
                  product: product,
                  rightPadding: index == (products.length - 1) ? 16 : 0,
                ),
              );
            })),
          )
        ],
      ),
    );
  }
}

class HomeProductWidget extends StatelessWidget {
  const HomeProductWidget({
    Key? key,
    required this.product,
    required this.rightPadding,
  }) : super(key: key);

  final ProductModel product;
  final double rightPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136,
      margin: EdgeInsets.only(left: 16, right: rightPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 120,
              child: ProductImageWidget(product: product)),
          ProductInfoWidget(product: product)
        ],
      ),
    );
  }
}
