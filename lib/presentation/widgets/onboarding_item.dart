import 'package:flutter/material.dart';
import 'package:outfitr/presentation/layout/adaptive.dart';
import 'package:outfitr/presentation/widgets/spaces.dart';
import 'package:outfitr/values/values.dart';

import 'custom_button.dart';

class OnBoardingItemData {
  OnBoardingItemData({
    this.title,
    this.description,
    this.buttonText,
    this.tag,
    this.coverImagePath,
    this.buttonColor = AppColors.grey10,
    this.backgroundColor,
    this.buttonTextColor,
    this.tagAlignment = TagAlignment.topLeft,
    this.onPressed,
  });

  final String title;
  final String description;
  final String buttonText;
  final String tag;
  final String coverImagePath;
  final Color buttonColor;
  final Color backgroundColor;
  final Color buttonTextColor;
  final TagAlignment tagAlignment;
  final VoidCallback onPressed;
}

enum TagAlignment { topLeft, topRight }

class OnBoardingItem extends StatelessWidget {
  OnBoardingItem({
    this.title,
    this.description,
    this.buttonText,
    this.tag,
    this.coverImagePath,
    this.titleStyle,
    this.tagTextStyle,
    this.buttonTextStyle,
    this.descriptionStyle,
    this.buttonColor = AppColors.grey10,
    this.backgroundColor,
    this.buttonTextColor = AppColors.primaryText,
    this.tagAlignment = TagAlignment.topLeft,
    this.imageBorderRadius = const BorderRadius.only(
      bottomRight: const Radius.circular(Sizes.RADIUS_80),
    ),
    this.containerBorderRadius = const BorderRadius.only(
      topLeft: const Radius.circular(Sizes.RADIUS_80),
    ),
    this.onPressed,
  });

  final String title;
  final String description;
  final String buttonText;
  final String tag;
  final String coverImagePath;
  final TextStyle titleStyle;
  final TextStyle descriptionStyle;
  final TextStyle buttonTextStyle;
  final TextStyle tagTextStyle;
  final Color buttonColor;
  final Color backgroundColor;
  final Color buttonTextColor;
  final BorderRadiusGeometry imageBorderRadius;
  final BorderRadiusGeometry containerBorderRadius;
  final TagAlignment tagAlignment;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double heightOfScreen = assignHeight(context: context, fraction: 1.0);
    double widthOfScreen = assignWidth(context: context, fraction: 1.0);
    return Container(
      height: heightOfScreen,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: imageBorderRadius,
            ),
            child: ClipRRect(
              borderRadius: imageBorderRadius,
              child: Image.asset(
                coverImagePath,
                width: widthOfScreen,
                height: heightOfScreen * 0.55,
              ),
            ),
          ),
          Align(
            alignment: tagAlignment == TagAlignment.topLeft
                ? Alignment.topLeft
                : Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(
                top: Sizes.SAFE_AREA_MARGIN + Sizes.MARGIN_24,
                left: tagAlignment == TagAlignment.topLeft
                    ? Sizes.MARGIN_24
                    : Sizes.MARGIN_0,
                right: tagAlignment == TagAlignment.topRight
                    ? Sizes.MARGIN_24
                    : Sizes.MARGIN_0,
              ),
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  tag,
                  style: theme.textTheme.headline1.copyWith(
                    color: AppColors.white,
                    fontSize: Sizes.TEXT_SIZE_80,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              color: backgroundColor,
              child: Container(
                height: (heightOfScreen * 0.45),
                width: widthOfScreen,
                decoration: BoxDecoration(
                  borderRadius: containerBorderRadius,
                  color: AppColors.white,
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.PADDING_24,
                      ),
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headline5,
                      ),
                    ),
                    SpaceH16(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.PADDING_24,
                      ),
                      child: Text(
                        description,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyText1.copyWith(
                          color: AppColors.primarySubtitleText,
                        ),
                      ),
                    ),
                    SpaceH40(),
                    Container(
                      width: widthOfScreen * 0.6,
                      child: CustomButton(
                        title: buttonText,
                        textStyle: buttonTextStyle ??
                            theme.textTheme.button.copyWith(
                              color: buttonTextColor,
                            ),
                        color: buttonColor,
                        elevation: Sizes.ELEVATION_0,
                        onPressed: onPressed,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
