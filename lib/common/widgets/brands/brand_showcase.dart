import 'package:flutter/material.dart';
import 'package:shopper/utils/constants/colors.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'package:shopper/utils/helpers/helper_functions.dart';

import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column( children: [
        /// - - - BRAND WITH PRODUCTS
        const TBrandCard(showborder: false,),
        /// - - - BRAND TOP 3 PRODUCTS IMAGES
        Row(
          children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
        ),
      ],),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
            child: TRoundedContainer(
              height: 120,
              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkGrey : TColors.light,
              margin: const EdgeInsets.only(right: TSizes.sm),
              padding: const EdgeInsets.all(TSizes.sm),
              child: Image(fit: BoxFit.contain, image: AssetImage(image),),
            ),
    );
  }

}