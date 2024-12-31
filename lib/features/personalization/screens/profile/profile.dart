import 'package:aurakart/common/widgets/appbar/appbar.dart';
import 'package:aurakart/common/widgets/images/circular_image.dart';
import 'package:aurakart/common/widgets/texts/section_heading.dart';
import 'package:aurakart/features/personalization/controllers/user_controller.dart';
import 'package:aurakart/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:aurakart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      // Appbar
      appBar: const AAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    // Image
                    const ACircularImage(image: AImages.user,width: 80,height: 80,
                    ),

                    // Button
                    TextButton(onPressed: () {},child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: ASizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: ASizes.spaceBtwItems),

              /// Heading profile Info
              const ASectionHeading(title: 'Profile Information',showActionbutton: false,),
              const SizedBox(height: ASizes.spaceBtwItems),
              AProfileMenu(title: 'Name', value: controller.user.value.fullName , onPressed: () {}),
              AProfileMenu(title: 'Username', value: controller.user.value.username, onPressed: () {}),

              const SizedBox(height: ASizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: ASizes.spaceBtwItems),


             /// Heading profile info 
             const ASectionHeading(title: 'Personal Information', showActionbutton: false),
             const SizedBox(height: ASizes.spaceBtwItems),


              AProfileMenu(title: 'User ID',value: controller.user.value.id ,icon: Iconsax.copy,onPressed: () {},),
              AProfileMenu(title: 'E-mail',value: controller.user.value.email ,onPressed: () {},),
              AProfileMenu(title: 'Phone Number',value: controller.user.value.phoneNumber ,onPressed: () {},),
              AProfileMenu(title: 'Gender',value: 'Male',onPressed: () {},),
              AProfileMenu(title: 'Date of Birth',value: '18 Oct, 2000',onPressed: () {},
              ),
              
              const Divider(),
              const SizedBox(height: ASizes.spaceBtwItems),

              Center(
                child: TextButton(onPressed: () {},child: const Text('Close Account',
                style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
