import 'package:book_list_sample/getx/app/modules/book/bindings/book_binding.dart';
import 'package:book_list_sample/getx/app/modules/book/page/book_detail_screen.dart';
import 'package:book_list_sample/getx/app/modules/book/page/book_list_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOOKS;

  static final routes = [
    GetPage(
      name: _Paths.BOOKS,
      page: () => const BookListPage(),
      title: 'BOOKS',
      transition: Transition.zoom,
      participatesInRootNavigator: false,
      bindings: [BookBinding()],
      children: [
        GetPage(
          name: _Paths.BOOK_DETAIL,
          page: () => BookDetailPage(),
          bindings: [BookBinding()],
        ),
      ],
    ),
  ];
}
