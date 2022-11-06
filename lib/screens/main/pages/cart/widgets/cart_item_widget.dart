import 'package:flutter/material.dart';

import '../../../../../models/product_model.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: CartProductImageWidget(product: product),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            flex: 3,
            child: CartProductInfoWidget(product: product),
          )
        ],
      ),
    );
  }
}

class CartProductInfoWidget extends StatelessWidget {
  const CartProductInfoWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: const TextStyle(
              fontWeight: FontWeight.w600, fontSize: 16),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("\$ ${product.price}"), const Text('X1')],
        )
      ],
    );
  }
}

class CartProductImageWidget extends StatelessWidget {
  const CartProductImageWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Color(0xFFEDEDED)),
      child: Image.asset(product.image),
    );
  }
}
