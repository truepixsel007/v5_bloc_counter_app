import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v5_bloc_counter_app/bloc/counter/counter_bloc.dart';
import 'package:v5_bloc_counter_app/ui/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
             create: (_) => CounterBloc(),
             child: MaterialApp(
               title: 'Flutter Demo',
               theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
               ),
              home: CounterScreen(),
            ),
           );
  }
}


