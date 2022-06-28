import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

import '../models/todo.dart';

class  TodoProviderSqlite {

  late Database database;

  Future initDb() async {
    database = await openDatabase('my_db.db');
    await database.execute('CRATE TABLE IF NOT EXISTS MyTodo (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, title TEXT, description TEXT');
  }

  Future<List<Todo>> getTodos() async {
    List<Todo> todos = [];
    List<Map> maps = await database.query('MyTodo', columns: ['id, title, description']);
    maps.forEach((element) {
      todos.add(Todo.fromMap(element));
    });
    return todos;
  }

  Future<Todo?> getTodo(int id) async {
    List<Map> map = await database.query('MyTodo', columns: ['id', 'title', 'description']);
    if(map.isNotEmpty) {
      return Todo.fromMap(map[0]);
    }
  }

  Future addTodo(Todo todo) async {
    await database.insert('MyTodo', todo.toMap());
  }

  Future deleteTodo(int id) async {
    await database.delete('MyTodo', where: 'id = ?', whereArgs: [id]);
  }

  Future updateTodo(Todo todo) async {
    await database.update('MyTodo', todo.toMap(), where: 'id = ?', whereArgs: [todo.id]);
  }

}