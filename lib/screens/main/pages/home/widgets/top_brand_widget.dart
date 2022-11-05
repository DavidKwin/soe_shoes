import 'package:flutter/material.dart';

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
          const Text("Top Brand"),
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
                decoration: const BoxDecoration(
                    color: Color(0xFFEDEDED),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
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
