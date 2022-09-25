import 'package:flutter/material.dart';
import 'package:systel_assignment_mohamed/config/route/route_constants.dart';
import '../../screens/screens.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case logInScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const LoginScreen(),
      );
  }
}
