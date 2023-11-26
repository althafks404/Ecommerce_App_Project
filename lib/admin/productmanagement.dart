import 'package:flutter/material.dart';

class ProductManagement extends StatefulWidget {
  const ProductManagement({super.key});

  @override
  State<ProductManagement> createState() => _ProductManagementState();
}

class _ProductManagementState extends State<ProductManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: (
        Column(
          children:[
            customappbar(),
          ]
        )
        ),
      )
    );
  }

  Widget customappbar() => Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        Text(" Product Management ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21)),
        InkWell(onTap: () {}, child:CircleAvatar(backgroundColor: Colors.blue,child:Text("AD",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),radius: 22,)
        )
      ],
    ),
  );
}

void main(){
  runApp(MaterialApp(home:ProductManagement(),));
}