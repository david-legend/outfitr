import 'package:flutter/material.dart';
import 'package:outfitr/presentation/layout/adaptive.dart';
import 'package:outfitr/values/values.dart';

const double kPadding = Sizes.PADDING_12;
const double kHorizontalPadding = Sizes.PADDING_16;
const double kItemSpacing = Sizes.SIZE_16;

class OutfitrItemData {
  OutfitrItemData({
    @required this.imagePath,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderRadius,
  });

  final String imagePath;
  final double width;
  final double height;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
}

class OutfitrItem extends StatelessWidget {
  OutfitrItem({
    @required this.imagePath,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderRadius = AppRadius.fullCircleRadius,
  });

  final String imagePath;
  final double width;
  final double height;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    double totalSpacing = kItemSpacing * 2;
    double totalHorizontalPadding = kHorizontalPadding * 2;
    double itemHeight = height ?? assignHeight(context: context, fraction: 0.1);
    double itemSize = width ??
        assignWidth(
                context: context,
                fraction: 1,
                subs: (totalSpacing + totalHorizontalPadding)) /
            3;

//    return Stack(
//      children: [
//        Container(
//          width: itemSize,
//          height: itemSize,
//          decoration: BoxDecoration(
//            color: backgroundColor,
//            borderRadius: borderRadius,
//          ),
//        ),
//        Positioned(
//          bottom: 0,
//          top: 8,
////          left: 8,
////          right: 8,
//          child: ClipRRect(
//            borderRadius: borderRadius,
//            child: Image.asset(
//              imagePath,
//              width: itemSize,
//              height: itemSize,
////          scale: 2,
////          fit: BoxFit.cover,
//            ),
//          ),
//        ),
//      ],
//    );
    return Container(
      width: itemSize,
      height: itemSize,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image.asset(
          imagePath,
          width: itemSize,
          height: itemSize,
//          scale: 2,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
