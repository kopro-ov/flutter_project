part of './app_pages.dart';

abstract class Routes {
  static const INITIAL = '/';
  static const BOOKS = _Paths.BOOKS;
  static String BOOK_DETAILS(String title) => '$BOOKS/$title';
}

abstract class _Paths {
  static const BOOKS = '/books';
  static const BOOK_DETAIL = '/:title';
}
