import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/CustomWidgets/CustomElevatedButton.dart';
import 'package:flutter_navigation_app/SnackBarDemo/SnackBarDemo.dart';

import '../main.dart';

class TabBarDemo extends StatelessWidget {
  final elements = Routes.appRoutes.entries.toList();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: elements.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: _setTabBarIcons(),
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: elements.map((e) => e.value(context)).toList(),
        ),
      ),
    );
  }

  List<Widget> _buildTabBarIcons() => elements
      .map((e) => SizedBox(
            child: Text('${e.key}'),
            width: 60,
            height: 60,
          ))
      .toList();

  List<Widget> _setTabBarIcons() {
    final availableIcons = [
      Icons.star,
      Icons.forward,
      Icons.shield,
      Icons.share,
      Icons.alarm
    ];

    return elements
        .map((e) => Tab(
            icon: Icon(availableIcons[Random().nextInt(elements.length - 1)])))
        .toList();
  }
}
