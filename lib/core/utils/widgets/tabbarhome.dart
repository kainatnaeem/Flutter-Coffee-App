
import 'package:flutter/material.dart';

import '../constants.dart';

class TabBarHome extends StatelessWidget {
  const TabBarHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      double widgetHeight =  MediaQuery.of(context).size.height ;
      double widgetWidth = MediaQuery.of(context).size.width ;
    return SingleChildScrollView(
      child: SizedBox(
        height:  widgetHeight *.09,
        child: AppBar(
          backgroundColor: MyColors.mybgcolor,
          bottom: TabBar(isScrollable: true,
            labelColor: MyColors.blackColor,
            indicatorColor: MyColors.tabBarColorWhite,dividerColor: MyColors.mybgcolor,
            tabs: [
              Tab(
                child: Text("Hot Coffee", textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: MyColors.whiteColor)),
              ),
              Tab(
                  child: Text(
                "Cold Coffee",style: TextStyle(fontSize: 11,color: MyColors.whiteColor),
                textAlign: TextAlign.center,
              )),
              Tab(child: Text("Others", textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: MyColors.whiteColor))),
           
             
            ],
          ),
        ),
      ),
    );
  }
}
