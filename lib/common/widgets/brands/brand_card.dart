import 'package:flutter/material.dart';
import 'package:shopper/utils/constants/enums.dart';
import 'package:shopper/utils/constants/image_strings.dart';
import 'package:shopper/utils/constants/sizes.dart';

import '../custom_shapes/containers/rounded_container.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_verified_icon.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.showborder = true,
  });

  final bool showborder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                        onTap: (){},
                        child: TRoundedContainer(
    padding:const EdgeInsets.all(TSizes.sm),
    showBorder: showborder,
    backgroundColor: Colors.transparent,
    child: Row(
      children: [
        /// - - - ICON
        Flexible(child: TCircularImage(
          isNetworkImage: false,
          image: TImages.iconClothes,
          )),
                        
        const SizedBox(width: TSizes.spaceBtwItems/2,),
                        
        /// - - - TEXT 
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerificationIcon(title: 'Sound', brandTextSize: TextSizes.medium,),
              Text('256 Products', overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          )
        ),],
      ),
    ),
    );
  }
}
