part of 'bloc_bloc.dart';

abstract class BlocState extends Equatable {
  const BlocState();
}

class BlocInitial extends BlocState {
  final int count;

  const BlocInitial({this.count = 0});

  @override
  List<Object> get props => [count];
}

class CountState extends BlocState {
  final int count;

  const CountState({this.count});

  @override
  List<Object> get props => [count];
}
