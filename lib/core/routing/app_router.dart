import 'package:flutter/material.dart';
import 'package:flutter_advanced/features/login/login_screen.dart';
import 'package:flutter_advanced/features/onboarding/onboarding_screen.dart';

import 'routing.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routing.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routing.onBordingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
