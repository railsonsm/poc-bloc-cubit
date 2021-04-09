import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_bloc_cubit/app/modules/home_bloc/bloc/bloc_bloc.dart';

class HomeBlocPage extends StatefulWidget {
  final String title;
  const HomeBlocPage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomeBlocPageState createState() => _HomeBlocPageState();
}

class _HomeBlocPageState extends State<HomeBlocPage> {
  var blocBloc = Modular.get<BlocBloc>();

  @override
  Widget build(BuildContext context) {
    print(blocBloc);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => blocBloc.add(HomeBlocEvent()),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      body: BlocProvider(
        create: (context) => blocBloc,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text("vezes clicadas"),
            ),
            BlocBuilder<BlocBloc, BlocState>(
              builder: (c, s) {
                if (s is CountState) {
                  return Center(child: Text("${s.count}"));
                } else {
                  return Center(child: Text("0"));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
