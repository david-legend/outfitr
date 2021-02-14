import 'package:flutter/material.dart';
import 'package:outfitr/presentation/layout/adaptive.dart';
import 'package:outfitr/presentation/widgets/OutfitrInputTextField.dart';
import 'package:outfitr/presentation/widgets/custom_button.dart';
import 'package:outfitr/presentation/widgets/spaces.dart';
import 'package:outfitr/values/values.dart';

//TODO:: make textInput turn to primary color when it is enabled
class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    double widthOfScreen = assignWidth(context: context, fraction: 1.0);
    double heightOfScreen = assignHeight(context: context, fraction: 1.0);
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              ImagePath.BG_PATTERN,
              width: widthOfScreen,
              height: heightOfScreen * 0.3,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(top: heightOfScreen * 0.15),
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
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_24),
                  child: Column(
                    children: [
                      SpaceH30(),
                      Text(
                        StringConst.FORGOT_PASSWORD,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headline5,
                      ),
                      SpaceH16(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Sizes.PADDING_16,
                        ),
                        child: Text(
                          StringConst.FORGOT_PASSWORD_DESC,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyText1.copyWith(
                            color: AppColors.grey20,
                            fontSize: Sizes.TEXT_SIZE_18,
                          ),
                        ),
                      ),
                      SpaceH48(),
                      OutfitrInputTextField(
                        hintText: StringConst.PASSWORD_HINT_TEXT,
                        style: Styles.outfitrTextFieldStyle,
                        hintStyle: Styles.outfitrTextFieldHintStyle,
                      ),
                      SpaceH48(),
                      Container(
                        width: widthOfScreen * 0.75,
                        child: CustomButton(
                          title: StringConst.RESET_PASSWORD,
                          textStyle: theme.textTheme.button.copyWith(
                            color: AppColors.white,
                          ),
                          color: AppColors.primaryColor,
                          elevation: Sizes.ELEVATION_0,
                          onPressed: () {},
                        ),
                      ),
                      SpaceH36(),
                      RichText(
                        text: TextSpan(
                          text: "${StringConst.DONT_WORK} ",
                          style: theme.textTheme.subtitle1,
                          children: [
                            TextSpan(
                              text: StringConst.TRY_ANOTHER_WAY,
                              style: theme.textTheme.subtitle1.copyWith(
                                color: AppColors.primaryColor,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
