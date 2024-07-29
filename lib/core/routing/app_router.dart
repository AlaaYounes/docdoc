import 'package:docdoc/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../features/login/presentation/pages/login_screen.dart';
import '../../features/onboarding/pages/onboarding_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this : (arguments as className)
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
