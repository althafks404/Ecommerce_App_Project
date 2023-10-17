import 'package:ecommerceproject/loginpage/widget/custombox.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade500,
      body:Column(children :[
        SizedBox(height:100),
        Expanded(
              child:Container(
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight:Radius.circular(60),bottomRight: Radius.circular(40)),
                ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height:8),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText('E'),
                      SizedBox(width:20),
                      customText('C'),
                      SizedBox(width:20),
                      customText('O'),
                      SizedBox(width:20),
                      customText('M'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child:Text("Express Login via Google and Facebook",style:TextStyle(fontSize: 15)),
                  ),

                  SizedBox(height:10),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customBox(Icons.facebook, "Facebook"),
                        customBox(Icons.facebook, "Google"),
                      ],
                    ),
                  ),

                  Divider(
                      thickness: 4,
                      height:30,
                      color:Colors.yellow.shade200
                  ),
                  SizedBox(height:10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        color:Colors.yellow.shade100,
                        child:TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email or username"
                          ),
                        )
                    ),
                  ),
                  SizedBox(height:15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        color:Colors.yellow.shade100,
                        child:TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.visibility,size: 25,color: Colors.yellow,))
                          ),
                        )
                    ),
                  ),

                  Text("Forget password ?"),

                  SizedBox(height:30),

                  Container(
                    height:60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow.shade200,
                    ),
                    alignment: Alignment.center,
                    child:Text("Sing in"),
                  ),

                ],
              ))
              ),
            ]
      )
      );
  }
}

void main(){
  runApp(MaterialApp(home:LoginPage(),));
}

Widget customText(text) {
  return Text(
    text,style: TextStyle(fontSize: 50,),
  );
}