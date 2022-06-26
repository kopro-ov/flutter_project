import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo/models/todo.dart';
import 'package:todo/providers/todo_provider.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<Todo> todos = [];
  TodoProvider todoProvider = TodoProvider();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      todos = todoProvider.getTods();
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('오늘의 할일'),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.book),
                  Text('뉴스'),
                ],
              ),
            ),
          )
        ],
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todos[index].title),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SimpleDialog(
                          title: Text('할 일'),
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Text('제목 : ' + todos[index].title),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Text('내용 : ' + todos[index].description),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  trailing: SizedBox(
                    width: 80,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: InkWell(
                            child: const Icon(Icons.edit),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  String title = todos[index].title;
                                  String description = todos[index].description;
                                  return AlertDialog(
                                    title: Text('할 일 수정하기'),
                                    content: Container(
                                      height: 200,
                                      child: Column(
                                        children: [
                                          TextField(
                                            onChanged: (value) {
                                              title = value;
                                            },
                                            decoration: InputDecoration(
                                              hintText: todos[index].title,
                                            ),
                                          ),
                                          TextField(
                                            onChanged: (value) {
                                              description = value;
                                            },
                                            decoration: InputDecoration(
                                              hintText:
                                                  todos[index].description,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () async {
                                          Todo newTodo = Todo(
                                              id: todos[index].id,
                                              title: title,
                                              description: description);
                                          setState(() {
                                            todoProvider.updateTodo(newTodo);
                                          });
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('수정'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('취소'),
                                      )
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: InkWell(
                            child: const Icon(Icons.delete),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    String title = todos[index].title;
                                    String description =
                                        todos[index].description;
                                    return AlertDialog(
                                      title: Text('할 일 삭제'),
                                      content: Container(
                                        child: Text('삭제하시겠습니까?'),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () async {
                                            setState(() {
                                              todoProvider.deleteTodo(todos[index].id ?? 0);
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('삭제'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('취소'),
                                        )
                                      ],
                                    );
                                  });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: todos.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                String title = '';
                String description = '';
                return AlertDialog(
                  title: Text('할 일 추가하기'),
                  content: Container(
                    height: 200,
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (value) {
                            title = value;
                          },
                          decoration: InputDecoration(labelText: '제목'),
                        ),
                        TextField(
                          onChanged: (value) {
                            description = value;
                          },
                          decoration: InputDecoration(labelText: '설명'),
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          todoProvider.addTodo(
                              Todo(title: title, description: description));
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text('추가'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('취소'),
                    )
                  ],
                );
              });
        },
        child: const Text(
          '+',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
