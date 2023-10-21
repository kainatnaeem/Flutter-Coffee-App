import 'package:flutter/material.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
             borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),

            //borderSide: .none,
          ),
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xff7b7b7b),
          ),
          fillColor: Colors.white,
          suffixIcon: Icon(
            Icons.sort,
            color: Color(0xff7b7b7b),
          ),
        //  hintStyle: new TextStyle(color: Color(0xFFd0cece), fontSize: 18),
          hintText: "Search Flavor",
         hintStyle:TextStyle(
                          color: Color(0xFFd0cece),
                          fontWeight: FontWeight.w300,
                          fontSize: 15)
         ),
    );
  }
}
