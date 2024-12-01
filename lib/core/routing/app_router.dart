import 'package:flutter/material.dart';

import 'routing.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routing.loginScreen:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case Routing.onBordingScreen:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
