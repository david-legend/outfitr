import 'package:flutter/material.dart';

import '../../../../values/values.dart';

class CoverImage extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final String imagePath;

  const CoverImage({
    required this.width,
    required this.height,
    this.imagePath = ImagePath.BG_PATTERN,
    this.backgroundColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: const Radius.circular(
            Sizes.RADIUS_80,
          ),
        ),
        child: Image.asset(
          imagePath,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
