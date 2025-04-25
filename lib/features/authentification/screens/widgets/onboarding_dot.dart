import 'package:flutter/material.dart';
import 'package:shopper/features/authentification/controllers/onboarding_controller.dart';
import 'package:shopper/utils/constants/colors.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'package:shopper/utils/device/device_utility.dart';
import 'package:shopper/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark =  THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtilities.getBottomNavigationHeight()+25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(controller: controller.pageController,
      onDotClicked: controller.dotNavigationClick,
        count:3,
        effect: ExpandingDotsEffect(activeDotColor: dark? TColors.light : TColors.dark, dotHeight: 6),
        ),
      );
  }
}