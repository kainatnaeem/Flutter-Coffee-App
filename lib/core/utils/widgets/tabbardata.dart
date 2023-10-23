
import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/core/utils/widgets/home_categories.dart';
import 'package:flutter_coffee_app/core/utils/widgets/product.dart';

import '../constants.dart';


class TabBarViewData extends StatelessWidget {
  const TabBarViewData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widgetHeight =  MediaQuery.of(context).size.height ;
      double widgetWidth = MediaQuery.of(context).size.width ;
    return Expanded(
      child: TabBarView(
        children: [
          // first tab bar view widget

          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .13,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal, children: const [
                  
                    Categories(name: "cof6", imageUrl: "cof6", slug: ""),
                    Categories(name: "cof2", imageUrl: "cof2", slug: ""),
                    Categories(name: "cof3", imageUrl: "cof3", slug: ""),
                    Categories(name: "cof4", imageUrl: "cof4", slug: ""),
                    Categories(name: "cof5", imageUrl: "cof5", slug: ""),
                    Categories(name: "cof6", imageUrl: "cof6", slug: ""),
                  ]),
                ),
                SizedBox(height: widgetHeight* 0.008),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Align(
                    alignment:Alignment.centerLeft,child: Text("Latest",style:TextStyle(color:MyColors.blackColor, fontWeight: FontWeight.bold,fontSize:15,))),
                ),
                
             //   TabBarMainProduct()
               const Product(),
                const Product(),
                 Product(),
              ],
            ),
          ),

        const Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(" coming soon..."),
          ],
        ))
          // second tab bar viiew widget
      ,
      const Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(" coming soon..."),
          ],
        ))
        ],
      ),
    );
  }
}
