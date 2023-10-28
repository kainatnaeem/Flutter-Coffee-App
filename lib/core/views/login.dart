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
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 302,
            height: 235,
            child: Image(
              image: AssetImage("assets/images/coffeebyktech.png"),
            ),
          ),
          Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Email",
                      style: TextStyle(
                        color: MyColors.greyColorShade4,
                        fontSize: 12,
                        fontFamily: 'Nexa Bold',
                        fontWeight: FontWeight.w700,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextFormField(
                    controller: emailController,
                    inputTypes: TextInputType.emailAddress,
                    myObscureText: false,
                    suffixicon: null,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!EmailValidator.validate(value)) {
                        return 'Invalid email address';
                      }

                      return null;
                    },
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Password",
                      style: TextStyle(
                        color: MyColors.greyColorShade4,
                        fontSize: 12,
                        fontFamily: 'Nexa Bold',
                        fontWeight: FontWeight.w700,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextFormField(
                      myObscureText: _obscureText,
                      controller: passwordController,
                      suffixicon: IconButton(
                        color: MyColors.mybgcolor,
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                      inputTypes: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }

                        return null;
                      },
                      onChanged: (value) {}),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    GestureDetector(
                        onTap: () {},
                        child: const Text("Forgot Password?",
                            style: TextStyle(
                              color: MyColors.greyColorShade,
                              fontSize: 13,
                              fontFamily: 'Nexa Light',
                              fontWeight: FontWeight.w400,
                            ))),
                  ]),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          CustombuttonWidget(
              buttonWidth: 260,
              buttonHeight: 46,
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  print("login");
                }
              },
              text: "Login",
              buttonBackgroundColor: MyColors.mybgcolor,
              style: TextStyle(
                color: MyColors.whiteColor,
                fontSize: 12,
                fontFamily: 'Nexa Light',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.01,
              )),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?",
                  style: TextStyle(
                    color: MyColors.greyColorShade,
                    fontSize: 10,
                    fontFamily: 'Nexa',
                    fontWeight: FontWeight.w500,
                  )),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const RegisterScreen()));
                  },
                  child: Text("-Sign Up",
                      style: TextStyle(
                        color: MyColors.mybgcolor,
                        fontSize: 10,
                        fontFamily: 'Nexa Light',
                        fontWeight: FontWeight.w700,
                      )))
            ],
          ),
        ],
      ),
    ));
  }
}
