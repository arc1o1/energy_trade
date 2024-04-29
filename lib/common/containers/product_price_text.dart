import 'package:flutter/material.dart';

class CcProductPriceText extends StatelessWidget {
  const CcProductPriceText({
    super.key,
    this.currencySign = '/=',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
    this.color = Colors.black,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      price + currencySign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: color,
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.copyWith(
              color: color,
              fontWeight: FontWeight.bold,
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
