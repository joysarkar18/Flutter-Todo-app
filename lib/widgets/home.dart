import 'package:flutter/foundation.dart';
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
  final _todoColtrolar = TextEditingController();

  void _toChangedHandle(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _onDelete(String iid) {
    setState(() {
      todoList.removeWhere((element) => element.id == iid);
    });
  }

  void _addTodoItem(String ttask) {
    setState(() {
      todoList.add(Todo(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          todoTask: ttask));
    });
    _todoColtrolar.clear();
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
      body: Stack(
        children: [
          Container(
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            spreadRadius: 0,
                            offset: Offset(0.0, 0.0))
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: _todoColtrolar,
                    decoration: InputDecoration(
                        hintText: "Add a new todo item",
                        border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, bottom: 10),
                child: ElevatedButton(
                  child: Text("+", style: TextStyle(fontSize: 46)),
                  onPressed: () {
                    _addTodoItem(_todoColtrolar.text);
                  },
                  style: ElevatedButton.styleFrom(elevation: 10),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
