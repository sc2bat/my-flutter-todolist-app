import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'screen/todolist_screen.dart';

Future<void> main() async {
  await Hive.initFlutter();

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
