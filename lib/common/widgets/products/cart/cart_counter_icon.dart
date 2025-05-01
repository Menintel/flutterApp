import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopper/utils/constants/colors.dart';
import 'package:shopper/utils/helpers/helper_functions.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final dark =  THelperFunctions.isDarkMode(context);
    return Stack(children: [
      IconButton(onPressed: (){}, 
        icon: Icon(Iconsax.shopping_bag , 
        color: iconColor ?? (dark ?  TColors.white : TColors.black),
        
        )),
      Positioned(
        right: 0,
        child: Container( width: 18, height: 18, decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.6), 
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text('3' , style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white, fontSizeFactor: 1),),
        ),
        ),
      )
    ],);
  }
}