import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(CounterState initialState) : super(initialState);




  //no estado inicial o contador é igual a 0
  CounterState get initialState => CounterState(counter:0);  //gerando um estadoinicical

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if(event is IncrementEvent){
        yield CounterState(counter: state.counter+1); //aí eu quero alterar o meu estado
    }
    else if(event is DecrementEvent){
     yield CounterState(counter:state.counter-1);

    }
  }
}
