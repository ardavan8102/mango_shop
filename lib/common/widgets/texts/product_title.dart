import 'package:flutter/material.dart';

class productTitle extends StatelessWidget {
  const productTitle({
    super.key,
    required this.title,
    this.isLarge = false,
    this.maxLines = 2,
    this.textAlign,
  });

  final String title;
  final bool isLarge;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: isLarge
          ? Theme.of(context).textTheme.titleSmall
          : Theme.of(context).textTheme.labelLarge,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
