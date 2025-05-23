
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopper/common/styles/shadows.dart';
import 'package:shopper/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopper/common/widgets/images/rounded_image.dart';
import 'package:shopper/common/widgets/texts/product_price.dart';
import 'package:shopper/utils/constants/colors.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'package:shopper/utils/helpers/helper_functions.dart';
import '../../icons/circular_icon.dart';
import '../../texts/brand_title_verified_icon.dart';
import '../../texts/product_title.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({
    super.key,
    required this.image,
    });

  final String image;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: null,
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.black : TColors.white,
        ),
        child: Column(
          children: [
            /// - - - ThumbNail
            TRoundedContainer(
              height: 200,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.black : TColors.white,
              child: Stack(
                children: [
                  /// - - - THUMBNAIL IMAGE
                  TRoundedImage(imageUrl: image),
      
                  /// - - - SALE TAG
                  Positioned(
                    top: 3,
                    left: 3,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: Color.fromRGBO(255, 226, 75, 0.8),
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color : TColors.black)),
                    ),
                  ),
                  /// - - - FAVOURITE ICON BUTTON
                  Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
                    ),
      
                ],
              ),
            ),
            //const SizedBox(height: TSizes.spaceBtwItems/2),
      
            /// - - - Details
            Padding(padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                TProductTitleText( title: 'Green Nike TShirt',),
                SizedBox(height: TSizes.spaceBtwItems/2,),
                TBrandTitleWithVerificationIcon(title: 'Nike',),
                
              ],),
            ),

            const Spacer(),

            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                  /// - - - PRICE 
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.sm),
                    child: const TProductPriceText(price : '100.0'),
                  ),

                  /// - - - ADD TO CART BUTTON
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0), borderRadius: BorderRadius.only(topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight: Radius.circular(TSizes.productImageRadius), 
                      ),
                    ),
                    child: SizedBox(
                      width: TSizes.iconLg,
                      height: TSizes.iconLg,
                      child: Center(child: Icon(Iconsax.add, color: TColors.white))
                      ),
                    ),  
                  ],
                ),
          ],
        ),
      ),
    );
  }
}






