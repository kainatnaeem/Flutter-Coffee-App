import 'package:flutter/material.dart';

import '../constants.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                  onTap: () {
                
                  },
                  child: Column(
                    children: [
                      
                      Container(
              width: 369,
              height: 97,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                color: MyColors.mybgcolor,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffDDDDDD),
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                    offset: Offset(0.0,
                        1.0), 
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(bottomLeft:const Radius.circular(20),topLeft:Radius.circular(20),),
                      child: const Image(
                        width: 179,
                        height: 97,
                        image: AssetImage("assets/images/cof4.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Cold Coffee", style:TextStyle(color:MyColors.whiteColor,fontWeight:FontWeight.bold)),
                        Text("Dark Roost",style:TextStyle(color:const Color.fromARGB(255, 207, 204, 204))),
                      ],
                    ),
                  )
                ],
              ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
          Text("\$200",style:TextStyle(color:MyColors.blackColor,fontWeight:FontWeight.bold)),
                          const Spacer(),
                          Container(
                            width:100,
                             padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color: MyColors.mybgcolor,
                                  borderRadius: BorderRadius.circular(5)),
                              child:  Center(
                                child: Text(
                                  "Add to Cart",
                                style:TextStyle(color:MyColors.whiteColor)
                                ),
                              ),),
                        ],
                      ),
                      
                 
            
                    ]  
                )
                      
            ),
            );
  }
}