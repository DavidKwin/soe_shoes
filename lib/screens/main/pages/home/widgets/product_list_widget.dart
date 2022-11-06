import 'package:flutter/material.dart';

import '../../../../../data/data.dart';
import '../../../../../models/product_model.dart';
import '../../../../../widgets/product_image_widget.dart';
import '../../../../../widgets/product_info_widget.dart';

class ProductListWidget extends StatelessWidget {
  ProductListWidget({Key? key, required this.title, required this.products})
      : super(key: key);

  String title;
  List<ProductModel> products;

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
              ProductModel product = popularProducts[index]; // 0,1,2,3,  4 -1
              return Container(
                margin: EdgeInsets.only(
                    left: 16, right: index == products.length - 1 ? 16 : 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 120,
                        width: 120,
                        child: ProductImageWidget(product: product)),

                   ProductInfoWidget(product: product)
                  ],
                ),
              );
            })),
          )
        ],
      ),
    );
  }
}


