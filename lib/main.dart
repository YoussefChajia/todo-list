import 'package:flutter/material.dart';
import 'package:todo_app/UI/routes.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App',
      home: Routes(),
    );
  }
}
