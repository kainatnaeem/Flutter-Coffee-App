import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/core/views/home_screen.dart';

import '../utils/constants.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    double widgetHeight = MediaQuery.of(context).size.height;
    double widgetWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: MyColors.mybgcolor,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: widgetWidth * 0.7,
                  child: Image(
                    image: AssetImage("assets/images/coffeeimg.png"),
                    fit: BoxFit.cover,
                  )),
              SizedBox(height: widgetHeight * 0.1),
              const Text("COFFEE HOUSE",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
              const SizedBox(height: 10),
              const Text(
                "Coffee Boosts energy levels, Coffee house is one of the best coffee shops in Mardan.",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: widgetHeight * .06,
                width: widgetWidth * .5,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: const Text("Get Started",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15)),
                ),
              ),
            ],
          ),
        ));
  }
}
