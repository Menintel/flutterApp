import 'package:flutter/material.dart';
import 'package:shopper/common/widgets/appbar/appbar.dart';
import 'package:shopper/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopper/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:shopper/common/widgets/texts/section_heading.dart';
import 'package:shopper/utils/constants/colors.dart';
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

                  
                ],
              ),
              ),
          ),
        ];
      }, body: Container()),
    );
  }
}