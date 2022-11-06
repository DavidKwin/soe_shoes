import 'package:flutter/material.dart';

import '../../../../../models/product_model.dart';
import '../../../../../widgets/product_image_widget.dart';
import '../../../../../widgets/product_info_widget.dart';

class FavoriteProductWidget extends StatelessWidget {
  const FavoriteProductWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(child: ProductImageWidget(product: product)),
        ProductInfoWidget(product: product)
      ],
    );
  }
}