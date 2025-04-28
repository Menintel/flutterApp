import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopper/features/authentification/screens/password_configuration/reset_password.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'package:shopper/utils/constants/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// - - - HEADINGS
            Text(TTexts.forgotPasswordTitle, style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.forgotPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: TSizes.spaceBtwSections * 2),

            /// - - - TEXT FIELD
            TextFormField(
              decoration: const InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),


            /// - - - SUBMIT BUTTON
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.off(() => ResetPassword()), child: Text(TTexts.submit))
              ),

          ],
        ),
      ),
    );
  }
}