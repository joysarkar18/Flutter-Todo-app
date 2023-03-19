import 'package:flutter/material.dart';
import 'package:todo_app/widgets/search.dart';
import 'package:todo_app/widgets/todo.dart';
import '../widgets/title.dart';
import '../color/colors.dart';
import '../widgets/list_items.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Todo> todoList = Todo.todoList();

  void _toChangedHandle(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _onDelete(int id) {
    setState(() {
      todoList.removeAt(id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backWhite,
      appBar: AppBar(
        backgroundColor: backWhite,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
            Container(
                height: 40,
                width: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/openai.png'),
                ))
          ],
        ),
      ),
      body: Container(
        child: Column(children: [
          Expanded(
            child: ListView(
              children: [
                Search(),
                TTitle(),
                for (Todo todo in todoList)
                  ListItems(
                      todo: todo,
                      onChangedTodo: _toChangedHandle,
                      onDelete: _onDelete)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
