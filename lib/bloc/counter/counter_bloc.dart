
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:v5_bloc_counter_app/bloc/counter/counter_events.dart';
import 'package:v5_bloc_counter_app/bloc/counter/counter_states.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  CounterBloc() : super(CounterState()){
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }

  void _increment(IncrementCounter event, Emitter<CounterState> emit){
    // emit() act like setState
    emit(state.copyWith(counter: state.counter +1));
  }

  void _decrement(DecrementCounter event, Emitter<CounterState> emit){
    // emit() act like setState
    emit(state.copyWith(counter: state.counter -1));
  }

}