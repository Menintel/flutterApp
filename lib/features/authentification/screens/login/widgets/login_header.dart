import 'package:flutter/material.dart';
import 'package:shopper/utils/constants/image_strings.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'package:shopper/utils/constants/text_strings.dart';
import 'package:shopper/utils/helpers/helper_functions.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height:200,
          image: AssetImage(dark ? TImages.fullAppLogo : TImages.fullAppLogo),
        ),
        Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: TSizes.sm,),
        Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
    
      ],
    );
  }
}