part of 'home_cubit.dart';

abstract class HomeState {
  // const HomeState();

}

class HomeInitial extends HomeState {
  final int counter = 0;
}

class CounterState extends HomeState {
  final int counter;

  CounterState({this.counter});

  CounterState.teste(counter) : this.counter = counter;

  @override
  List<Object> get props => [counter];
}
