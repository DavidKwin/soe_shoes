import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductImagesWidget extends StatelessWidget {
  const ProductImagesWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color(0xFFEDEDED),
            borderRadius:
            BorderRadius.all(Radius.circular(16))),
        child: Stack(fit: StackFit.expand, children: [
          Image.asset(product.image),
          Positioned(
            right: 8,
            top: 8,
            child: Icon(
              product.isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: product.isFavorite?Colors.pink:Colors.grey,
              size: 20,
            ),
          ),
          Positioned(
              height: 32,
              width: 32,
              right: 4,
              bottom: 4,
              child: Image.asset(product.brandImage))
        ]));
  }
}