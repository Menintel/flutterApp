import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:shopper/common/styles/spacing_styles.dart';
import 'package:shopper/common/widgets/login_signup/social_buttoms.dart';
import 'package:shopper/features/authentification/screens/login/widgets/login_header.dart';
import 'package:shopper/common/widgets/login_signup/form_divider.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'package:shopper/utils/constants/text_strings.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// - - - LOGO, Title and Sub-Title
              TLoginHeader(),

              /// - - - FORM
              const TLoginForm(),
              /// - - - DIVIDER
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// - - - FOOTER
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}



