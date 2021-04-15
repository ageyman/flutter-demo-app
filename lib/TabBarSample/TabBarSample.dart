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
          bottom: TabBar(tabs:
              [
                Tab(icon: Icon(Icons.star)),
                Tab(icon: Icon(Icons.forward)),
                Tab(icon: Icon(Icons.lock_clock)),
                Tab(icon: Icon(Icons.shield)),
                Tab(icon: Icon(Icons.share)),
              ],
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
}
