import 'package:awsprephub/core/routes/routes.dart';
import 'package:flutter/material.dart';

import '../../features/exam/screen/ui/exam_screen.dart';
import '../../features/home/screen/ui/home_screen.dart';

class AppRouting {
  Route? generateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.examScreem:
        return MaterialPageRoute(builder: (_) => const ExamScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routeSettings.name}'),
            ),
          ),
        );
    }
  }
}
