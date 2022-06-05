part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class CounterIncrement extends CounterEvent {
  const CounterIncrement();
}

class CounterDecrement extends CounterEvent {
  const CounterDecrement();
}
