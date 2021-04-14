import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/CustomWidgets/CustomElevatedButton.dart';
import 'package:flutter_navigation_app/main.dart';

class Constants {
  static const title = 'Main Router';
}

class MainRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Constants.title),
        ),
        body: Center(
          child: _buildList(),
        ));
  }

  Widget _buildList() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shrinkWrap: true,
      children: [
        CustomElevatedButton(
            Routes.secondRoute, Navigate.push, Routes.secondRoute),
        CustomElevatedButton(
            Routes.secondRoute, Navigate.push, Routes.secondRoute),
        CustomElevatedButton(
            Routes.secondRoute, Navigate.push, Routes.secondRoute),
        CustomElevatedButton(
            Routes.secondRoute, Navigate.push, Routes.secondRoute),
        CustomElevatedButton(
            Routes.secondRoute, Navigate.push, Routes.secondRoute)
      ],
    );
  }
}
