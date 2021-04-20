import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/BasicContainerAnimation/BasicContainerAnimation.dart';
import 'package:flutter_navigation_app/BasicContainerAnimation/ContainerAnimationData.dart';
import 'package:flutter_navigation_app/BasicNetworking/NetworkingDemo.dart';
import 'package:flutter_navigation_app/CounterMVU/CounterWrapper.dart';
import 'package:flutter_navigation_app/DrawerDemo/DrawerDemo.dart';
import 'package:flutter_navigation_app/NetworkingBigJSON/BigJSONView.dart';
import 'package:flutter_navigation_app/TabBarSample/TabBarSample.dart';
import 'package:provider/provider.dart';

import 'assets/AppTheme.dart';
import 'MainRouter/MainRouter.dart';
import 'SnackBarDemo/SnackBarDemo.dart';

class Routes {
  static const mainRoute = '/';
  static const secondRoute = 'Basic Container Animation';
  static const thirdRoute = 'Snack Bar Demo';
  static const forthRoute = 'Drawer Demo';
  static const tabBarRoute = 'Tab Bar';
  static const networkingDemo = 'Basic Networking';
  static const fetchArray = 'Not So Basic Networking';
  static const hooksDemo = 'Hooks Demo Counter';

  static final appRoutes = {
    Routes.mainRoute: (context) => MainRouter(),
    Routes.secondRoute: (context) => ChangeNotifierProvider(
        create: (context) => ContainerAnimationData(),
        child: BasicContainerAnimation()),
    Routes.thirdRoute: (context) => SnackBarDemo(),
    Routes.forthRoute: (context) => DrawerDemo(),
    Routes.tabBarRoute: (context) => TabBarDemo(),
    Routes.networkingDemo: (context) => NetworkingDemo(),
    Routes.fetchArray: (context) => BigJSONView(),
    Routes.hooksDemo: (context) => CounterWrapper(),
  };
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: AppTheme.appTheme,
    initialRoute: Routes.mainRoute,
    routes: Routes.appRoutes,
    // home: TabBarDemo(),
  ));
}
