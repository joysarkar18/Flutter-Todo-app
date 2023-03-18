import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TTitle extends StatelessWidget {
  const TTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 34),
      child: Text(
        "TODO LIST",
        style: TextStyle(
            fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w600),
      ),
      width: double.infinity,
    );
  }
}
