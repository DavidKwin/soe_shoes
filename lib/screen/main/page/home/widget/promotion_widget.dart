import 'package:flutter/material.dart';

import '../../../../../constants/my_images.dart';

class PromotionBannerWidget extends StatelessWidget {
  const PromotionBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          child: Image.asset(promotionBanner)),
    );
  }
}