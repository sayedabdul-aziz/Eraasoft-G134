import 'package:counter_with_cubit/counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitState());

  int counter = 0;

  void add() {
    counter++;
    emit(CounterUpdateState()); // send state to UI
  }

  void remove() {
    counter--;
    emit(CounterUpdateState());
  }

  void login() {
    emit(LoginLoadingState());
    Future.delayed(const Duration(seconds: 2), () {
      emit(LoginSuccessState());
    });
  }
}
