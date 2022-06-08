import 'package:book_list_sample/models/book.dart';
import 'package:book_list_sample/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final Book book;

  const BookTile({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      leading: SizedBox(
        width: 40,
        height: 40,
        child: Image.network(
          book.image,
          width: 30,
          height: 30,
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: book.title,
              subtitle: book.subtitle,
              description: book.description,
              image: book.image,
            ),
          ),
        );
      },
    );
  }
}
