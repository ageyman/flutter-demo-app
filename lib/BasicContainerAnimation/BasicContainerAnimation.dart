import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/BasicContainerAnimation/ContainerAnimationData.dart';
import 'package:provider/provider.dart';

class BasicContainerAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Consumer<ContainerAnimationData>(
              builder: (context, data, child) => AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: data.width,
                    height: data.height,
                    decoration: BoxDecoration(
                      color: data.color,
                      borderRadius: data.borderRadius,
                    ),
                  )),
        ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.play_arrow),
      onPressed: () => _tappedOnButton(context),
    ),
      );

  void _tappedOnButton(BuildContext context) {
    context.read<ContainerAnimationData>().animate();
  }
}
