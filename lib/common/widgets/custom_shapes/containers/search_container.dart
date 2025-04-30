import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopper/utils/constants/colors.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'package:shopper/utils/device/device_utility.dart';
import 'package:shopper/utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key, 
    required this.text, 
    this.icon = Iconsax.search_normal, 
    this.showBackGround = false, 
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackGround, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  TSizes.defaultSpace),
        child: Container(
          width: TDeviceUtilities.getScreenHeight(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackGround ? dark ? TColors.black : TColors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg * 2),
            border: showBorder? Border.all(color: TColors.grey) : null,
          ),
      
          child: Row(
            children: [
              Icon(icon, color: TColors.grey),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
      
        ),
      ),
    );
  }
}