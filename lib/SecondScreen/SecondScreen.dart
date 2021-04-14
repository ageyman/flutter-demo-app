import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/CustomWidgets/CustomElevatedButton.dart';

class Constants {
  static const title = 'Second Route';
  static const buttonText = 'Pop';
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(Constants.title)),
        body: Container(
          color: Colors.grey,
          child: Center(
            child: CustomElevatedButton(Constants.title, Navigate.pop, null),
          ),
        ));
  }
}
