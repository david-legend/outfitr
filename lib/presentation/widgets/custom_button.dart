import 'package:flutter/material.dart';
import 'package:outfitr/presentation/widgets/empty.dart';
import 'package:outfitr/presentation/widgets/spaces.dart';
import 'package:outfitr/values/values.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.title,
    required this.onPressed,
    this.height = Sizes.HEIGHT_56,
    this.elevation = Sizes.ELEVATION_1,
    this.borderRadius = Sizes.RADIUS_28,
    this.color = AppColors.accentPrimaryColor,
    this.borderSide = Borders.defaultPrimaryBorder,
    this.textStyle,
    this.icon = const Empty(),
    this.borderRadiusGeometry,
    this.hasIcon = false,
    this.hasTitle = true,
  });

  final VoidCallback onPressed;
  final double height;
  final double elevation;
  final double borderRadius;
  final BorderRadiusGeometry? borderRadiusGeometry;
  final String title;
  final Color color;
  final BorderSide borderSide;
  final TextStyle? textStyle;
  final Widget icon;
  final bool hasIcon;
  final bool hasTitle;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius:
            borderRadiusGeometry ?? BorderRadius.circular(borderRadius),
        side: borderSide,
      ),
      height: height,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          hasIcon ? icon : Container(),
          hasIcon ? SpaceW8() : Container(),
          hasTitle
              ? Text(
                  title,
                  style: textStyle,
                )
              : const Empty(),
        ],
      ),
    );
  }
}
