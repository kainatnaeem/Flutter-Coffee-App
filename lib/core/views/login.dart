import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/core/views/signup.dart';

import '../utils/constants.dart';
import '../utils/widgets/custom_button.dart';
import '../utils/widgets/textformfield.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/loginScreen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      iconTheme: IconThemeData(
    color: MyColors.whiteColor, // Change this color to your desired color
  ),
      backgroundColor:MyColors.mybgcolor,
    title:Text("Login",style:TextStyle(color:MyColors.whiteColor)),
    ),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login screen coming soon..."),
          ],
        )));
  }
}
