import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Class3.dart';


class Class2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Class 2",style: TextStyle(fontSize: 20.0),

        ),
        Class3(),

      ],
    );



  }
}