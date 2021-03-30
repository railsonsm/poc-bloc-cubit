import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<CounterState> {
  HomeCubit() : super(CounterState(counter: 0));

  int counter = 0;

  increment() {
    emit(CounterState.teste(counter += 1));
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
