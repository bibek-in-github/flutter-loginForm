import 'package:flutter/material.dart'
    show
        Alignment,
        BoxDecoration,
        Colors,
        Container,
        GestureDetector,
        LinearGradient,
        MaterialPageRoute,
        Route,
        RouteSettings,
        Widget;
import '../pages/index.dart';

import '../app.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case LoginPage.routeName:
        return _materialRoute(settings, LoginPage());
      case SignupPage.routeName:
        return _materialRoute(
          settings,
          SignupPage(),
        );
      default:
        throw FormatException('Route not found ${settings.name}');
    }
  }

  static Route<dynamic> _materialRoute(RouteSettings settings, Widget view) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) {
        return GestureDetector(
          onTap: () => App.dismissKeyboard(),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.green, Colors.orange],
              ),
            ),
            child: view,
          ),
        );
      },
    );
  }
}
