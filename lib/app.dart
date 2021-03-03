import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_riverpod_transition/bloc/main/main_cubit.dart';
import 'package:test_riverpod_transition/ui/screens/default.dart';
import 'package:test_riverpod_transition/ui/screens/profile.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider<MainCubit>(create: (context) => MainCubit(1),
        child: BlocBuilder<MainCubit, MainState>(
          builder: (context, state) {
            if (state is MainInitial) return MyHomePage();
            if (state is MainProfileState) return MaterialApp(home: ProfilePage(),) ;
            return Placeholder();
          },
        )),
    );
  }
}


