import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopper/features/authentification/controllers/onboarding_controller.dart';
import 'package:shopper/utils/constants/colors.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'package:shopper/utils/device/device_utility.dart';
import 'package:shopper/utils/helpers/helper_functions.dart';

class OnBoardNextButton extends StatelessWidget {
  const OnBoardNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtilities.getBottomNavigationHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? TColors.primary : Colors.black),
        child: Icon(Iconsax.arrow_right_3))
      );
  }
}