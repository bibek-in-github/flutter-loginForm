import 'package:flutter/material.dart'
    show
        BuildContext,
        FocusManager,
        GlobalKey,
        Key,
        MaterialApp,
        NavigatorState,
        StatelessWidget,
        Widget;
import 'package:login_form/src/pages/login_page.dart';

import 'config/app_routes.dart';

final mainNavigator = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  static void dismissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: mainNavigator,
      title: ("My App"),
      initialRoute: LoginPage.routeName,
      onGenerateRoute: (settings) {
        return AppRouter.onGenerateRoutes(settings);
      },
    );
  }
}
