import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/FirstScreen/FirstScreen.dart';

import 'SecondScreen/SecondScreen.dart';

class Routes {
  static const firstRoute = 'First Route';
  static const secondRoute = 'Push';
  static const thirdRoute = '';
  static const forthRoute = '';

  static final appRoutes = {
    Routes.firstRoute: (context) => FirstRoute(),
    Routes.secondRoute: (context) => SecondRoute(),
  };
}

void main() {
  runApp(MaterialApp(
    initialRoute: Routes.firstRoute,
    routes: Routes.appRoutes,
  ));
}
