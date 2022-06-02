import 'package:basic_ex/routes/first_route.dart';
import 'package:basic_ex/routes/second_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstRoute(),
        '/second': (context) => const SecondRoute(),
      },
    );
  }
}
