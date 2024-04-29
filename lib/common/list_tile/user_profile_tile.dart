import 'package:energy_trade/common/images/circular_image.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CcUserProfileTile extends StatelessWidget {
  const CcUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // controller

    //list tile
    return ListTile(
      leading: CcCircularImage(
        image: CcImages.user2,
        width: 50,
        height: 50,
        backgroundColor: Colors.green.shade600,
      ),
      title: Text("Alphonce Alfred",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: CcColors.black)),
      subtitle: Text("alphonealfred@gmail.com",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: CcColors.black)),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Iconsax.edit4, color: Colors.black),
      ),
    );
  }
}
