import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/core/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text("Home",style: TextStyle(color:MyColors.whiteColor)),backgroundColor: MyColors.mybgcolor,toolbarHeight: 100),
      body:
    
     Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text("Home screen coming soon..."),
         ],
       ),
     ),);
  }
}