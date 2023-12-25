import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_flutter_todolist_app/todolist.dart';

import 'screen/todolist_screen.dart';

late Box<Todo> todos;

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  // Box<Todo> todos = await Hive.openBox<Todo>('todolist.db');
  todos = await Hive.openBox<Todo>('todolist.db');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my flutter todolist app',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const TodolistScreen(),
    );
  }
}
