import 'package:flutter/material.dart';
import 'package:soe_shoes/data/data.dart';
import 'package:soe_shoes/screens/main/pages/favorite/widgets/favorite_product_widget.dart';
import 'package:soe_shoes/widgets/common_widget.dart';

import '../../../../models/product_model.dart';
import '../../../../widgets/product_info_widget.dart';
import '../../../product/product_detail_screen.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          ProductModel product = favoriteProducts[index];
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailScreen(product: product)));
              },
              child: FavoriteProductWidget(product: product));
        },
        itemCount: favoriteProducts.length,
      ),
    );
  }
}
