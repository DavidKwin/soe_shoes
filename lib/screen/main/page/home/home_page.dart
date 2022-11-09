import 'package:flutter/material.dart';
import 'package:soe_shoes/data/data.dart';

import 'home_widget.dart';
import 'widget/product_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SearchWidget(),
            const PromotionBannerWidget(),
            const TopBrandWidget(),
            ProductListWidget(title: 'Popular',products: popularProducts,),
            const Divider(),
            ProductListWidget(title: 'New Arrival',products: newArrivalProducts,)




          ],
        ),
      ),
    );
  }
}


