import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/BasicContainerAnimation/BasicContainerAnimation.dart';

import 'MainRouter/MainRouter.dart';


class Routes {
  static const mainRoute = '/';
  static const secondRoute = 'Basic Container Animation';
  static const thirdRoute = '';
  static const forthRoute = '';

  static final appRoutes = {
    Routes.mainRoute: (context) => MainRouter(),
    Routes.secondRoute: (context) => BasicContainerAnimation(),
  };
}

void main() {
  runApp(MaterialApp(
    initialRoute: Routes.mainRoute,
    routes: Routes.appRoutes,
  ));
}
