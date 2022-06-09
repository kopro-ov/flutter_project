import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/model/book.dart';
import '../../../routes/app_pages.dart';

class BookTile extends StatelessWidget {
  final Book book;

  const BookTile({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title!),
      leading: SizedBox(
        width: 40,
        height: 40,
        child: Image.network(
          book.image!,
          width: 30,
          height: 30,
        ),
      ),
      onTap: () {
        Get.toNamed(Routes.BOOK_DETAILS('1'));
      },
    );
  }
}
