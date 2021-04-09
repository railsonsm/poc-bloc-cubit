import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_bloc_cubit/app/app_widget.dart';
import 'package:poc_bloc_cubit/app/bloc/app_state.dart';
import 'package:poc_bloc_cubit/app/modules/home/home_module.dart';
import 'package:poc_bloc_cubit/app/modules/home_bloc/home_bloc_module.dart';

import 'bloc/app_bloc.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => InitialAppState()),
        Bind((i) => AppBloc(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: HomeModule()),
        ModuleRoute("/bloc_event", module: HomeBlocModule())
      ];
}
