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
        body: SafeArea(
      child: SingleChildScrollView(
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
                    const Text("Name",
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
                      controller: nameController,
                      inputTypes: TextInputType.name,
                      myObscureText: false,
                      onChanged: (value) {},
                      suffixicon: null,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                      onChanged: (value) {},
                      suffixicon: null,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        } else if (!EmailValidator.validate(value)) {
                          return 'Invalid email address';
                        }
                        return null;
                      },
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
                      onChanged: (value) {},
                      inputTypes: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'password must be greater than 6';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Phone",
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
                      controller: phoneController,
                      inputTypes: TextInputType.phone,
                      myObscureText: false,
                      onChanged: (value) {},
                      suffixicon: null,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            CustombuttonWidget(
                buttonWidth: 260,
                buttonHeight: 46,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("register");
                  }
                },
                text: "Register",
                buttonBackgroundColor: MyColors.mybgcolor,
                style: TextStyle(
                  color: MyColors.whiteColor,
                  fontSize: 12,
                  fontFamily: 'Nexa Bold',
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?",
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
                              builder: (_) => const LoginScreen()));
                    },
                    child: Text("-Login",
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
      ),
    ));
  }
}
