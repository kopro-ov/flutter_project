import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/book.dart';

//nossa url base
String baseUrl = 'https://..';

class MyApiClient {
  final http.Client httpClient;
  MyApiClient({required this.httpClient});

  getAll() async {
    try {
      var response = await httpClient.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<Book> lists =
            jsonResponse.map((model) => Book.fromJson(model)).toList();
        return lists;
      } else
        print('erro');
    } catch (_) {}
  }
}
