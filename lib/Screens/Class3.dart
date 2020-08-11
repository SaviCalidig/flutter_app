import 'package:flutter/material.dart';
import 'package:flutter_app/Model/CounterProvider.dart';
import 'package:flutter_app/Model/MyCounter.dart';

class Class3 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    MyCounter myCounter=CounterProvider.of(context).myCounter;
   return Text("Class 3:${myCounter.counter}",style: TextStyle(fontSize: 20.0),);
  }
}