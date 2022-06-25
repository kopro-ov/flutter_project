import '../models/todo.dart';

class TodoProvider {
  List<Todo> dummyTodos = [
    new Todo(id: 1, title: '1. 하하', description: '즐겁게 살아요'),
    new Todo(id: 2, title: '2. 하하', description: '행복하게 살아요'),
  ];

  List<Todo> getTods() {
    return dummyTodos;
  }

  Todo getTodo(int id) {
    return dummyTodos[id];
  }

  Todo addTodo(Todo todo) {
    Todo newTodo = Todo(
      id: dummyTodos.length + 1,
      title: todo.title,
      description: todo.description,
    );
    dummyTodos.add(newTodo);
    return newTodo;
  }

  void deleteTodo(int id) {
    for(int i=0; i<dummyTodos.length; i++) {
      if(dummyTodos[i].id == id) {
        dummyTodos.remove(dummyTodos[i]);
        break;
      }
    }
  }

  void updateTodo(Todo todo) {
    for(int i=0; i<dummyTodos.length; i++) {
      if(dummyTodos[i].id == todo.id) {
        dummyTodos[i] = todo;
        break;
      }
    }
  }

}
