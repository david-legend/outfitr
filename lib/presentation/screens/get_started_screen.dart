import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:outfitr/presentation/layout/adaptive.dart';
import 'package:outfitr/presentation/routes/router.gr.dart';
import 'package:outfitr/presentation/widgets/custom_button.dart';
import 'package:outfitr/presentation/widgets/spaces.dart';
import 'package:outfitr/values/values.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double heightOfScreen = assignHeight(context: context, fraction: 1.0);
    double widthOfScreen = assignWidth(context: context, fraction: 1.0);
    return Scaffold(
      body: Container(
        height: heightOfScreen,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.accentLightBrown10,
                borderRadius: const BorderRadius.only(
                  bottomRight: const Radius.circular(Sizes.RADIUS_80),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: const Radius.circular(Sizes.RADIUS_80),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: heightOfScreen * 0.05,
                      child: Text(
                        StringConst.APP_NAME,
                        maxLines: 1,
                        style: theme.textTheme.headline1.copyWith(
                          color: AppColors.white,
                          fontSize: Sizes.TEXT_SIZE_250,
                        ),
                      ),
                    ),
                    Image.asset(
                      ImagePath.SEAN_OPRY,
                      width: widthOfScreen,
                      height: heightOfScreen * 0.55,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: AppColors.accentLightBrown10,
                child: Container(
                  height: (heightOfScreen * 0.45),
                  width: widthOfScreen,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: const Radius.circular(Sizes.RADIUS_80),
                      topRight: const Radius.circular(Sizes.RADIUS_80),
                    ),
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
                          StringConst.GET_STARTED,
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
                          StringConst.GET_STARTED_DESC,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyText1.copyWith(
                            color: AppColors.primarySubtitleText,
                          ),
                        ),
                      ),
                      SpaceH40(),
                      Container(
                        width: widthOfScreen * 0.75,
                        child: CustomButton(
                          title:
                              "${StringConst.HAVE_AN_ACCOUNT} ${StringConst.LOGIN}",
                          textStyle: theme.textTheme.button.copyWith(
                            color: AppColors.white,
                          ),
                          color: AppColors.primaryColor,
                          elevation: Sizes.ELEVATION_0,
                          onPressed: () =>
                              ExtendedNavigator.root.push(Routes.loginScreen),
                        ),
                      ),
                      SpaceH20(),
                      Container(
                        width: widthOfScreen * 0.75,
                        child: CustomButton(
                          title: StringConst.JOIN_US,
                          textStyle: theme.textTheme.button.copyWith(
                            color: AppColors.primaryText,
                          ),
                          color: AppColors.grey10,
                          elevation: Sizes.ELEVATION_0,
                          onPressed: () =>
                              ExtendedNavigator.root.push(Routes.signUpScreen),
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () => ExtendedNavigator.root
                            .push(Routes.forgotPasswordScreen),
                        child: Padding(
                          padding: const EdgeInsets.all(Sizes.PADDING_8),
                          child: Text(
                            StringConst.FORGOT_PASSWORD,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.subtitle1,
                          ),
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
      ),
    );
  }
}
