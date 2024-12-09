import 'package:aurakart/common/widgets/appbar/appbar.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:aurakart/utils/constants/text_strings.dart';
import 'package:aurakart/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Appbar
        appBar: AAppBar(
          showBackArrow: false,
          actions: [
            IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear),
            ),
          ],
        ),

        // Body
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(ASizes.defaultSpace),
            child: Column(
              children: [
                /// Image
                Image(
                  image: const AssetImage(AImages.deleiveredEmailIllustration),
                  width: AHelperFunctions.screenWidth() * 0.6,
                ),

                const SizedBox(height: ASizes.spaceBtwSections),

                /// Title
                Text(
                  ATexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: ASizes.spaceBtwItems),

                /// Sub-Title
                Text(
                  ATexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: ASizes.spaceBtwSections),

                /// Done Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(ATexts.done),
                  ),
                ),

                const SizedBox(height: ASizes.spaceBtwItems),

                /// Resend Email Button
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(ATexts.resendEmail),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
