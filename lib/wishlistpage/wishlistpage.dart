import 'dart:html';

import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home:WishList(),));
}
class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: [
          customAppbar(context),
            SizedBox(height:30),
            customList('https://images.unsplash.com/photo-1620799140408-edc6dcb6d633?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8VHNoaXJ0fGVufDB8fDB8fHww', 'Tshirt', 'Rs: 2000'),
            customList('https://images.unsplash.com/photo-1618354691373-d851c5c3a990?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8VHNoaXJ0fGVufDB8fDB8fHww','Polo','Rs 1500'),
        ],
      ),
      ),
    );
  }
  Widget customAppbar(context) => Padding(
    padding: const EdgeInsets.all(3.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back, size: 30,)),
        Text("WishList",style: TextStyle(fontSize: 25),),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),


      ],
    ),
  );

  Widget customList(imageurl,listText,price) =>ListTile(
  leading: Image.network(imageurl),
  title: Text(listText,style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
  trailing: Text(price,style:TextStyle(fontSize: 20,)),  
  );
  
}
