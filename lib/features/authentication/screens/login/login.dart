import 'package:aurakart/common/styles/spacing_styles.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/constants/text_strings.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingwithAppBarHeight,
          child: Column(
            /// Logo, Title &Sub - Title
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(TTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  Text(TTexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              /// Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: TSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: TTexts.email),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),

                      ///Password
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: TTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash)),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields / 2),

                      /// Remembear Me & Forget Password
                      Row(
                        children: [
                          /// Remembear Me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(TTexts.remeamberMe),
                            ],
                          ),

                          ///Forget Password
                          ///
                          TextButton(
                            onPressed: () {},
                            child: const Text(TTexts.forgetPassword),
                          )
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      /// Sign In Button
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(TTexts.signIn))),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      /// Create Account Button
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Text(TTexts.createAccount))),
                      const SizedBox(height: TSizes.spaceBtwSections),
                    ],
                  ),
                ),
              ),

              ///Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                          color: dark ? TColors.darkGrey : TColors.grey,
                          thickness: 0.5,
                          indent: 60,
                          endIndent: 5)),
                  Text(TTexts.orSignInwith.capitalize!,
                      style: Theme.of(context).textTheme.labelMedium),
                  Flexible(
                      child: Divider(
                          color: dark ? TColors.darkGrey : TColors.grey,
                          thickness: 0.5,
                          indent: 5,
                          endIndent: 60)),
                ],
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: TColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          width: TSizes.iconMd,
                          height: TSizes.iconMd,
                          image: AssetImage(TImages.google),
                        )),
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: TColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          width: TSizes.iconMd,
                          height: TSizes.iconMd,
                          image: AssetImage(TImages.facebook),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
