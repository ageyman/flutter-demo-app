import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
class CounterState extends Equatable {
  final int count;

  CounterState({this.count});
  const CounterState.initial() : count = 0;

  CounterState copyWith({int count}) =>
      CounterState(count: count ?? this.count);

  @override
  List<Object> get props => [count];
}
