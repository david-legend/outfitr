// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../screens/forgot_password_screen.dart' as _i6;
import '../screens/get_started_screen.dart' as _i3;
import '../screens/login_screen.dart' as _i4;
import '../screens/onboarding_screen.dart' as _i2;
import '../screens/sign_up_screen.dart' as _i5;
import '../screens/splash_screen.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashScreen());
    },
    OnBoardingScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.OnBoardingScreen());
    },
    GetStartedScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.GetStartedScreen());
    },
    LoginScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.LoginScreen());
    },
    SignUpScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.SignUpScreen());
    },
    ForgotPasswordScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.ForgotPasswordScreen());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i7.RouteConfig(OnBoardingScreenRoute.name,
            path: '/on-boarding-screen'),
        _i7.RouteConfig(GetStartedScreenRoute.name,
            path: '/get-started-screen'),
        _i7.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i7.RouteConfig(SignUpScreenRoute.name, path: '/sign-up-screen'),
        _i7.RouteConfig(ForgotPasswordScreenRoute.name,
            path: '/forgot-password-screen')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i7.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.OnBoardingScreen]
class OnBoardingScreenRoute extends _i7.PageRouteInfo<void> {
  const OnBoardingScreenRoute()
      : super(OnBoardingScreenRoute.name, path: '/on-boarding-screen');

  static const String name = 'OnBoardingScreenRoute';
}

/// generated route for
/// [_i3.GetStartedScreen]
class GetStartedScreenRoute extends _i7.PageRouteInfo<void> {
  const GetStartedScreenRoute()
      : super(GetStartedScreenRoute.name, path: '/get-started-screen');

  static const String name = 'GetStartedScreenRoute';
}

/// generated route for
/// [_i4.LoginScreen]
class LoginScreenRoute extends _i7.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(LoginScreenRoute.name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i5.SignUpScreen]
class SignUpScreenRoute extends _i7.PageRouteInfo<void> {
  const SignUpScreenRoute()
      : super(SignUpScreenRoute.name, path: '/sign-up-screen');

  static const String name = 'SignUpScreenRoute';
}

/// generated route for
/// [_i6.ForgotPasswordScreen]
class ForgotPasswordScreenRoute extends _i7.PageRouteInfo<void> {
  const ForgotPasswordScreenRoute()
      : super(ForgotPasswordScreenRoute.name, path: '/forgot-password-screen');

  static const String name = 'ForgotPasswordScreenRoute';
}
