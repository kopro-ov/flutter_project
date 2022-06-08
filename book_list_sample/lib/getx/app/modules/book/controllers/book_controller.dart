import 'package:get/get.dart';
import '../../../data/model/book.dart';
import '../../../data/repository/book_repository.dart';

class BookController extends GetxController {
  final BookRepository repository;
  BookController({required this.repository});

  final _book = Book(title: '', subtitle: '', image: '', description: '').obs;
  final _books = <Book>[].obs;

  get book => _book.value;
  get bookList => _books.value;

  get() {
    _book.value = repository.get();
    Get.log('book');
  }

  getAll() {
    _books.value = repository.getAll();
  }
}
