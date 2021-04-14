import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/main.dart';


enum Navigate { push, pop, present }

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Navigate navigate;

  CustomElevatedButton(this.text, this.navigate);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: () => _goTo(context, navigate, text),
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

      case Navigate.present:
        {
          Navigator.of(context).push(_createRoute());
          break;
        }
    }
  }

  Route _createRoute() {
    var route =  Routes.appRoutes[text];
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => route(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
