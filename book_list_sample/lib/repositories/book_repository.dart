import 'package:book_list_sample/models/book.dart';

class BookRepository {
  final List<Book> _dummyBooks = [
    Book(
      title: '패키지 없이 R로 구현하는 심층 강화 학습',
      subtitle: '1',
      description: '1',
      image:
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    ),
    Book(
      title: '패키지 없이 R로 구현하는 심층 강화 학습',
      subtitle: '2',
      description: '2',
      image:
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    ),
    Book(
      title: '패키지 없이 R로 구현하는 심층 강화 학습',
      subtitle: '3',
      description: '3',
      image:
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    ),
    Book(
      title: '패키지 없이 R로 구현하는 심층 강화 학습',
      subtitle: '4',
      description: '4',
      image:
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    ),
    Book(
      title: '패키지 없이 R로 구현하는 심층 강화 학습',
      subtitle: '5',
      description: '5',
      image:
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    ),
  ];

  List<Book> getBooks() {
    return _dummyBooks;
  }
}
