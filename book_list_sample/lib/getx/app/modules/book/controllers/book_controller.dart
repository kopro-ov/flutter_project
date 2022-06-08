import 'package:get/get.dart';
import '../../../data/model/book.dart';
import '../../../data/repository/book_repository.dart';

class BookController extends GetxController {
  final BookRepository repository;
  BookController({required this.repository});

  final _book = Book().obs;
  final _books = <Book>[].obs;

  get book => _book.value;
  get bookList => _books.value;

  get() {
    repository.get().then((data) {
      _book.value = data;
    });
  }

  getAll() {
    repository.getAll().then((data) {
      _books.value = data;
    });
  }
}
