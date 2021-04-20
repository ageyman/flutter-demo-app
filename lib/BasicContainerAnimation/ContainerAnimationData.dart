import 'dart:math';
import 'package:flutter/material.dart';

class ContainerAnimationData with ChangeNotifier {
  double width = 50;
  double height = 50;
  var borderRadius = BorderRadius.circular(16);
  Color color = Colors.green;

  void animate() {
    final random = Random();
    width = random.nextInt(300).toDouble();
    height = random.nextInt(300).toDouble();
    color = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
    borderRadius = BorderRadius.circular(random.nextInt(50).toDouble());
    notifyListeners();
  }
}
