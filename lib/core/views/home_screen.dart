import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/core/utils/constants.dart';
import 'package:flutter_coffee_app/core/utils/widgets/search_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double widgetHeight = MediaQuery.of(context).size.height;
    double widgetWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //  drawer: Drawer(backgroundColor: MyColors.whiteColor,),
        appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(Icons.menu, color: MyColors.whiteColor),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(Icons.person, color: MyColors.whiteColor),
              ),
            ],
            centerTitle: true,
            backgroundColor: MyColors.mybgcolor,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(widgetHeight * .15),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: HomeSearchField(),
                ))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Home screen coming soon..."),
            ],
          ),
        ),
      ),
    );
  }
}
