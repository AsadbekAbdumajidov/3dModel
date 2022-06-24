import 'package:flutter/material.dart';
import 'package:model3d/core/routes/route_arg.dart';
import 'package:model3d/views/home_page.dart';
import 'package:model3d/views/view_model.dart';

class RouteGenerate {
  Route? generate(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.home:
        return simpleRoute(const HomePage());
      case AppRoutes.views:
        return MaterialPageRoute(
            builder: (context) => const ViewModels(),
            settings: RouteSettings(arguments: args));
    }
    return null;
  }

  simpleRoute(Widget route) => MaterialPageRoute(builder: (context) => route);
}
