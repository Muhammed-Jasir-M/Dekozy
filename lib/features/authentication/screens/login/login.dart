import 'package:aurakart/common/styles/spacing_styles.dart';
import 'package:aurakart/features/authentication/screens/login/widgets/social_buttons.dart';
import 'package:aurakart/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:aurakart/features/authentication/screens/signup/signup.dart';
import 'package:aurakart/features/authentication/screens/login/widgets/form_divider.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/constants/text_strings.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            /// Logo, Title & Sub-Title
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      dark ? TImages.lightAppLogo : TImages.darkAppLogo,
                    ),
                  ),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: TSizes.sm,
                  ),
                  Text(
                    TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              /// Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: TSizes.spaceBtwSections,
                  ),
                  child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TTexts.email,
                        ),
                      ),

                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),

                      ///Password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),

                      const SizedBox(
                        height: TSizes.spaceBtwInputFields / 2,
                      ),

                      /// Remembear Me & Forget Password
                      Row(
                        children: [
                          /// Remembear Me
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                              const Text(
                                TTexts.remeamberMe,
                              ),
                            ],
                          ),

                          /// Forget Password
                          TextButton(
                            onPressed: () => Get.to(() => const ForgetPassword()),
                            child: const Text(TTexts.forgetPassword),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      /// Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(TTexts.signIn),
                        ),
                      ),

                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      /// Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => const SignupScreen()),
                          child: const Text(
                            TTexts.createAccount,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),
                    ],
                  ),
                ),
              ),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInwith.capitalize!),

              const SizedBox(height: TSizes.spaceBtwSections),

            /// Social Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
