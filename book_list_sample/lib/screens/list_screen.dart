import 'package:book_list_sample/models/book.dart';
import 'package:book_list_sample/repositories/book_repository.dart';
import 'package:book_list_sample/widgets/book_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListScreen extends StatelessWidget {
  ListScreen({Key? key}) : super(key: key);

  final List<Book> books = BookRepository().getBooks();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('도서 목록 앱'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookTile(book: books[index]);
        },
      ),
    );
  }
}
