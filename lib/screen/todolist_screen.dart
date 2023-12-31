import 'package:flutter/material.dart';
import 'package:my_flutter_todolist_app/main.dart';
import 'package:my_flutter_todolist_app/screen/create_screen.dart';

import '../widget/todo_item_widget.dart';

class TodolistScreen extends StatefulWidget {
  const TodolistScreen({super.key});

  @override
  State<TodolistScreen> createState() => _TodolistScreenState();
}

class _TodolistScreenState extends State<TodolistScreen> {
  // final todolists = [
  //   Todo(id: 1, title: 'title1', subtitle: 'subtitle1', dateTime: 20231215),
  //   Todo(id: 2, title: 'title2', subtitle: 'subtitle2', dateTime: 20231215),
  //   Todo(id: 3, title: 'title3', subtitle: 'subtitle3', dateTime: 20231215),
  //   Todo(id: 4, title: 'title4', subtitle: 'subtitle4', dateTime: 20231215),
  //   Todo(id: 5, title: 'title5', subtitle: 'subtitle5', dateTime: 20231215),
  //   Todo(id: 6, title: 'title6', subtitle: 'subtitle6111', dateTime: 20231215),
  // ];

  @override
  Widget build(BuildContext context) {
    // todolists.sort((a, b) => a.id.compareTo(b.id));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todolist'),
      ),
      body: ListView(
        // children: todolists
        children: todos.values
            .map(
              (e) => TodoItemWidget(
                todo: e,
                onTapFunction: (todo) async {
                  logger.info('qwerasdf ${e.isDone}');
                  e.isDone = !e.isDone;
                  await todo.save();
                  logger.info('qwerasdf save');

                  setState(() {
                    logger.info('qwerasdf setstate');
                  });
                },
                onTapDeleteFunction: (todo) async {
                  await todo.delete();
                  setState(() {});
                },
              ),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateScreen(),
            ),
          );
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
