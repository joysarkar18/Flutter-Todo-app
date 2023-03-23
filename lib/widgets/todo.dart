import 'package:flutter/material.dart';

class Todo {
  String id;
  String todoTask;
  bool isDone;

  Todo({required this.id, required this.todoTask, this.isDone = false});

  static List<Todo> todoList() {
    return [];
  }
}
