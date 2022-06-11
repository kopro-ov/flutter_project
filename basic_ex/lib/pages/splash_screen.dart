import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'SplashScreen',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '나만의 일정 관리 : TODO 리스트',
            style: TextStyle(fontSize: 20),
          )
        ],
      )),
    );
  }
}
