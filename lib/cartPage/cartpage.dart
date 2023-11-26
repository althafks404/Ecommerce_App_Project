
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class cartpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            customAppBar(context),
            SizedBox(height:20),
            Slidable(
              startActionPane: ActionPane(motion: ScrollMotion(), children: [
                    SlidableAction(onPressed: (context) {
                    },backgroundColor: Colors.red,icon: Icons.delete,),
              ]
              ),
              child:Items()
            ),

          ],
        ),
      ),
    );
  }

  Widget customAppBar(context) => Padding(
    padding: const EdgeInsets.only(top:30,left: 18),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.chevron_left,size: 30,)),
        SizedBox(width:130),
        Text("Cart",style: TextStyle(fontSize: 25),)

      ],
    ),
  );

  Widget Items() => Card(

    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25)
    ),
    child: Row(
      children: [

        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Container(
            height:160,
            width:150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1579586337278-3befd40fd17a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YXBwbGUlMjB3YXRjaHxlbnwwfHwwfHx8MA%3D%3D'),fit: BoxFit.cover,)
            ),
          ),
        ),
        Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Apple Watch series 7", style: TextStyle(fontSize: 21)),
            SizedBox(height: 20,),
            Text("APPLE"),
            SizedBox(height:20),
            Text("Rs: 45000",style:TextStyle(fontSize: 23,fontWeight: FontWeight.bold))

          ],
        )

      ],
    ),
  );

}

void main() {
  runApp(MaterialApp(home:cartpage(),));
}