import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_bloc_cubit/app/modules/home_bloc/bloc/bloc_bloc.dart';
import 'package:poc_bloc_cubit/app/modules/home_bloc/home/home_page.dart';

class HomeBlocModule extends ChildModule {
  @override
  List<Bind> get binds => [(Bind((i) => BlocBloc()))];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomeBlocPage()),
      ];

  static Inject get to => Inject<HomeBlocModule>.of();
}
