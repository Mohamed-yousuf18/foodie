import 'package:flutter/material.dart';
import 'package:foodie_app/timeline_component/time_line_tile_ui.dart';

class TimeLinePage extends StatefulWidget {
  const TimeLinePage({super.key});

  @override
  State<TimeLinePage> createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor:  Color(0xff45173E),
      appBar: AppBar(
        backgroundColor:Color(0xff45173E),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        child: ListView(
          children: [
            TimeLineTileUI( isFirst: true, isLast: true, isPast: true,
              eventChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.book_online,color: Colors.white,),
                      SizedBox(width: 15,),
                      Text(
                        'Order Placed',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),
                      )
                    ],
                  ),
                  Text(
                    'Order PlacedOrder PlacedOrder PlacedOrder PlacedOrder ',
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white),
                  )
                ],

              ), ),
            TimeLineTileUI( isFirst: false, isLast: false, isPast: true,
              eventChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.book_online,color: Colors.white,),
                      SizedBox(width: 15,),
                      Text(
                        'Order Placed',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),
                      )
                    ],
                  ),
                  Text(
                    'Order PlacedOrder PlacedOrder PlacedOrder PlacedOrder ',
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white),
                  )
                ],

              ), ),
            TimeLineTileUI( isFirst: false, isLast: false, isPast: false,
              eventChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.book_online,color: Colors.white,),
                      SizedBox(width: 15,),
                      Text(
                        'Order Placed',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),
                      )
                    ],
                  ),
                  Text(
                    'Order PlacedOrder PlacedOrder PlacedOrder PlacedOrder ',
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white),
                  )
                ],

              ), ),
            TimeLineTileUI( isFirst: false, isLast: true, isPast: false,
              eventChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.book_online,color: Colors.white,),
                      SizedBox(width: 15,),
                      Text(
                        'Order Placed',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),
                      )
                    ],
                  ),
                  Text(
                    'Order PlacedOrder PlacedOrder PlacedOrder PlacedOrder ',
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white),
                  )
                ],

              ), ),
          ],
        ),
      ),



    );
  }
}
