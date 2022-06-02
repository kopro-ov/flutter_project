import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('첫 번째 화면')),
      body: Center(
        child: Column(
          children: const [
            Text('첫 번째 화면 내용'),
          ],
        ),
      ),
    );
  }
}
