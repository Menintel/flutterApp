import 'package:flutter/material.dart';
import 'package:shopper/utils/constants/sizes.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key, 
    this.width = 56, 
    this.height = 56, 
    this.fit = BoxFit.cover, 
    this.overlayColor, 
    this.backgroundColor,  
    this.padding = TSizes.sm,
    required this.image, 
    this.isNetworkImage = false, 
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        //color: backgroundColor ?? (THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
    
      child: Center(
        child: Image(
          fit:fit,
          image: isNetworkImage ? NetworkImage(image) : AssetImage(image),
          //color: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
        ),   
      ),
    );
  }
}