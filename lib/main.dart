import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/BasicContainerAnimation/BasicContainerAnimation.dart';
import 'package:flutter_navigation_app/DrawerDemo/DrawerDemo.dart';

import 'MainRouter/MainRouter.dart';
import 'SnackBarDemo/SnackBarDemo.dart';


class Routes {
  static const mainRoute = '/';
  static const secondRoute = 'Basic Container Animation';
  static const thirdRoute = 'Snack Bar Demo';
  static const forthRoute = 'Drawer Demo';

  static final appRoutes = {
    Routes.mainRoute: (context) => MainRouter(),
    Routes.secondRoute: (context) => BasicContainerAnimation(),
    Routes.thirdRoute: (context) => SnackBarDemo(),
    Routes.forthRoute: (context) => DrawerDemo(),
  };
}

void main() {
  runApp(MaterialApp(
    initialRoute: Routes.mainRoute,
    routes: Routes.appRoutes,
  ));
}
