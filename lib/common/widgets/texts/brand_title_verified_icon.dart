import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopper/utils/constants/colors.dart';
import 'package:shopper/utils/constants/enums.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'brand_title_text.dart';

class TBrandTitleWithVerificationIcon extends StatelessWidget {
  const TBrandTitleWithVerificationIcon({
    super.key, 
    required this.title, 
    this.maxLines = 1, 
    this.textColor, 
    this.iconColor, 
    this.textAlign = TextAlign.center, 
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            title:title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: TSizes.xs,),
        Icon(Iconsax.verify5, color: TColors.primary, size: TSizes.iconXs,),
      ],
    );
  }
}


