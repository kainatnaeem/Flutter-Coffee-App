// ignore_for_file: sized_box_for_whitespace


import 'package:flutter/material.dart';


class CustombuttonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final double? buttonWidth;
  final String? text;
  final double? buttonHeight;
  final double? buttonElevation;
  final Color? buttonBackgroundColor;
  
  final double? buttonborderRadius;
  final EdgeInsetsGeometry? margin;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextStyle? style;
  const CustombuttonWidget(
      {Key? key,
      required this.onPressed,
      this.margin,
      this.buttonBackgroundColor,
      this.buttonWidth,
      this.buttonElevation,
      this.buttonHeight,
      this.buttonborderRadius,
      this.fontSize,
      this.fontWeight,
      this.text,
       this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: buttonWidth ?? 45,
        height: buttonHeight ?? 35,
        // margin: margin ?? const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                elevation: buttonElevation ?? 2,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(buttonborderRadius ?? 8.0),
                ),
                backgroundColor:
                    buttonBackgroundColor ?? const Color(0xff26A4FF)),
            child: Text(
              text!,
              style: style
            )));
  }
}