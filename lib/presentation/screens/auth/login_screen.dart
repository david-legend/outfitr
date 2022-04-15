import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:outfitr/presentation/layout/adaptive.dart';
import 'package:outfitr/presentation/screens/auth/widgets/auth_background.dart';
import 'package:outfitr/presentation/screens/auth/widgets/cover_image.dart';
import 'package:outfitr/presentation/widgets/OutfitrInputTextField.dart';
import 'package:outfitr/presentation/widgets/custom_button.dart';
import 'package:outfitr/presentation/widgets/spaces.dart';
import 'package:outfitr/values/values.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthOfScreen = assignWidth(context: context, fraction: 1.0);
    double heightOfScreen = assignHeight(context: context, fraction: 1.0);
    double heightOfForm = heightOfScreen * 0.60;
    double heightOfCoverImage = heightOfScreen * 0.2;
    double heightOfFooter =
        heightOfScreen - (heightOfForm + heightOfCoverImage);

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            AuthBackground(
              width: widthOfScreen,
              height: heightOfScreen,
              footerHeight: heightOfFooter,
              isLogin: true,
            ),
            ExpandedScrollingColumn(
              children: [
                CoverImage(
                  width: widthOfScreen,
                  height: heightOfCoverImage,
                ),
                Stack(
                  children: [
                    CoverImage(
                      width: widthOfScreen,
                      height: heightOfCoverImage,
                    ),
                    LoginForm(
                      width: widthOfScreen,
                      height: heightOfForm,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  final double height;
  final double width;

  LoginForm({
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.only(
          topRight: const Radius.circular(Sizes.RADIUS_100),
          bottomLeft: const Radius.circular(Sizes.RADIUS_60),
          bottomRight: const Radius.circular(Sizes.RADIUS_60),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.PADDING_24,
            ),
            child: Column(
              children: [
                SpaceH30(),
                Text(
                  StringConst.WELCOME_BACK,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headline5,
                ),
                SpaceH16(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.PADDING_16,
                  ),
                  child: Text(
                    StringConst.WELCOME_BACK_DESC,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyText1?.copyWith(
                      color: AppColors.grey20,
                      fontSize: Sizes.TEXT_SIZE_18,
                    ),
                  ),
                ),
                SpaceH48(),
                OutfitrInputTextField(
                  hintText: StringConst.EMAIL_HINT_TEXT,
                  style: Styles.outfitrTextFieldStyle,
                  hintStyle: Styles.outfitrTextFieldHintStyle,
                ),
                SpaceH20(),
                OutfitrInputTextField(
                  defaultPrefixIcon: Icons.lock,
                  hintText: StringConst.PASSWORD_HINT_TEXT,
                  style: Styles.outfitrTextFieldStyle,
                  hintStyle: Styles.outfitrTextFieldHintStyle,
                ),
                SpaceH30(),
                Container(
                  width: width * 0.75,
                  child: CustomButton(
                    title: StringConst.LOG_IN,
                    textStyle: theme.textTheme.button?.copyWith(
                      color: AppColors.white,
                    ),
                    color: AppColors.primaryColor,
                    elevation: Sizes.ELEVATION_0,
                    onPressed: () {},
                  ),
                ),
                SpaceH30(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
