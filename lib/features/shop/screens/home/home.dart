import 'package:flutter/material.dart';
import 'package:shopper/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopper/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopper/common/widgets/layouts/grid_layout.dart';
import 'package:shopper/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:shopper/common/widgets/texts/section_heading.dart';
import 'package:shopper/utils/constants/image_strings.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// - - - APP BAR
                  const THomeAppbar(),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  /// - - - SEARCH BAR
                  TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  /// - - - CATEGORIES
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white,),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        /// - - - CATEGORIES
                        const THomeCategories(),
                      ],
                    ),
                  ),
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner4,
                  ],),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  /// - - - HEADING 
                  TSectionHeading(title: 'Popular Products', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  /// - - - POPULAR PRODUCTS - - -
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => TProductCardVertical(image : TImages.product1)),
                  //TProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





