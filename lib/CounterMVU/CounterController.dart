import 'package:flutter_navigation_app/CounterMVU/CounterState.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterControllerProvider =
    StateNotifierProvider<CounterController>((ref) => CounterController());

class CounterController extends StateNotifier<CounterState> {
  CounterController([CounterState state])
      : super(state ?? CounterState.initial());

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}
