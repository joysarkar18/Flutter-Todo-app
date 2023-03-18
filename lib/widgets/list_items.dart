import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 23, right: 23, top: 12),
      child: const ListTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15))),
        tileColor: Colors.white,
        leading: Icon(
          Icons.check_box,
          color: Colors.amber,
          size: 33,
        ),
        title: Text(
          "todo items",
          style: TextStyle(fontSize: 18),
        ),
        trailing: Icon(
          Icons.delete,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
