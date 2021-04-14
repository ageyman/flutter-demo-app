import 'package:flutter/material.dart';

import 'MainRouter/MainRouter.dart';
import 'SecondScreen/SecondScreen.dart';

class Routes {
  static const mainRoute = '/';
  static const secondRoute = 'Second Route';
  static const thirdRoute = '';
  static const forthRoute = '';

  static final appRoutes = {
    Routes.mainRoute: (context) => MainRouter(),
    Routes.secondRoute: (context) => SecondRoute(),
  };
}

void main() {
  runApp(MaterialApp(
    initialRoute: Routes.mainRoute,
    routes: Routes.appRoutes,
  ));
}
