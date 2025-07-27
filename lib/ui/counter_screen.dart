import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v5_bloc_counter_app/bloc/counter/counter_bloc.dart';
import 'package:v5_bloc_counter_app/bloc/counter/counter_events.dart';
import 'package:v5_bloc_counter_app/bloc/counter/counter_states.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    print('rebuild 123');
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Example'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state){
                print('build');
              return Center(child: Text(state.counter.toString(), style: TextStyle(fontSize: 60),));
          }),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                context.read<CounterBloc>().add(IncrementCounter());
              }, child: Text('Increament')),
              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){
                context.read<CounterBloc>().add(DecrementCounter());
              }, child: Text('Decreament'))
            ],
          )

        ],
      ),
    );
  }
}
