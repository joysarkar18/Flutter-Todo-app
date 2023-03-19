import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todo.dart';

class ListItems extends StatelessWidget {
  final Todo todo;
  final onChangedTodo;
  final onDelete;
  const ListItems(
      {super.key,
      required this.todo,
      required this.onChangedTodo,
      required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 23, right: 23, top: 12),
      child: ListTile(
        onTap: () {
          onChangedTodo(todo);
        },
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15))),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.amber,
          size: 33,
        ),
        title: Text(
          todo.todoTask,
          style: TextStyle(
            fontSize: 22,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {
            print("hii");
            onDelete(todo.id);
          },
        ),
      ),
    );
  }
}
