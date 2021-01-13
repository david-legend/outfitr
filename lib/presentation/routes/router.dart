import 'package:auto_route/auto_route_annotations.dart';
import 'package:outfitr/presentation/screens/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SplashScreen, initial: true),

    //OnBoarding and AuthenticationScreens
  ],
)
class $AppRouter {}
