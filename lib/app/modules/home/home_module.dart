import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_bloc_cubit/app/modules/home/cubit/home_cubit.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeCubit(), singleton: false),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
