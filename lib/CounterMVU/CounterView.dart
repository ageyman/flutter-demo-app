import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_navigation_app/CounterMVU/CounterController.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counterState = useProvider(counterControllerProvider.state);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          '${counterState.count}',
          style: TextStyle(fontSize: 72),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () => context.read(counterControllerProvider).increment(),
      ),
    );
  }
}
