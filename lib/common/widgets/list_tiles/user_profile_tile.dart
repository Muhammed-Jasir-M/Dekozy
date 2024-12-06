import 'package:aurakart/common/widgets/images/circular_image.dart';
import 'package:aurakart/utils/constants/colors.dart';
import 'package:aurakart/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AUserProfileTile extends StatelessWidget {
  const AUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const ACircularImage(
        image: AImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Aurakart',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: AColors.white),
      ),
      subtitle: Text(
        'support@aurakart.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: AColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Iconsax.edit, color: AColors.white),
      ),
    );
  }
}
