import 'package:auto_route/annotations.dart';
import 'package:outfitr/presentation/screens/auth/forgot_password_screen.dart';
import 'package:outfitr/presentation/screens/onboarding/get_started_screen.dart';
import 'package:outfitr/presentation/screens/auth/login_screen.dart';
import 'package:outfitr/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:outfitr/presentation/screens/auth/sign_up_screen.dart';
import 'package:outfitr/presentation/screens/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SplashScreen, initial: true),

    //OnBoarding & Authentication Screens
    MaterialRoute(page: OnBoardingScreen),
    MaterialRoute(page: GetStartedScreen),
    MaterialRoute(page: LoginScreen),
    MaterialRoute(page: SignUpScreen),
    MaterialRoute(page: ForgotPasswordScreen),
  ],
)
class $AppRouter {}
