import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/CustomWidgets/CustomElevatedButton.dart';
import 'package:flutter_navigation_app/SecondScreen/SecondScreen.dart';
import 'package:flutter_navigation_app/main.dart';

class Constants {
  static const title = 'First Route';
  static const buttonText = 'Push';
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Constants.title),
        ),
        body: Center(
            child: CustomElevatedButton(
                Constants.title, Navigate.push, Routes.secondRoute)));
  }
}
