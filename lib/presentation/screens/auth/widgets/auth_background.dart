import 'package:flutter/material.dart';
import 'package:outfitr/presentation/screens/auth/widgets/socials.dart';
import 'package:outfitr/values/values.dart';

class AuthBackground extends StatelessWidget {
  final double width;
  final double height;
  final double footerHeight;
  final bool isLogin;

  AuthBackground({
    required this.width,
    required this.height,
    required this.footerHeight,
    required this.isLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: AppColors.primaryText,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          child: SizedBox(
            height: footerHeight,
            child: Socials(
              isLogin: isLogin,
            ),
          ),
        ),
      ),
    );
  }
}
