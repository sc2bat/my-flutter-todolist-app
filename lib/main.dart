import 'package:flutter/material.dart';

import 'screen/todolist_screen.dart';

void main() {
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
