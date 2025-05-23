import 'package:flutter/material.dart';
import 'package:shopper/common/widgets/image_text/vertical_image_text.dart';
import 'package:shopper/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
          return TVerticalScrollTextImage(title: 'Shoes',image: TImages.google, onTap: (){},);
        },
      ),
    );
  }
}