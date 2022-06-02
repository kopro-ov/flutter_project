import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('두 번째 화면')),
      body: Center(
        child: Column(
          children: const [
            Text('두 번째 화면 내용'),
          ],
        ),
      ),
    );
  }
}
