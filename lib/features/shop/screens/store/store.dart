import 'package:flutter/material.dart';
import 'package:shopper/common/widgets/appbar/appbar.dart';
import 'package:shopper/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopper/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopper/common/widgets/images/circular_image.dart';
import 'package:shopper/common/widgets/layouts/grid_layout.dart';
import 'package:shopper/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:shopper/common/widgets/texts/brand_title_verified_icon.dart';
import 'package:shopper/common/widgets/texts/section_heading.dart';
import 'package:shopper/utils/constants/colors.dart';
import 'package:shopper/utils/constants/enums.dart';
import 'package:shopper/utils/constants/image_strings.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'package:shopper/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCartCounterIcon(onPressed: (){}),
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled){
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
            expandedHeight: 440,

            flexibleSpace: Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  /// - - - SEARCH BAR
                  SizedBox(height: TSizes.spaceBtwItems,),
                  TSearchContainer(text: 'Search Store', showBorder: true, padding: EdgeInsets.zero,),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  /// - - - FEATURED BRANDS
                  TSectionHeading(title: 'Featured Brands', onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwItems/1.5,),

                  TGridLayout(
                    itemCount: 4, 
                    mainAxisExtent: 80,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                    onTap: (){},
                    child: TRoundedContainer(
                      padding:const EdgeInsets.all(TSizes.sm),
                      showBorder: true,
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
                    );}, 
                ),],
              ),
            ),
          ),
        ];
      }, body: Container()),
    );
  }
}

