import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_riverpod_transition/bloc/main/main_cubit.dart';
import 'package:test_riverpod_transition/bloc/middle/middle_cubit.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfilePage'),
      ),
      body: BlocProvider(
        create: (context) => MiddleCubit(2),
        child: BlocBuilder<MiddleCubit, MiddleState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'ProfilePage',
                  ),
                  ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                        context: context, builder: (context) {
                          return Column(
                            children: [
                              Text('Current value is = ${BlocProvider.of<MainCubit>(context).value}'),
                              Text('Middle value is = ${BlocProvider.of<MiddleCubit>(context).value}')
                            ],
                          );
                        });
                      },
                      child: Text('Открыть вслывающее окно')
                  ),
                ],
              ),
            );
          },
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
