import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

class productpage extends StatelessWidget {
  const productpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back,color:Colors.black)),
        actions: [
         IconButton(onPressed: () {}, icon: Icon(Icons.star,color:Colors.black))
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body:SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(height:20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.red,
                image:DecorationImage(
                  image:NetworkImage('https://images.unsplash.com/photo-1580910051074-3eb694886505?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHBob25lfGVufDB8fDB8fHww'),fit:BoxFit.cover
                )
              ),
              height:400,
              width:450,
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("iPhone X",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text("100000",style: TextStyle(fontSize: 20),)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("iPhone X is the future of the smartphone. It is packed with"
                  "incredible new technologies, like the innovative TrueDepth camera s"
                  "ystem, beautiful Super Retina display and super fast A11 Bionic chi"
                  "p with neural engine,” said Philip Schiller, Apple’s senior vice pr"
                  "esident of Worldwide Marketing. “iPhone X enables fluid new user ex"
                  "periences — from unlocking your iPhone with Face ID, to playing imm"
                  "ersive AR games, to sharing Animoji in Messages — it is the beginni"
                  "   ng of the next ten years for iPhone")
            ),
            SizedBox(height:50),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customIcomButton("Add to Cart",Icons.shopping_cart),
                customIcomButton("Buy Now", FontAwesomeIcons.cashRegister)
              ],
            ),
            SizedBox(height:30),
            Text("Similar Products",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height:25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SimilarProduct("https://m-cdn.phonearena.com/images/review/5440-wide-two_1200/Apple-iPhone-14-Pro-vs-iPhone-14-one-is-new-the-other-is-not.jpg", 'Iphone 14','89000'),
                SizedBox(width:30),
                SimilarProduct("https://m-cdn.phonearena.com/images/review/5440-wide-two_1200/Apple-iPhone-14-Pro-vs-iPhone-14-one-is-new-the-other-is-not.jpg", 'Iphone 14','89000'),
                SizedBox(width:30),
                SimilarProduct("https://m-cdn.phonearena.com/images/review/5440-wide-two_1200/Apple-iPhone-14-Pro-vs-iPhone-14-one-is-new-the-other-is-not.jpg", 'Iphone 14','89000'),
                SizedBox(width:30),
                SimilarProduct("https://m-cdn.phonearena.com/images/review/5440-wide-two_1200/Apple-iPhone-14-Pro-vs-iPhone-14-one-is-new-the-other-is-not.jpg", 'Iphone 14','89000')
              ],
            )),
            SizedBox(height:300)
          ],
        )
      )
    );
  }
}

void main(){
  runApp(MaterialApp(home:productpage(),));
}

Widget customIcomButton(text,IconData icon) =>  ProgressButton.icon(iconedButtons: {
  ButtonState.idle:
  IconedButton(
      text: text,
      icon: Icon(icon,color: Colors.white),
      color: Colors.black),
  ButtonState.loading:
  IconedButton(
      text: "Loading",
      color: Colors.deepPurple.shade700),
  ButtonState.fail:
  IconedButton(
      text: "Failed",
      icon: Icon(Icons.cancel,color: Colors.white),
      color: Colors.red.shade300),
  ButtonState.success:
  IconedButton(
      text: "Success",
      icon: Icon(Icons.check_circle,color: Colors.white,),
      color: Colors.green.shade400)
},
    onPressed: () {},
    state: ButtonState.idle);

Widget SimilarProduct(customImage,productname,productprice) => InkWell(
  onTap:() {},
  child:Container(
    height:250,
    width:200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15)
    ),
    child:Column(
      children: [
        Image.network(customImage,fit:BoxFit.cover),
        SizedBox(height:30),
        Text(productname,style:TextStyle(fontSize: 20)),
        Text(productprice,style:TextStyle(fontSize: 15))
      ],
    )
  ),
);