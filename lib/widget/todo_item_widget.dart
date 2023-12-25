import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_flutter_todolist_app/model/todolist.dart';

class TodoItemWidget extends StatelessWidget {
  final Todo todo;
  final Function(Todo) onTapFunction;
  final Function(Todo) onTapDeleteFunction;

  const TodoItemWidget({
    super.key,
    required this.todo,
    required this.onTapFunction,
    required this.onTapDeleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: todo.isDone
          ? Icon(
              Icons.check_circle,
              color: Colors.green[200],
            )
          : const Icon(Icons.check_circle_outline),
      onTap: () {
        onTapFunction(todo);
      },
      title: Text(
        todo.title ?? 'none',
        style: TextStyle(color: todo.isDone ? Colors.grey : Colors.black),
      ),
      subtitle: Text(
        DateFormat.yMMMd()
            .format(DateTime.fromMicrosecondsSinceEpoch(todo.dateTime ?? 0)),
        style: TextStyle(color: todo.isDone ? Colors.grey : Colors.black),
      ),
      trailing: todo.isDone
          ? GestureDetector(
              child: const Icon(Icons.delete_forever),
              onTap: () {
                onTapDeleteFunction(todo);
              },
            )
          : null,
    );
  }
}
