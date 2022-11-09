import 'package:flutter/material.dart';

import '../../../../../data/data.dart';
import '../../../../../models/brand_model.dart';

class TopBrandWidget extends StatelessWidget {
  const TopBrandWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Top Brand"),

          const SizedBox(height: 16,),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            shrinkWrap: true,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
            children: List.generate(topBrands.length, (index)
            {
              BrandModel brand = topBrands[index];
              return Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Color(0xFFDEDEDE),
                ),

                child: Center(
                  child: Image.asset(brand.image),

                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
