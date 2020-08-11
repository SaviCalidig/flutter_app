import 'package:flutter/material.dart';
import 'package:flutter_app/Model/timeinfoIncrement.dart';
import 'package:flutter_app/Model/timerinfo.dart';
import 'package:flutter_app/Screens/Timer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => timerinfo(),

        ),
        ChangeNotifierProvider(
          create: (context) => timerinfoincrement(),

        ),
      ],
      child:  timer(),
    ),
    );}}