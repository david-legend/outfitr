import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:outfitr/presentation/routes/router.gr.dart';
import 'package:outfitr/presentation/widgets/outfitr_item.dart';
import 'package:outfitr/presentation/widgets/spaces.dart';
import 'package:outfitr/values/values.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    run();
  }

  void run() {
    Future.delayed(Duration(milliseconds: 1500), () {
      ExtendedNavigator.root.pushAndRemoveUntil(
        Routes.onBoardingScreen,
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: Sizes.PADDING_16,
          right: Sizes.PADDING_16,
          top: Sizes.PADDING_30,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                spacing: Sizes.SIZE_16,
                runSpacing: Sizes.SIZE_16,
                children: _buildSplashItems(Data.splashScreenItems),
              ),
              SpaceH20(),
              RichText(
                text: TextSpan(
                  text: StringConst.APP_NAME,
                  style: textTheme.headline2,
                  children: [
                    TextSpan(
                      text: ".",
                      style: textTheme.headline2.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              SpaceH8(),
              Text(
                StringConst.APP_SLOGAN.toUpperCase(),
                style: textTheme.subtitle2.copyWith(
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildSplashItems(List<OutfitrItemData> splashItems) {
    List<Widget> items = [];

    for (int index = 0; index < splashItems.length; index++) {
      items.add(
        OutfitrItem(
          imagePath: splashItems[index].imagePath,
          borderRadius: splashItems[index].borderRadius,
          backgroundColor: splashItems[index].backgroundColor,
        ),
      );
    }
    return items;
  }
}
