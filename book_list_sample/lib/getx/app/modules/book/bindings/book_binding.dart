import 'package:book_list_sample/getx/app/data/repository/book_repository.dart';
import 'package:book_list_sample/getx/app/modules/book/controllers/book_controller.dart';
import 'package:get/get.dart';

class BookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookController>(
      () => BookController(repository: BookRepository()),
    );
  }
}
