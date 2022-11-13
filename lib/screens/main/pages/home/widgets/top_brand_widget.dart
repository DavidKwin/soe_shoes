import 'package:flutter/material.dart';

import '../../../../../constants/my_style.dart';
import '../../../../../data/data.dart';
import '../../../../../models/brand_model.dart';

class TopBrandWidget extends StatelessWidget {
  const TopBrandWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Brand",
            style: Theme.of(context).textTheme.subtitle1!,
          ),
          const SizedBox(
            height: 16,
          ),
          GridView.count(
            crossAxisCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisSpacing: 20,
            childAspectRatio: 1,
            children: List.generate(topBrands.length, (index) {
              BrandModel brand = topBrands[index];
              return Container(
                padding: const EdgeInsets.all(8),
                decoration: greyBoxDecoration,
                child: Center(
                  child: Image.asset(brand.image),
                ),
              );
            }), // 4 => 0,1,2,3 index model => widget
          ),
        ],
      ),
    );
  }
}
