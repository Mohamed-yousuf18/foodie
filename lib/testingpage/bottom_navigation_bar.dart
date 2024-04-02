// // import 'package:flutter/material.dart';
// // import 'package:circle_nav_bar/circle_nav_bar.dart';
// //
// // class NavigationPage extends StatefulWidget {
// //   const NavigationPage({super.key});
// //
// //   @override
// //   State<NavigationPage> createState() => _NavigationPageState();
// // }
// //
// // class _NavigationPageState extends State<NavigationPage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       bottomNavigationBar: CircleNavBar(
// //         activeIndex: 1,
// //         activeIcons: [
// //           Icon(Icons.person, color: Colors.deepPurple),
// //           Icon(Icons.home, color: Colors.deepPurple),
// //           Icon(Icons.favorite, color: Colors.deepPurple),
// //         ],
// //         inactiveIcons: [
// //           Text("My"),
// //           Text("Home"),
// //           Text("Like"),
// //         ],
// //         height:60,
// //         circleWidth: 60,
// //         color: Colors.orange,
// //
// //       ),
// //
// //     );
// //   }
// // }
//
// import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
// import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
// import 'package:flutter/material.dart';
// import 'package:foodie_app/homepage.dart';
// import 'package:foodie_app/my_order_page.dart';
// import 'package:foodie_app/userpage.dart';
//
// class NavigationPage extends StatefulWidget {
//   const NavigationPage({super.key});
//
//   @override
//   State<NavigationPage> createState() => _NavigationPageState();
// }
//
// class _NavigationPageState extends State<NavigationPage> {
//   int _page = 0;
//    int index  = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: CurvedNavigationBar(
//         color: Colors.red,
//         backgroundColor: Colors.white,
//         buttonBackgroundColor: Colors.red,
//         animationDuration: Duration(milliseconds: 300),
//         index: index,
//
//
//         items:
//
//         [
//          CurvedNavigationBarItem(
//            labelStyle:  TextStyle(color: Colors.white),
//              child:Icon(Icons.shopping_cart_outlined,color: Colors.white,),
//                    label: 'Home',
//
//          ),
//           CurvedNavigationBarItem(
//             labelStyle: TextStyle(color: Colors.white),
//              child:Icon(Icons.home_outlined,color: Colors.white),
//                    label: 'Home',
//
//          ),
//           CurvedNavigationBarItem(
//             labelStyle: TextStyle(color: Colors.white),
//              child:Icon(Icons.person_2_outlined,color: Colors.white),
//                    label: 'Home',
//
//          ),
//
//
//         ],
//         // onTap: (_currentindex){
//         //   setState(() {
//         //     index=_currentindex;
//         //   });
//           // switch ( _currentindex){
//           //   case 0:
//           //     Navigator.of(context)
//           //         .push(MaterialPageRoute(builder: (_)=>MyOrderPage()));
//           //      case 1:
//           //     Navigator.of(context)
//           //         .push(MaterialPageRoute(builder: (_)=>HomePage()));
//           //      case 2:
//           //     Navigator.of(context)
//           //         .push(MaterialPageRoute(builder: (_)=>UserPage()));
//           //
//           //
//           // }
//        // },
//
//
//       ),
//       body: Container(
//
//       ),
//     );
//   }
// }
//
