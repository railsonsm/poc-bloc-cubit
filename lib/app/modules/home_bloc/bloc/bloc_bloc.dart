import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class BlocBloc extends Bloc<BlocEvent, BlocState> {
  BlocBloc() : super(BlocInitial());
  int count = 0;

  @override
  Stream<BlocState> mapEventToState(BlocEvent event) async* {
    if (event is HomeBlocEvent) {
      print("oi");
    }
    yield teste(count);
  }

  CountState teste(count) {
    this.count = count;
    return CountState(count: this.count += 1);
  }
}
