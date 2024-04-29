import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CcFavoriteIcon extends StatelessWidget {
  const CcFavoriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    // controller

    // container
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(CcSizes.cardRadiusXs),
          topRight: Radius.circular(CcSizes.cardRadiusXs),
          bottomRight: Radius.circular(CcSizes.cardRadiusXs),
          bottomLeft: Radius.circular(CcSizes.cardRadiusXs),
        ),
      ),
      child: SizedBox(
        width: CcSizes.iconLg,
        height: CcSizes.iconLg,
        child: Center(
          child: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.favorite_outline_rounded,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
