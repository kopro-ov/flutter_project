import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('패키지 없이 R로 구현하는 심층 강화 학습'),
      ),
      body: Column(
        children: [
          Image.network('ht'),
          const SizedBox(
            height: 3,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '패키지 없이 R로 구현하는 심층 강화 학습',
                    ),
                    Text(
                      '손으로 풀어보는.. ',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.15,
            padding: const EdgeInsets.all(10),
            child: const Center(
              child: Icon(
                Icons.star,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
