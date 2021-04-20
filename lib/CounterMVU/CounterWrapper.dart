import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/CounterMVU/CounterView.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ProviderScope(child: CounterView());
}
