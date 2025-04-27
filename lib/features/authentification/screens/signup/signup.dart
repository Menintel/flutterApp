
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:shopper/common/widgets/login_signup/form_divider.dart';
import 'package:shopper/common/widgets/login_signup/social_buttoms.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'package:shopper/utils/constants/text_strings.dart';

import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// - - - TITLE
              Text(TTexts.signUpTitle,
              style: Theme.of(context).textTheme.headlineLarge,),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// - - - FORM
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
              /// - - -  DIVIDER
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// - - - SOCIALS
              const TSocialButtons(),
          ],),
        ),
      ),
    );
  }
}

