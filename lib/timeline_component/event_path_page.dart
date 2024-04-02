import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventPath extends StatelessWidget {
  final bool isPast;
  final childWidget;


  const EventPath({Key? key, required this.isPast, required this.childWidget}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:isPast ? Colors.black87 : Colors.grey,
        borderRadius: BorderRadius.circular(10)
      ),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.all(20),
      child: childWidget,

    );
  }
}
