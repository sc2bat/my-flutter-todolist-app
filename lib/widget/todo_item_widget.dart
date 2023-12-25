import 'package:flutter/material.dart';
import 'package:my_flutter_todolist_app/model/todolist.dart';

class TodoItemWidget extends StatelessWidget {
  final Todo todo;

  const TodoItemWidget({
    super.key,
    required this.todo,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.title ?? 'none'),
      subtitle: Text(todo.subtitle ?? 'none'),
    );
  }
}
