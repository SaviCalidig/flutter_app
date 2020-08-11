import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/Model/timeinfoIncrement.dart';
import 'package:flutter_app/Model/timerinfo.dart';
import 'package:flutter_app/Screens/InheritedWidgets.dart';
import 'package:flutter_app/Widgets/MyCustom_Button.dart';
import 'package:flutter_app/Widgets/MyCustom_Dialog.dart';
import 'package:flutter_app/Widgets/MyCustom_TextField.dart';
import 'package:provider/provider.dart';

class timer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Timer();
  }
}
class _Timer extends State<timer>{
  int initialvalue=60;
  String value;
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      var timein=Provider.of<timerinfo>(context,listen: false);

      timein.UpdatereamingTime();
      var timen=Provider.of<timerinfoincrement>(context,listen: false);
      timen.UpdatereamingTime();
    });
    print(value);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Center(child: Column(children: <Widget>[
          Center(child: Icon(Icons.watch_later,size: 50.0,),),
          Center(
            child: Consumer<timerinfo>(builder: (context,data,child){
              return Text(data.getRemainitime().toString(),style: TextStyle(fontSize: 50.0),);
            }),
          ),
          Center(
            child: Consumer<timerinfoincrement>(builder: (context,data,child){
              return Text(data.getRemainitime().toString(),style: TextStyle(fontSize: 50.0),);
            }),
          ),
          MyCustom_TextField(hintText: "my custom Filed",onChanged: (Value){
            value=Value.toString();
            print(value);
          },validate: true,),
          MyCustom_Button(text: "Click",onpressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return  InheritedWidgets();
            }));
          },),



          buildRaisedButton

        ],),),
      ),
    );
  }

  RaisedButton get buildRaisedButton {
    return RaisedButton(
          onPressed: (){
           print(value);
          },
          child:Text("Click ME") ,
          padding: EdgeInsets.all(5.0),
          color: Colors.transparent,
          textColor:Colors.black87,
        );
  }

}
