import 'package:auto_route/auto_route.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:outfitr/presentation/layout/adaptive.dart';
import 'package:outfitr/presentation/routes/router.gr.dart';
import 'package:outfitr/presentation/widgets/onboarding_item.dart';
import 'package:outfitr/values/values.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController = PageController();
  double _currentIndexPage;
  int _pageLength;

  @override
  void initState() {
    _currentIndexPage = 0;
    _pageLength = Data.onBoardingItems.length;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double heightOfScreen = assignHeight(context: context, fraction: 1.0);
    double widthOfScreen = assignWidth(context: context, fraction: 1.0);
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              children: _buildOnBoardingItems(Data.onBoardingItems),
              onPageChanged: (value) {
                setState(() => _currentIndexPage = value.toDouble());
              },
            ),
            Positioned(
              bottom: 0,
              height: heightOfScreen * 0.45,
              width: widthOfScreen,
              child: Container(
//                color: Colors.red,
                padding: const EdgeInsets.only(top: Sizes.PADDING_24),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: DotsIndicator(
                    dotsCount: _pageLength,
                    position: _currentIndexPage,
                    decorator: DotsDecorator(
                      color: AppColors.accentLightGreen10,
                      activeColor: AppColors.primaryColor,
                      size: Size(Sizes.SIZE_4, Sizes.SIZE_4),
                      activeSize: Size(Sizes.SIZE_6, Sizes.SIZE_6),
//                shape: RoundedRectangleBorder(
//                  borderRadius:
//                      BorderRadius.all(const Radius.circular(Sizes.RADIUS_8)),
//                ),
//                activeShape: RoundedRectangleBorder(
//                  borderRadius:
//                      BorderRadius.all(const Radius.circular(Sizes.RADIUS_8)),
//                ),
//                spacing: EdgeInsets.symmetric(horizontal: Sizes.SIZE_4),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildOnBoardingItems(List<OnBoardingItemData> onBoardingItems) {
    List<Widget> items = [];

    for (int index = 0; index < onBoardingItems.length; index++) {
      items.add(
        OnBoardingItem(
          title: onBoardingItems[index].title,
          description: onBoardingItems[index].description,
          tag: onBoardingItems[index].tag,
          coverImagePath: onBoardingItems[index].coverImagePath,
          buttonColor: onBoardingItems[index].buttonColor,
          buttonText: onBoardingItems[index].buttonText,
          backgroundColor: onBoardingItems[index].backgroundColor,
          buttonTextColor: onBoardingItems[index].buttonTextColor,
          tagAlignment: onBoardingItems[index].tagAlignment,
          onPressed: index < onBoardingItems.length - 1
              ? _slideForward
              : navigateToGetStartedScreen,
        ),
      );
    }
    return items;
  }

  void _slideForward() {
    if (_currentIndexPage < _pageLength - 1) {
      setState(() {
        _currentIndexPage += 1.toDouble();
      });
      movePageViewer(_currentIndexPage);
    }
  }

  void movePageViewer(double position) {
    _pageController.animateToPage(
      position.toInt(),
      duration: Duration(milliseconds: 400),
      curve: Curves.ease,
    );
  }

  void navigateToGetStartedScreen() {
    ExtendedNavigator.root.push(Routes.getStartedScreen);
  }
}
