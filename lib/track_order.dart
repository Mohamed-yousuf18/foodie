import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        backgroundColor:  Color(0xff45173E),
        leading: Icon(Icons.arrow_back_rounded,color: Colors.white,),
        actions: [Text('Track Order', style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(width:10)],
        elevation: 8,

      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            //  tileMode: TileMode.repeated ,
              begin: const FractionalOffset(0.0, .0),
              end: const FractionalOffset(0.0, 2.0),
              colors: [
                Color(0xff45173E),
                //Color(0xff7B296E),
                Color(0xffAB399A)
              ]
          ),
        ),
//===================================================Order Placed=====================================================================
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xff7B0469),
                boxShadow: [BoxShadow(
                  color: Colors.black38,
                  offset: Offset(2,2),
                  blurRadius: 5,
                  spreadRadius: 1,

                )]
              ),
              //===================================================Estimate Time Container=====================================================================

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("HOME ADDRESS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),

                        Text("30 minutes",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ) ,
                  Padding(
                    padding: const EdgeInsets.only(right:20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("HOME ADDRESS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),

                        Text("30 minutes",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40,),

            //===================================================Order Placed=====================================================================
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(backgroundColor: Colors.red,radius: 11,),
                SizedBox(width: 20,),
                Image.asset('assets/images/Tk_note.png',scale: 4,),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order Placed",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),


                    Text("We have recevied your order.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300)),
                  ],
                ),


              ],
            ),
            // SizedBox(height: 50,
            //   child: VerticalDivider(
            //     color: Colors.black,
            //     thickness: 2,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 72),
              child: Container(
                height:90,
                width: 2.5,
                decoration: BoxDecoration(
                  color: Colors.green
                ),

              ),
            ),
            //==================================================Order Confirmed=================================================================
            Padding(
              padding: const EdgeInsets.only(left:62),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(backgroundColor: Colors.red,radius: 11,),
                  SizedBox(width: 20,),
                  Image.asset('assets/images/Tk_conford.png',scale: 5,),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Order Confirmed",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),


                      Text("your order has been confirmed.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300)),
                    ],
                  ),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 72),
              child: Container(
                height: 90,
                width: 2.5,
                decoration: BoxDecoration(
                    color: Colors.green
                ),

              ),
            ),
            //===================================================Order Processed=====================================================================
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(backgroundColor: Color(0xff2082FF),radius: 11,),
                  SizedBox(width: 20,),
                  Image.asset('assets/images/Tk_orderprss.png',scale: 3,),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Order Processed",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),


                      Text("We are preparing your order.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300)),
                    ],
                  ),


                ],
              ),
            ),
            // SizedBox(height: 50,
            //   child: VerticalDivider(
            //     color: Colors.black,
            //     thickness: 2,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 72),
              child: Container(
                height: 90,
                width: 2.5,
                decoration: BoxDecoration(
                  color: Colors.grey
                ),

              ),
            ),
            //===================================================Ready to Pickup====================================================================
            Padding(
              padding: const EdgeInsets.only(left:25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(backgroundColor: Colors.grey,radius: 11,),
                  SizedBox(width: 20,),
                  Image.asset('assets/images/Tk_bike.png',scale: 3,),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ready to Pickup",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),


                      Text("Your order is ready for pickup.",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w300),),
                    ],
                  ),


                ],
              ),
            ),
            Divider(
              color: Colors.white,
              endIndent: 15,
              indent: 65,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Bill",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                        Text("Rs.240",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Payment Method",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text("Google Pay",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300)),
                        SvgPicture.asset('assets/svg/gpayicon.svg',color: Colors.white,width: 25,)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
