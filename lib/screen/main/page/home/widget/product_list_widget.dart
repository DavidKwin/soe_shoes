import 'package:flutter/material.dart';

import '../../../../../data/data.dart';
import '../../../../../models/product_model.dart';
import '../../../../../widget/product_image.dart';

class ProductListWidget extends StatefulWidget {
  ProductListWidget({Key? key, required this.title, required this.products})
      : super(key: key);

  String title;
  List<ProductModel> products;

  @override
  State<ProductListWidget> createState() => _ProductListWidgetState();
}

class _ProductListWidgetState extends State<ProductListWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(left: 4,bottom: 16,right: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                Text(widget.title),
                const Text("See all")
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(widget.products.length, (index) {
              ProductModel product = popularProducts[index];
              return Container(
                  margin: EdgeInsets.only(
                      left: 16,
                      right: index == widget.products.length - 1 ? 16 : 0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ProductImagesWidget(product: product),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        product.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text("\$ ${product.price}")
                    ],
                  ));
            })),
          )
        ],
      ),
    );
  }
}
