import 'package:flutter/material.dart';
import 'package:shopper/features/authentification/controllers/onboarding_controller.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'package:shopper/utils/device/device_utility.dart';

class OnBoardSkip extends StatelessWidget {
  const OnBoardSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtilities.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
          onPressed: () => OnboardingController.instance.skipPage(),
          child: const Text('Skip'),
            ),
      );
  }
}