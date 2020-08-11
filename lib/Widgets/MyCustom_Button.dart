import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustom_Button extends StatelessWidget{
  MyCustom_Button({this.text,this.onpressed});
  final String text;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: RaisedButton(
        onPressed: onpressed,
        child: Text(text),
      ),
    );
  }
}