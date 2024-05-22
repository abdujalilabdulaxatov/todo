import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home_screen.dart';

void main(List<String> args) {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
