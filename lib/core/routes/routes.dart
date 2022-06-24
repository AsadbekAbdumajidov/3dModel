
import 'package:flutter/material.dart';
import 'package:model3d/core/routes/route_arg.dart';
import 'package:model3d/views/home_page.dart';
import 'package:model3d/views/view_model.dart';

class Routes {
  static final Routes _instance = Routes._inint();
  static Routes get instance => _instance;

  Routes._inint();

  Route? generateRoue(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return simpleRoute(const HomePage());
      case AppRoutes.views:
        return simpleRoute(const ViewModels());
      
    }
    return null;
  }

  simpleRoute(Widget route) => MaterialPageRoute(builder: (context) => route);
}
