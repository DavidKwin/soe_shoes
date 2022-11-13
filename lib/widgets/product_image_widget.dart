import 'package:flutter/material.dart';

import '../constants/my_style.dart';
import '../models/product_model.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: greyBoxDecoration,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Hero(tag: product.id, child: Image.asset(product.image)),
          Positioned(
            right: 8,
            top: 8,
            child: Icon(
              product.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: product.isFavorite ? Colors.pinkAccent : Colors.grey,
              size: 20,
            ),
          ),
          Positioned(
            right: 4,
            bottom: 4,
            child: Image.asset(
              product.brandImage,
              height: 32,
              width: 32,
            ),
          ),
        ],
      ),
    );
  }
}
