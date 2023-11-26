import 'package:ecommerceproject/homepage/homepage.dart';
import 'package:ecommerceproject/searchpage/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class bottomnavpage extends StatefulWidget {
  const bottomnavpage({super.key});

  @override
  State<bottomnavpage> createState() => _bottomnavpageState();
}

class _bottomnavpageState extends State<bottomnavpage> {
  var currentIndex = 0;
  var currentColor = [
    Colors.greenAccent,
    Colors.pinkAccent,
    Colors.redAccent,
    Colors.blue.shade300
  ];
  var currentPage = [
    homepage(),
    searchpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          currentIndex = i;
        }),
        //onTap: (i) => setState(()=> currentIndex = i),
        backgroundColor: currentColor[currentIndex],
        items: [
          SalomonBottomBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("Home"),
            selectedColor: Colors.white,
          ),
          SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Colors.white),
          SalomonBottomBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text("Cart"),
              selectedColor: Colors.white),
          SalomonBottomBarItem(
              icon: Icon(Icons.settings),
              title: Text("Setting"),
              selectedColor: Colors.white),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: bottomnavpage(),
  ));
}
