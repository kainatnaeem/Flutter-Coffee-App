import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String slug;

  const Categories(
      {required this.name, required this.imageUrl, required this.slug});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * .2,
        margin: EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0), //add border radius
          child: Image.asset(
            'images/' + imageUrl + ".jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
   
  }
}

// class HomeCategoryTitle extends StatelessWidget {
//   const HomeCategoryTitle({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               "Categories",
//               style: TextStyle(
//                   fontSize: 20,
//                   color: Color(0xFF3a3a3b),
//                   fontWeight: FontWeight.w300),
//             ),
//             Text(
//               "See all",
//               style: TextStyle(
//                   fontSize: 16,
//                   color: Color.fromARGB(255, 208, 190, 33),
//                   fontWeight: FontWeight.w100),
//             )
//           ],
//         ));
//   }
// }
