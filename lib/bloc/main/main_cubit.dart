import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  final int value;
  MainCubit(this.value) : super(MainInitial());

  void openProfile() => emit(MainProfileState());

  void openInitial() => emit(MainInitial());
}
