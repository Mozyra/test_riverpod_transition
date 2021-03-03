import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_riverpod_transition/bloc/main/main_cubit.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyHomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'MyHomePage',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(icon: Icon(Icons.home), onPressed: () {
            BlocProvider.of<MainCubit>(context).openInitial();
          }),
          IconButton(icon: Icon(Icons.person), onPressed: () {
            BlocProvider.of<MainCubit>(context).openProfile();
          }),
        ],
      ),
    );
  }
}
