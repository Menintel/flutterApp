import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopper/features/authentification/controllers/onboarding_controller.dart';
import 'package:shopper/features/authentification/screens/widgets/onboarding_dot.dart';
import 'package:shopper/features/authentification/screens/widgets/onboarding_next_button.dart';
import 'package:shopper/utils/constants/image_strings.dart';
import 'package:shopper/utils/constants/text_strings.dart';
import '../widgets/onboarding_page.dart';
import '../widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    // Preload images
    precacheImage(const AssetImage(TImages.onBoardingImage1), context);
    precacheImage(const AssetImage(TImages.onBoardingImage2), context);
    precacheImage(const AssetImage(TImages.onBoardingImage3), context);
    
    return Scaffold (
      body: Stack (
        children: [
          // Horizontal page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator ,
            children: const [
              OnBoardingPage (
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage (
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage (
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // - - - SKIP BUTTON 
          const OnBoardSkip(),

          // - - - DOT NAVIGATION
          OnBoardingDotNavigation(pageController: controller.pageController),
          
          // - - - CIRCULAR BUTTON 
          OnBoardNextButton(),
        ],
      ),

    );

  }
}




