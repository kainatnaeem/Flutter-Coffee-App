import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/core/utils/constants.dart';
import 'package:flutter_coffee_app/core/utils/widgets/search_field.dart';
import 'package:flutter_coffee_app/core/views/signup.dart';

import '../utils/widgets/tabbardata.dart';
import '../utils/widgets/tabbarhome.dart';
import 'login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  Future<void> _showDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // title: Text('Choose an Option'),
          content: SingleChildScrollView(
            child: ListView(
              shrinkWrap: true, // Ensure the dialog size matches the content
              children: <Widget>[
                ListTile(
                  title: const Text('Create Account'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const RegisterScreen()));
                  },
                ),
                ListTile(
                  title: const Text('Login'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()));
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double widgetHeight = MediaQuery.of(context).size.height;
    double widgetWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.menu, color: MyColors.whiteColor),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                icon: const Icon(Icons.person),
                color: MyColors.whiteColor,
                onPressed: () {
                  _showDialog(context); // Now you can call _showDialog
                },
              ),
            ),
          ],
          centerTitle: true,
          backgroundColor: MyColors.mybgcolor,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(widgetHeight * .15),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: HomeSearchField(),
            ),
          ),
        ),
        body: const Center(
          child: Column(
            children: [
              TabBarHome(),
              TabBarViewData(),
            ],
          ),
        ),
      ),
    );
  }
}
