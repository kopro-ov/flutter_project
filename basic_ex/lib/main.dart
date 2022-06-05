import 'package:basic_ex/pages/counter_page.dart';
import 'package:basic_ex/routes/first_route.dart';
import 'package:basic_ex/routes/second_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/counter/counter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => CounterBloc())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        initialRoute: '/',
        routes: {
          '/': (context) => const FirstRoute(),
          '/second': (context) => const SecondRoute(),
          '/counter': (context) => const CounterPage(),
        },
      ),
    );
  }
}
