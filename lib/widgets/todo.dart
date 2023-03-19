import 'package:flutter/material.dart';

class Todo {
  int id;
  String todoTask;
  bool isDone;

  Todo({required this.id, required this.todoTask, this.isDone = false});

  static List<Todo> todoList() {
    return [
      Todo(id: 0, todoTask: "jjjjj"),
      Todo(id: 1, todoTask: "kiii"),
      Todo(id: 2, todoTask: "liii"),
      Todo(id: 3, todoTask: "miii"),
      Todo(id: 4, todoTask: "niii"),
      Todo(id: 5, todoTask: "0iii"),
      Todo(id: 6, todoTask: "piii"),
    ];
  }
}
