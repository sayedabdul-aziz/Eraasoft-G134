import 'package:counter_with_cubit/counter/bloc/counter_bloc_state.dart';
import 'package:counter_with_cubit/counter/bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterBlocState> {
  CounterBloc() : super(CounterInitState()) {
    on((event, state) {
      if (event is AddEvent) {
        increase(state);
      } else if (event is RemoveEvent) {
        remove(state);
      } else if (event is LoginEvent) {
        login(state);
      }
    });
  }

  int counter = 0;

  void increase(Emitter<CounterBlocState> emit) {
    counter++;
    emit(CounterUpdateState()); // send state to UI
  }

  void remove(Emitter<CounterBlocState> emit) {
    counter--;
    emit(CounterUpdateState());
  }

  void login(Emitter<CounterBlocState> emit) {
    emit(LoginLoadingState());
    Future.delayed(const Duration(seconds: 2), () {
      emit(LoginSuccessState());
    });
  }
}
