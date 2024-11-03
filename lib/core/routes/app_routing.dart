import 'package:awsprephub/core/routes/routes.dart';
import 'package:flutter/material.dart';

import '../../features/exam/screen/ui/exam_screen.dart';
import '../../features/home/screen/ui/home_screen.dart';
import '../../features/result/screen/ui/result_screen.dart';

class AppRouting {
  Route? generateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.examScreen:
        return MaterialPageRoute(builder: (_) => const ExamScreen());

      case Routes.resultScreen:
        return MaterialPageRoute(builder: (_) => const ResultScreen());

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
