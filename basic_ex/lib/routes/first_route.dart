import 'package:basic_ex/routes/second_route.dart';
import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('첫 번째 화면')),
      body: Center(
        child: Column(
          children: [
            const Text('첫 번째 화면 내용'),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: const Text('두 번째 화면으로 이동'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
