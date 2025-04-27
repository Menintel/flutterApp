import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopper/common/widgets/success_screen/success_screen.dart';
import 'package:shopper/features/authentification/screens/login/login.dart';
import 'package:shopper/utils/constants/image_strings.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'package:shopper/utils/constants/text_strings.dart';
import 'package:shopper/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => LoginScreen()) , icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// - - - IMAGE
              Image(image:const AssetImage(TImages.verifyEmailIllustration), width: THelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: TSizes.spaceBtwItems),
              
              /// - - - TITLE and SUBTITLE
              Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),
              Text('youremail@shopper.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// - - - BUTTONS
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => SuccessScreen(
                image: TImages.successIlustration,
                title: TTexts.yourAccountCreatedTitle,
                subTitle: TTexts.yourAccountCreatedSubTitle,
                onPressed: ()=> Get.to(()=> const LoginScreen()),
                )),
                child: const Text(TTexts.tContinue)),),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail)),)
            ],
          ),
        ),
      ),
    );
  }
}