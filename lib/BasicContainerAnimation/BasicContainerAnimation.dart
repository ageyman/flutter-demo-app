import 'dart:math';
import 'package:flutter/material.dart';

class BasicContainerAnimation extends StatefulWidget {
  @override
  _BasicContainerAnimationState createState() =>
      _BasicContainerAnimationState();
}

class _BasicContainerAnimationState extends State<BasicContainerAnimation> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          duration: Duration(milliseconds: 350),
          curve: Curves.easeOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () => _animateContainer(),
      ),
    );
  }

  void _animateContainer() {
    setState(() {
      final random = Random();
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
      _borderRadius = BorderRadius.circular(random.nextInt(50).toDouble());
    });
  }
}
