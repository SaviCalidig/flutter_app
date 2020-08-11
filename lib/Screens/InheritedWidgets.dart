import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/CounterProvider.dart';
import 'package:flutter_app/Model/MyCounter.dart';
import 'package:flutter_app/Screens/classes/Class1.dart';
import 'package:flutter_app/Screens/classes/Class2.dart';

class InheritedWidgets extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InheritedWidgets();
  }
}
class _InheritedWidgets extends State<InheritedWidgets>{
  var myCounter=MyCounter(0);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CounterProvider(
      myCounter: myCounter,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Class1(),
                Class2(),
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: (){
                    setState(() {
                      myCounter.increaseCount();
                    });
                  },
                )

              ],
            ),

          ),

        ),

      ),
    );
  }

}