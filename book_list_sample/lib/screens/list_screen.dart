import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('도서 목록 앱'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('패키지 없이 R로 구현하는 심층 강화학습'),
            leading: Container(
              width: 30,
              height: 30,
              color: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
