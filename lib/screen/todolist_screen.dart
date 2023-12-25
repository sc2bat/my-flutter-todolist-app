import 'package:flutter/material.dart';
import 'package:my_flutter_todolist_app/screen/create_screen.dart';
import 'package:my_flutter_todolist_app/todolist.dart';

class TodolistScreen extends StatefulWidget {
  const TodolistScreen({super.key});

  @override
  State<TodolistScreen> createState() => _TodolistScreenState();
}

class _TodolistScreenState extends State<TodolistScreen> {
  final todolists = [
    Todo(id: 1, title: 'title1', subtitle: 'subtitle1', dateTime: 20231215),
    Todo(id: 2, title: 'title2', subtitle: 'subtitle2', dateTime: 20231215),
    Todo(id: 3, title: 'title3', subtitle: 'subtitle3', dateTime: 20231215),
    Todo(id: 4, title: 'title4', subtitle: 'subtitle4', dateTime: 20231215),
    Todo(id: 5, title: 'title5', subtitle: 'subtitle5', dateTime: 20231215),
    Todo(id: 6, title: 'title6', subtitle: 'subtitle6', dateTime: 20231215),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todolist'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('title1'),
            subtitle: Text('subtitle1'),
          ),
          ListTile(
            title: Text('title1'),
            subtitle: Text('subtitle1'),
          ),
          ListTile(
            title: Text('title1'),
            subtitle: Text('subtitle1'),
          ),
          ListTile(
            title: Text('title1'),
            subtitle: Text('subtitle1'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
