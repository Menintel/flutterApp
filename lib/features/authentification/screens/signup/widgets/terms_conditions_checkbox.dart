import 'package:flutter/material.dart';
import 'package:shopper/utils/constants/colors.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'package:shopper/utils/constants/text_strings.dart';
import 'package:shopper/utils/helpers/helper_functions.dart';


class TTermsAndConditionsCheckbox extends StatelessWidget {
  const TTermsAndConditionsCheckbox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(children: [
      SizedBox(child: Checkbox(value: true, onChanged: (value){})),
      const SizedBox(width: TSizes.spaceBtwItems),
      Text.rich(TextSpan(children: [
        TextSpan(text: '${TTexts.iAgreeTo}  ', style: Theme.of(context).textTheme.bodySmall),
        TextSpan(text: TTexts.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(	
          color: dark ? TColors.white : TColors.primary,
          decoration: TextDecoration.underline,
          decorationColor: dark ? TColors.white : TColors.primary,
        )),
        TextSpan(text: '    ${TTexts.and}   ', style: Theme.of(context).textTheme.bodySmall),
        TextSpan(text: TTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(	
          color: dark ? TColors.white : TColors.primary,
          decoration: TextDecoration.underline,
          decorationColor: dark ? TColors.white : TColors.primary,
        )),
      ]),
      ),
    ],);
  }
}