part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  int counter = 0;
}

class CounterInitial extends CounterState {}
