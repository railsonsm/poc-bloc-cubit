import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_bloc_cubit/app/modules/home/home_module.dart';

import 'cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  final _bloc = HomeModule.to.get<HomeCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' dsdsd'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _bloc.increment(),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      body: BlocProvider<HomeCubit>(
        create: (c) => _bloc,
        child: BlocBuilder<HomeCubit, CounterState>(builder: (c, s) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text("vezes clicadas"),
              ),
              Center(
                child: Text("${s.counter}"),
              ),
              RaisedButton(
                onPressed: () {
                  Modular.to.pushNamedAndRemoveUntil(
                      '/bloc_event', ModalRoute.withName('/'));
                },
                child: const Text('Enabled Button',
                    style: TextStyle(fontSize: 20)),
              )
            ],
          );
        }),
      ),
    );
  }
}
