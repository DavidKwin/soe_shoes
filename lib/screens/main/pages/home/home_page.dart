import 'package:flutter/material.dart';
import 'package:soe_shoes/models/brand_model.dart';
import 'package:soe_shoes/models/product_model.dart';

import '../../../../data/data.dart';
import '../../../../widgets/common_widget.dart';
import 'home_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchWidget(),
            PromotionBannerWidget(),
            TopBrandWidget(),
            ProductListWidget(title: 'Popular', products: popularProducts,),
            Divider(),
            ProductListWidget(title: 'New Arrival', products: newArrivalProducts,),
          ],
        ),
      ),
    );
  }
}


