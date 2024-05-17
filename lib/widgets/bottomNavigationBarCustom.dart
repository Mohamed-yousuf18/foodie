import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';



class DefaultNavBar extends StatefulWidget {
   DefaultNavBar({
    super.key,
  });

  @override
  State<DefaultNavBar> createState() => _DefaultNavBarState();
}

class _DefaultNavBarState extends State<DefaultNavBar> {
  int index  = 1;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.red,
      backgroundColor: Colors.orange,
      buttonBackgroundColor: Colors.red,
      animationDuration: Duration(milliseconds: 300),
      index: index,


      items:

      [


        CurvedNavigationBarItem(
          labelStyle:  TextStyle(color: Colors.white,fontSize: 10),
          child:Icon(Icons.shopping_cart_outlined,color: Colors.white,),
          label: 'Home',

        ),
        CurvedNavigationBarItem(
          labelStyle: TextStyle(color: Colors.white,fontSize: 10),
          child:Icon(Icons.home_outlined,color: Colors.white),
          label: 'Home',

        ),
        CurvedNavigationBarItem(
          labelStyle: TextStyle(color: Colors.white,fontSize: 10),
          child:Icon(Icons.person_2_outlined,color: Colors.white),
          label: 'Home',

        ),


        CurvedNavigationBarItem(
          labelStyle: TextStyle(color: Colors.white,fontSize: 10),
          child:Icon(Icons.person_2_outlined,color: Colors.white),
          label: 'Home',

        ),
        CurvedNavigationBarItem(
          labelStyle: TextStyle(color: Colors.white,fontSize: 10),
          child:Icon(Icons.person_2_outlined,color: Colors.white),
          label: 'Home',

        ),


      ],

      onTap: (_currentindex){
        setState(() {
          index=_currentindex;
        });
        // switch ( _currentindex){
        //   case 0:
        //     Navigator.of(context)
        //         .push(MaterialPageRoute(builder: (_)=>MyOrderPage()));
        //   case 1:
        //     Navigator.of(context)
        //         .push(MaterialPageRoute(builder: (_)=>HomePage()));
        //   case 2:
        //     Navigator.of(context)
        //         .push(MaterialPageRoute(builder: (_)=>UserPage()));
        //
        //
        // }
     },


    );
  }
}