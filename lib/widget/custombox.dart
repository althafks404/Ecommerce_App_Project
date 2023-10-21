import 'package:flutter/material.dart';

class customBox extends StatelessWidget{
  final icon;
  final text;
  customBox(this.icon,this.text);
  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      height:50,
      width:180,
      decoration: BoxDecoration(
        color: Colors.yellow.shade200,
        borderRadius: BorderRadius.circular(14)
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Icon(icon)
        ],
      )
    );
  }
}