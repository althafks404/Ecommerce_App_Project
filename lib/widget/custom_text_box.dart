import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textbox extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
          padding: const EdgeInsets.all(10),
          color:Colors.white,
          child:TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email or username"
            ),
          )
      ),
    );
  }
}