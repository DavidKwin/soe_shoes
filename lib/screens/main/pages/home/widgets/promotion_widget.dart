import 'package:flutter/material.dart';

import '../../../../../constants/my_images.dart';

class PromotionBannerWidget extends StatelessWidget {
  const PromotionBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 16),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          child: Image.asset(promotionImage)),
    );
  }
}
