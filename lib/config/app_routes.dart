import 'package:fitness_app/home/home_screen.dart';
import 'package:fitness_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case WelcomeScreen.routeName:
        return WelcomeScreen.route();
      // case OnboardingScreen.routeName:
      //   return OnboardingScreen.route();
      // case MatchesScreen.routeName:
      //   return MatchesScreen.route();
      // case ProfileScreen.routeName:
      //   return ProfileScreen.route();
      // case ChatScreen.routeName:
      //   return ChatScreen.route(userMatch: settings.arguments as UserMatch);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: const Text('error'))),
      settings: const RouteSettings(name: '/error'),
    );
  }
}
