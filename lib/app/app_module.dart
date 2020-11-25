import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_bloc_cubit/app/app_widget.dart';
import 'package:poc_bloc_cubit/app/bloc/app_state.dart';
import 'package:poc_bloc_cubit/app/modules/home/home_module.dart';

import 'bloc/app_bloc.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => InitialAppState()),
        Bind((i) => AppBloc(i())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
