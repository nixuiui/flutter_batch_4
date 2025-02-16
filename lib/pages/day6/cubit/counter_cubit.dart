import 'package:flutter_batch_4/pages/day6/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {

  CounterCubit() : super(CounterState());

  void increment() {
    final newCounter = state.counter + 1;
    emit(state.copyWith(
      counter: newCounter,
      loading: newCounter % 5 == 0
    ));
  }

  void decrement() {
    final newCounter = state.counter - 1;
    emit(state.copyWith(
      counter: state.counter - 1,
      loading: newCounter % 5 == 0
    ));
  }

}