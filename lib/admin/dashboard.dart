import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
  
  Widget customappbar() => Padding(
    padding: EdgeInsets.all(12),
    child: Row(
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        CircleAvatar(backgroundColor: Colors.white,radius: 18,child:Text("AD",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)))
      ],
    ),
  );

  Widget customCard()=> Container(

  );
  
}
