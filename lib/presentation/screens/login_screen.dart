import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:outfitr/presentation/layout/adaptive.dart';
import 'package:outfitr/presentation/widgets/OutfitrInputTextField.dart';
import 'package:outfitr/presentation/widgets/custom_button.dart';
import 'package:outfitr/presentation/widgets/spaces.dart';
import 'package:outfitr/values/values.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
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
              color: AppColors.primaryColor,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.PADDING_24,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(Sizes.RADIUS_60),
                        ),
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
                              style: theme.textTheme.bodyText1.copyWith(
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
                            defaultPrefixIcon: FeatherIcons.lock,
                            hintText: StringConst.PASSWORD_HINT_TEXT,
                            style: Styles.outfitrTextFieldStyle,
                            hintStyle: Styles.outfitrTextFieldHintStyle,
                          ),
                          SpaceH30(),
                          Container(
                            width: widthOfScreen * 0.75,
                            child: CustomButton(
                              title: StringConst.LOG_IN,
                              textStyle: theme.textTheme.button.copyWith(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
