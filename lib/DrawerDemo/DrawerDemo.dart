import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/CustomWidgets/CustomElevatedButton.dart';

import '../main.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: _createBody(),
        drawer: Drawer(
          child: ListView.builder(
              itemCount: Routes.appRoutes.length - 1,
              itemBuilder: (context, index) {
                final route = Routes.appRoutes.entries.toList()..removeAt(0);
                return ListTile(
                    title: Text(route[index].key),
                    onTap: () =>
                        Navigator.of(context).pushNamed(route[index].key));
              }),
        ));
  }

  Widget _createBody() =>
      Center(child: CustomElevatedButton('Start Screen', Navigate.pop));
}
