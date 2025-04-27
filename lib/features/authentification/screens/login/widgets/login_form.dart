import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopper/features/authentification/screens/signup/signup.dart';
import 'package:shopper/utils/constants/sizes.dart';
import 'package:shopper/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form (child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          ///- - - EMAIL 
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
      
          /// - - - PASSWORD
          TextFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check), 
              labelText: TTexts.password, 
              suffixIcon: Icon(Iconsax.eye_slash), 
            ),
          ),
      
          const SizedBox(height: TSizes.spaceBtwInputFields /2),
      
          /// - - - REMEMBER ME AND FORGET PASSWORD
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            /// - - - REMEMBER ME
            Row(children: [
              Checkbox(value: true, onChanged: (value){}),
              const Text(TTexts.rememberMe),
              ],),
            /// - - - FORGOT PASSWORD
            TextButton(onPressed: () {}, child: Text(TTexts.forgotPassword)),
          ],),
      
          const SizedBox(height: TSizes.spaceBtwSections),
      
          /// - - - SIGN IN BUTTON
          SizedBox( width: double.infinity,
            child: ElevatedButton(onPressed: (){}, child: Text(TTexts.signIn)),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
      
          /// - - - CREATE ACCOUNT BUTTON
          SizedBox( width: double.infinity,
            child: OutlinedButton(onPressed: () => Get.to(() =>const SignupScreen()), child: Text(TTexts.creatAccount)),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}