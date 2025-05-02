import 'package:flutter/material.dart';
import 'package:shopper/common/widgets/brands/brand_showcase.dart';
import 'package:shopper/common/widgets/layouts/grid_layout.dart';
import 'package:shopper/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:shopper/common/widgets/texts/section_heading.dart';
import 'package:shopper/utils/constants/image_strings.dart';
import 'package:shopper/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
          /// - - - Brands
          TBrandShowcase(images: [
            TImages.product1,
            TImages.product2,
            TImages.product3,
          ],),
          const SizedBox(height: TSizes.spaceBtwItems,),
      
      
          /// - - - Products
          TSectionHeading(title: 'You Might Like', onPressed: (){},),
          const SizedBox(height: TSizes.spaceBtwItems,),
      
          /// - - - Display
          TGridLayout(itemCount: 4, itemBuilder: (_, index)=> TProductCardVertical(image: TImages.product3)),
          SizedBox(height: TSizes.spaceBtwSections,),
          
            ],
          ),
        ),
      ], 
    );
  }
}