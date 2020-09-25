part of 'counter_bloc.dart';


//define o tipo de deventos que podemos ter
abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

//criando o evento de incrementar
class IncrementEvent extends CounterEvent{
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class DecrementEvent extends CounterEvent{
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
