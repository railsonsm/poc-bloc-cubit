part of 'bloc_bloc.dart';

abstract class BlocEvent extends Equatable {
  const BlocEvent();

  @override
  List<Object> get props => [];
}

class HomeBlocEvent extends BlocEvent {
  final int oi = 0;
  @override
  List<Object> get props => [oi];
}
