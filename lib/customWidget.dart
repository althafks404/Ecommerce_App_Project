import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class customCard extends StatelessWidget {
  const customCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text("Hello"),
                SizedBox(height:5),
                Text("Hai"),
                SizedBox(height: 5,),
                TextButton(onPressed: () {}, child:Text("Buy Now"))
              ],
            ),

            Container(
              height:300,
              width:250,
            child:Image.network('https://www.91-img.com/pictures/143993-v4-apple-iphone-14-mobile-phone-large-4.jpg',fit:BoxFit.cover)
            )
          ],
        )
      ),
    );
  }
}
