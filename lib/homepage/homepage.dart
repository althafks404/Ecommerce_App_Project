import 'package:ecommerceproject/pages/appDrawer/appDrawer.dart';
import 'package:ecommerceproject/pages/bottomNavigationBar/bottomnavbar.dart';
import 'package:flutter/material.dart';

import '../searchpage/searchpage.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var pageIndex = 0;
  var pages = [
    homepage(),
    searchpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: bottomnavpage(),
    );
  }
}

void main() {
  runApp(MaterialApp(home:homepage(),));
}