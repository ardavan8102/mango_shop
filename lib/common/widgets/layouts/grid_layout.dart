import 'package:flutter/material.dart';
import 'package:shop/utils/constants/sizes.dart';

class myGridLayout extends StatelessWidget {
  const myGridLayout({
    super.key,
    required this.itemCount,
    this.axisExtent = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? axisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: itemCount,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: mySizes.gridViewSpacing,
        crossAxisSpacing: mySizes.gridViewSpacing,
        mainAxisExtent: axisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
