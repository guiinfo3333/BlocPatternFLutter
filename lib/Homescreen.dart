import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studingblock_pattern/Block/counter_bloc.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FLutter Bloc"),
          centerTitle: true,
        ),
        body:BlocBuilder(
          cubit:BlocProvider.of<CounterBloc>(context) ,
          builder: (BuildContext context,state){
           return Center(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      state.counter.toString(),
                      style:TextStyle(fontSize:40),
                    ),
                    RaisedButton(
                      child:Text("Increment"),
                      onPressed: (){
                        BlocProvider.of<CounterBloc>(context).add(IncrementEvent());

                      },

                    ),
                    RaisedButton(
                      child:Text("decrement"),
                      onPressed: (){
                        BlocProvider.of<CounterBloc>(context).add(DecrementEvent());
                      },

                    )
                  ],
                )
            );
          },
        )
    );
  }
}
