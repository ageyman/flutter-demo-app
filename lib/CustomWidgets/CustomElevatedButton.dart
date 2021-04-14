import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Navigate { push, pop }

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Navigate navigate;
  final String routeName;

  CustomElevatedButton(this.text, this.navigate, this.routeName);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: () => _goTo(context, navigate, routeName),
    );
  }

  void _goTo(BuildContext context, Navigate navigate, String routeName) {
    switch (navigate) {
      case Navigate.push:
        {
          Navigator.pushNamed(context, routeName);
          break;
        }

      case Navigate.pop:
        {
          Navigator.pop(context);
          break;
        }
    }
  }
}
