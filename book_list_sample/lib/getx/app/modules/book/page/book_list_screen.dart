import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../controllers/book_controller.dart';
import '../widgets/book_tile.dart';

class BookListPage extends GetView<BookController> {
  const BookListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('도서 목록 앱?'),
      ),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () async {
            controller.bookList.clear();
            controller.getAll();
          },
          child: ListView.builder(
            itemCount: controller.bookList.length,
            itemBuilder: (context, index) {
              final item = controller.bookList[index];
              return BookTile(book: item);
            },
          ),
        ),
      ),
    );
  }
}
