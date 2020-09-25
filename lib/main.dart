
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studingblock_pattern/Block/counter_bloc.dart';
import 'package:studingblock_pattern/Homescreen.dart';

void main() =>runApp(new MyApp());

class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      home: BlocProvider(
          create:(BuildContext context)
            {

               CounterState c = new CounterState(counter: 2);
              return CounterBloc(c);
            },
            child: Homescreen()
          ),
  );
  }
}
