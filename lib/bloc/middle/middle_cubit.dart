import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'middle_state.dart';

class MiddleCubit extends Cubit<MiddleState> {
  final int value;
  MiddleCubit(this.value) : super(MiddleInitial());
}
