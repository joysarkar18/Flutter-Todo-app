import 'package:flutter/material.dart';
import 'package:todo_app/widgets/search.dart';
import '../widgets/title.dart';
import '../color/colors.dart';
import '../widgets/list_items.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                ListItems(),
                ListItems(),
                ListItems(),
                ListItems(),
                ListItems(),
                ListItems(),
                ListItems(),
                ListItems(),
                ListItems(),
                ListItems(),
                ListItems(),
                ListItems(),
                ListItems(),
                ListItems(),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
