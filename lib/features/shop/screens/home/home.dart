import 'package:flutter/material.dart';
import 'package:shopper/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopper/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopper/common/widgets/texts/section_heading.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

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
          ],
        ),
      ),
    );
  }
}


