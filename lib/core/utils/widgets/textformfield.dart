import 'package:flutter/material.dart';

import '../constants.dart';
class MyTextFormField extends StatelessWidget {
  final TextEditingController? controller;

  final TextInputType? inputTypes;
  final String? hintText;

  final Function(String) onChanged;
  final bool myObscureText;
final String? Function(String?)? validator; 
  final IconButton? suffixicon;
  const MyTextFormField({
    super.key,
    required this.controller,
    required this.suffixicon,
    required this.myObscureText,
    required this.onChanged,
    required this.inputTypes,
    this.hintText, this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,width:377,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: MyColors.greyColor,
      ),
      child: TextFormField(
        cursorColor: MyColors.mybgcolor,
        keyboardType: inputTypes,
        textAlign: TextAlign.left,
        obscureText: myObscureText,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:TextStyle(
  color:MyColors.greyColorShade11,
  fontSize: 12,
  fontFamily: 'Nexa Light',
  fontWeight: FontWeight.w700,
),
          // border: BorderRadius.circular(5.r)
          suffixIcon: suffixicon,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,

          //  border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(10.r),
          //         borderSide: BorderSide.none, // This sets the border color to none.
          //       ),

          contentPadding: EdgeInsets.all(20),
        ),
             validator: validator,
      ),
    );
  }
}
