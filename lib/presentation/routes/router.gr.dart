// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/get_started_screen.dart';
import '../screens/onboarding_screen.dart';
import '../screens/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String onBoardingScreen = '/on-boarding-screen';
  static const String getStartedScreen = '/get-started-screen';
  static const all = <String>{
    splashScreen,
    onBoardingScreen,
    getStartedScreen,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.onBoardingScreen, page: OnBoardingScreen),
    RouteDef(Routes.getStartedScreen, page: GetStartedScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    OnBoardingScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardingScreen(),
        settings: data,
      );
    },
    GetStartedScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => GetStartedScreen(),
        settings: data,
      );
    },
  };
}
