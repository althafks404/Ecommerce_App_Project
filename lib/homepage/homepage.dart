import 'package:ecommerceproject/customWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
@override
var buttonColor;
int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height:30),

                  
                  Padding(
                    padding: const EdgeInsets.all(17),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey
                      ),
                      child:TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: "Search"
                        ),
                      )
                    ),
                  ),

              customCard(),

              Padding(
                padding: const EdgeInsets.only(right:220,bottom:30),
                child: Text("Category",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width:15),
                    category('https://cdn.icon-icons.com/icons2/3150/PNG/512/clothing_shop_bag_tshirt_icon_192654.png',"Clothes"),
                    SizedBox(width:15),
                    category('https://cdn-icons-png.flaticon.com/512/3556/3556561.png','Electronics'),
                    SizedBox(width:15),
                    category('https://cdn-icons-png.flaticon.com/512/3501/3501241.png','Cosmetics'),
                    SizedBox(width:15),
                    category('https://cdn-icons-png.flaticon.com/512/4598/4598444.png', 'Footware'),
                    SizedBox(width:15),
                    category('https://cdn-icons-png.flaticon.com/512/7662/7662260.png','Grocery'),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text(
                  "FLASH SALE",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic ,color: Colors.red.shade300),
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    custombutton('All'),
                    SizedBox(width:15),
                    custombutton('Trending'),
                    SizedBox(width:15),
                    custombutton('normal'),
                    SizedBox(width:15),
                    custombutton('popular')
                  ],
                ),
              )
            ],
          ),
        )
    );
  }

  Widget category(image,text) => Column(
    children: [
      InkWell(
       onTap: () {},
       child: CircleAvatar(
         radius:35,
         backgroundColor: Colors.black54,
         child: CircleAvatar(
           radius: 30,
           backgroundImage: NetworkImage(image),
           backgroundColor: Colors.white,
         ),
       ),
      ),

      Text(text,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)

    ],
  );

  custombutton(text) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),

        onPressed: () {
          changeColor();
        }, child: Text(text,style:TextStyle(fontSize: 18,color: Colors.black)));
  }
changeColor(){
  setState(() {
    buttonColor = Colors.orange;
  });
}
}
void main() {
  runApp(
      MaterialApp(debugShowCheckedModeBanner:false,home:homepage(),));
}

