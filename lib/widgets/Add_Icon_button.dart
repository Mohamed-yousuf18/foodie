import 'package:flutter/material.dart';


class AddItemButton extends StatelessWidget {
 final double height;
 final double width;
    AddItemButton({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
        width: width,
        decoration: BoxDecoration(color: Color(0xffFFBC00),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15))),


        child: Icon(Icons.add,color: Colors.white,)
    );
  }
}

class OrderAddButton extends StatelessWidget {
 late final double height;
 late final double width;
 OrderAddButton({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(color: Color(0xffFFBC00),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15))),


        child: Icon(Icons.add,color: Colors.white,size: 15,)
    );
  }
}
