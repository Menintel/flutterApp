import 'package:flutter/material.dart';
import 'package:shopper/common/widgets/appbar/appbar.dart';
import 'package:shopper/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:shopper/utils/constants/colors.dart';
import 'package:shopper/utils/constants/text_strings.dart';

class THomeAppbar extends StatelessWidget {
  const THomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homaAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey)),
          Text(TTexts.homaAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
        ],
      ),
      actions: [
        TCartCounterIcon( onPressed: () {}, iconColor:TColors.white,),
      ],
    );
  }
}
