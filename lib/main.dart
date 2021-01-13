import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:outfitr/presentation/routes/router.gr.dart';
import 'package:outfitr/values/values.dart';

import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringConst.APP_NAME,
      theme: AppTheme.lightThemeData,
      builder: ExtendedNavigator<AppRouter>(
        router: AppRouter(),
        initialRoute: Routes.splashScreen,
      ),
    );
  }
}
