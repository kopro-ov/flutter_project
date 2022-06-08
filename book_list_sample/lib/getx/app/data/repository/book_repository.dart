import '../model/book.dart';

class BookRepository {
  // final BookApiClient apiClient;
  // BookRepository({required this.apiClient}) : assert(apiClient != null);

  final Book _dummayBook = Book(
    title: '패키지 없이 R로 구현하는 심층 강화 학습',
    subtitle: '1',
    description: '1',
    image:
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
  );

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

  get() {
    return Book.fromJson(_dummayBook.toJson());
  }

  getAll() {
    //return apiClient.getAll();
    print(_dummyBooks);
    List<Book> list =
        _dummyBooks.map((model) => Book.fromJson(model.toJson())).toList();
    return list;
  }
}
