import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/core/views/login.dart';

import '../utils/constants.dart';
import '../utils/widgets/custom_button.dart';
import '../utils/widgets/textformfield.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = '/registerScreen';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool _obscureText = true;

  @override
  void dispose() {
    // Dispose the text editing controllers
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  void clearControllers() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    phoneController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
    color: MyColors.whiteColor, // Change this color to your desired color
  ),
        backgroundColor:MyColors.mybgcolor,
    title:Text("Register",style:TextStyle(color:MyColors.whiteColor)),
    ),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Register screen coming soon..."),
          ],
        )));
  }
}
