import 'package:book_list_sample/widgets/book_tile.dart';
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
        children: const [
          BookTile(
            title: '패키지 없이 R로 구현하는 심층 강화학습',
            image:
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            subtitle: '',
            description: '',
          ),
          BookTile(
            title: '패키지 없이 R로 구현하는 심층 강화학습',
            image:
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            subtitle: '',
            description: '',
          ),
          BookTile(
            title: '패키지 없이 R로 구현하는 심층 강화학습',
            image:
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            subtitle: '',
            description: '',
          ),
          BookTile(
            title: '패키지 없이 R로 구현하는 심층 강화학습',
            image:
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            subtitle: '',
            description: '',
          ),
          BookTile(
            title: '패키지 없이 R로 구현하는 심층 강화학습',
            image:
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            subtitle: '',
            description: '',
          ),
          BookTile(
            title: '패키지 없이 R로 구현하는 심층 강화학습',
            image:
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            subtitle: '',
            description: '',
          ),
          BookTile(
            title: '패키지 없이 R로 구현하는 심층 강화학습',
            image:
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            subtitle: '',
            description: '',
          ),
          BookTile(
            title: '패키지 없이 R로 구현하는 심층 강화학습',
            image:
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            subtitle: '',
            description: '',
          ),
          BookTile(
            title: '패키지 없이 R로 구현하는 심층 강화학습',
            image:
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            subtitle: '',
            description: '',
          ),
        ],
      ),
    );
  }
}
