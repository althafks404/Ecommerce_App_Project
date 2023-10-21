import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profile extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Center(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height:250),
            Padding(
              padding:const EdgeInsets.only(left:20,top:40,bottom:15),
              child:Text("Profile Settings",style:TextStyle(fontSize: 25))
            ),
            ListTile(
              leading: CircleAvatar(radius:30,backgroundImage:NetworkImage('https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',),),
              title:Text("User Name"),
              subtitle: Text("username@gmail.com"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward)),
            ),
            Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child:
                      ListTile(
                       leading: FaIcon(FontAwesomeIcons.gear),
                       title:Text("Settings"),
                      ),
                  ),

                  InkWell(
                    onTap: () {},
                    child:
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.language),
                      title:Text("Language"),
                    ),
                  ),

                  InkWell(
                    onTap: () {},
                    child:
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.circleInfo),
                      title:Text("Get Help"),

                    ),
                  ),

                  InkWell(
                    onTap: () {},
                    child:
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.info),
                      title:Text("About"),
                    ),
                  ),

                  InkWell(
                    onTap: () {},
                    child:
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.arrowRightFromBracket),
                      title:Text("Logout"),
                    ),
                  ),



                ],
              ),
            )
      ]
    )
      )
      )
    );
  }
}

void main(){
  runApp(MaterialApp(home:profile(),));
}