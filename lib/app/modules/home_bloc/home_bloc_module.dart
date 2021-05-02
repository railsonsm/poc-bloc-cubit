import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_bloc_cubit/app/modules/home_bloc/bloc/bloc_bloc.dart';
import 'package:poc_bloc_cubit/app/modules/home_bloc/home/home_page.dart';

class HomeBlocModule extends Module {
  @override
  List<Bind> get binds => [(Bind((i) => BlocBloc()))];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/:teste', child: (_, args) => HomeBlocPage()),
      ];
}
