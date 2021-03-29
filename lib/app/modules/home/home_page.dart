import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cubit/home_cubit.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home cubit"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeCubit _bloc = Modular.get<HomeCubit>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _bloc.increment(),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      body: BlocProvider(
        create: (context) => _bloc,
        child: BlocConsumer<HomeCubit, HomeState>(builder: (c, s) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text("vezes clicadas"),
              ),
              Center(
                child: Text("${s is CounterState ? s.counter : 0}"),
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
        }, listener: (context, state) {
          if (state is CounterState) print(state.counter);
        }),
      ),
    );
  }
}
