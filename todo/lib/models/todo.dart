class Todo {
  late int? id;
  late String title;
  late String name;

  Todo({this.id, required this.title, required this.name});


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'name': name,
    };
  }

  Todo.fromMap(Map<String, dynamic>? map) {
    id = map?['id'];
    title = map?['tite'];
    name = map?['name'];
  }

}