import 'package:flutter/material.dart';
import 'package:shop/common/widgets/custom_shapes/circular_shape.dart';
import 'package:shop/common/widgets/custom_shapes/curved_edge_widget.dart';
import 'package:shop/utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: myColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: myCircularContainer(backgroundColor: myColors.textWhite.withOpacity(0.1)),
              ),
          
              Positioned(
                top: 100,
                right: -300,
                child: myCircularContainer(backgroundColor: myColors.textWhite.withOpacity(0.1)),
              ),

              child,
            ],
          ),
        ),
      ),
    );
  }
}