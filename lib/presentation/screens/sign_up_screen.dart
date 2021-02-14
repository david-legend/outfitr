import 'package:flutter/material.dart';
import 'package:outfitr/presentation/layout/adaptive.dart';
import 'package:outfitr/values/values.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthOfScreen = assignWidth(context: context, fraction: 1.0);
    double heightOfScreen = assignHeight(context: context, fraction: 1.0);
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: const Radius.circular(
                  Sizes.RADIUS_80,
                ),
              ),
              child: Image.asset(
                ImagePath.BG_PATTERN,
                width: widthOfScreen,
                height: heightOfScreen * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: heightOfScreen * 0.20),
              height: heightOfScreen * 0.85,
              width: widthOfScreen,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: const Radius.circular(Sizes.RADIUS_80),
                  topRight: const Radius.circular(Sizes.RADIUS_80),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [Text("hey")],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
