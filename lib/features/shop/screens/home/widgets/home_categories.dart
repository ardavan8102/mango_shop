import 'package:flutter/material.dart';
import 'package:shop/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:shop/utils/constants/image_strings.dart';


class HomeCategoriesContainer extends StatelessWidget {
  const HomeCategoriesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 9,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return verticalImageText(
            image: allImages.shoes,
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}