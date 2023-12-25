import 'package:flutter/material.dart';
import 'package:my_flutter_todolist_app/main.dart';
import 'package:my_flutter_todolist_app/model/todolist.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Write Todolist'),
        actions: [
          IconButton(
            onPressed: () async {
              await todos.add(
                Todo(
                  id: 111,
                  title: _textController.text,
                  dateTime: DateTime.now().millisecondsSinceEpoch,
                ),
              );
              if (mounted) {
                Navigator.pop(context);
              }
            },
            icon: const Icon(Icons.done),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _textController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintStyle: TextStyle(color: Colors.grey[600]),
            hintText: 'write todolist',
            filled: true,
            fillColor: Colors.white60,
          ),
        ),
      ),
    );
  }
}
