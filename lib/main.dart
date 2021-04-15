import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/BasicContainerAnimation/BasicContainerAnimation.dart';
import 'package:flutter_navigation_app/DrawerDemo/DrawerDemo.dart';
import 'package:flutter_navigation_app/TabBarSample/TabBarSample.dart';

import 'assets/AppTheme.dart';
import 'MainRouter/MainRouter.dart';
import 'SnackBarDemo/SnackBarDemo.dart';

class Routes {
  static const mainRoute = '/';
  static const secondRoute = 'Basic Container Animation';
  static const thirdRoute = 'Snack Bar Demo';
  static const forthRoute = 'Drawer Demo';
  static const tabBarRoute = 'Tab Bar';

  static final appRoutes = {
    Routes.mainRoute: (context) => MainRouter(),
    Routes.secondRoute: (context) => BasicContainerAnimation(),
    Routes.thirdRoute: (context) => SnackBarDemo(),
    Routes.forthRoute: (context) => DrawerDemo(),
    Routes.tabBarRoute: (context) => TabBarDemo(),
  };
}

void main() {
  runApp(MaterialApp(
    theme: AppTheme.appTheme,
    initialRoute: Routes.mainRoute,
    routes: Routes.appRoutes,
    // home: TabBarDemo(),
  ));
}
