import 'package:ecommerceproject/pages/loginpage/loginpage.dart';
import 'package:flutter/material.dart';
import '../../widget/custombox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body:Column(
        children: [
          SizedBox(height:100),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60),bottomRight: Radius.circular(40))
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height:8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText("E"),
                      SizedBox(width:20),
                      customText("C"),
                      SizedBox(width:20),
                      customText("O"),
                      SizedBox(width:20),
                      customText("M"),
                    ],
                  ),
                  Padding(
                    padding:const EdgeInsets.all(15),
                    child:Text("Express Login via Google or Facebook",style:TextStyle(fontSize: 15))
                  ),
                  SizedBox(height:10),
                  Padding(
                    padding:const EdgeInsets.all(15),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customBox(Icons.facebook,"Facebook"),
                        customBox(FontAwesomeIcons.google,"Google")
                      ],
                    )
                  ),
                  Divider(
                    thickness: 4,
                    height:30,
                    color:Colors.yellowAccent.shade200,
                  ),
                  SizedBox(height:10),
                  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 25),
                    child:Container(
                      padding:const EdgeInsets.all(10),
                      color:Colors.yellow.shade100,
                      child:TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:"Email",
                        ),
                      )
                    )
                  ),
                  SizedBox(height:15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child:Container(
                      padding:const EdgeInsets.all(10),
                      color:Colors.yellow.shade100,
                      child:TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          suffixIcon: IconButton(onPressed: () {},icon:Icon(Icons.visibility,size:25))
                        ),
                      )
                    )
                  ),
                  SizedBox(height:15),
                  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 25),
                    child:Container(
                      padding:const EdgeInsets.all(10),
                      color:Colors.yellow.shade100,
                      child:TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border:InputBorder.none,
                          hintText: "conform Password",
                          suffixIcon: IconButton(onPressed: () {},icon:Icon(Icons.visibility,size: 25,))
                        ),
                      )
                    )
                  ),

                  SizedBox(height:10),

                  TextButton(onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage() ));
                  }, child: Text("Already a user? please log in")),

                  
                ],
              )
            ),
          )
        ],
      )
    );
  }
}

Widget customText(text){
  return Text(
    text,style:TextStyle(fontSize: 50)
  );
}

void main() {
  runApp(MaterialApp(home:Register(),));
}