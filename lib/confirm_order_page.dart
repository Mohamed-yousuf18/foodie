import 'package:flutter/material.dart';

import 'my_order_page.dart';

class ConfirmOrderPage extends StatefulWidget {
  const ConfirmOrderPage({super.key});

  @override
  State<ConfirmOrderPage> createState() => _ConfirmOrderPageState();
}

class _ConfirmOrderPageState extends State<ConfirmOrderPage> {
  int value=0;

  add(){
    setState(() {
      value ++;
      print(value);

    });
  }
  sub(){
    setState(() {
      if (value>0){
        value--;
        print(value);
      }

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            //  tileMode: TileMode.repeated ,
              colors: [
                //Color(0xff7B296E),
                Color(0xffAB399A),
                Color(0xff7B296E),
                Color(0xff45173E),
              ]
          ),

        ),
       child: ListView(
         children: [
            Column(
             children: [
               SafeArea(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     IconButton(onPressed: (){
                       Navigator.of(context).pop();
                     },
                         icon: Icon(Icons.arrow_back_rounded, color: Colors.white,)),
                     IconButton(
                       onPressed: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (_)=>MyOrderPage()));
                       },
                       icon: const Icon(Icons.shopping_cart,
                         color: Colors.white,),),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 15,right: 15),

                 child: SizedBox(
                   height: 100,
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment:MainAxisAlignment.spaceBetween,
                     children: [
                       Image.asset('assets/images/meals22.png',width: 100,),
                       Column( mainAxisAlignment:MainAxisAlignment.start,children: [
                         Text("Meals",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),),
                         Spacer(),
                         Row(

                           children: [
                             GestureDetector(
                               onTap: (){
                                 setState(() {
                                   sub();
                                   print(value);
                                 });

                               },
                               child: Container(
                                 height: 40,
                                 width: 40,
                                 decoration: BoxDecoration(
                                     color: Color(0xffFFBC00),
                                     borderRadius: BorderRadius.circular(10),
                                     boxShadow: [BoxShadow
                                       (
                                         color: Colors.black38,
                                         offset: Offset(2,2),
                                         spreadRadius: 1,
                                         blurRadius: 5
                                     )]
                                 ),
                                 child: Align(
                                   alignment: Alignment.topCenter,
                                   child: Icon(Icons.minimize,color: Colors.white,size: 25,),
                                 ),
                               ),
                             ),
                             SizedBox(width: 20,),
                             Text('$value',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400),),
                             SizedBox(width: 20,),
                             InkWell(
                               onTap: (){
                                 add();
                                 print(value);
                               },
                               child: Container(
                                 height: 40,
                                 width: 40,
                                 decoration: BoxDecoration(
                                     color: Color(0xffFFBC00),
                                     borderRadius: BorderRadius.circular(10),
                                     boxShadow: [BoxShadow
                                       (
                                         color: Colors.black38,
                                         offset: Offset(2,2),
                                         spreadRadius: 1,
                                         blurRadius: 5

                                     )]),
                                 child: Icon(Icons.add,color: Colors.white,size: 25,),
                               ),
                             ),
                           ],
                         ),
                       ],),
                       Column(
                         children: [
                           Text("Rs.120",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),),
                         ],
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 5,),
               Padding(
                 padding: const EdgeInsets.only(left: 15,right: 15),
                 child: Container(
                   height:2.0,
                   //width:130.0,
                   color:Colors.white,),
               ),

               Padding(
                 padding: const EdgeInsets.only(left: 15,right: 15,top:10),
                 child: SizedBox(height: 100,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Image.asset('assets/images/addcartimg2.png',width: 100,),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text("Biriyani",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),),
                           Spacer(),
                           Row(

                             children: [
                               GestureDetector(
                                 onTap: (){
                                   setState(() {
                                     sub();
                                     print(value);
                                   });

                                 },
                                 child: Container(
                                   height: 40,
                                   width: 40,
                                   decoration: BoxDecoration(
                                       color: Color(0xffFFBC00),
                                       borderRadius: BorderRadius.circular(10),
                                       boxShadow: [BoxShadow
                                         (
                                           color: Colors.black38,
                                           offset: Offset(2,2),
                                           spreadRadius: 1,
                                           blurRadius: 5
                                       )]
                                   ),
                                   child: Align(
                                     alignment: Alignment.topCenter,
                                     child: Icon(Icons.minimize,color: Colors.white,size: 25,),
                                   ),
                                 ),
                               ),
                               SizedBox(width: 20,),
                               Text('$value',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400),),
                               SizedBox(width: 20,),
                               InkWell(
                                 onTap: (){
                                   add();
                                   print(value);
                                 },
                                 child: Container(
                                   height: 40,
                                   width: 40,
                                   decoration: BoxDecoration(
                                       color: Color(0xffFFBC00),
                                       borderRadius: BorderRadius.circular(10),
                                       boxShadow: [BoxShadow
                                         (
                                           color: Colors.black38,
                                           offset: Offset(2,2),
                                           spreadRadius: 1,
                                           blurRadius: 5

                                       )]),
                                   child: Icon(Icons.add,color: Colors.white,size: 25,),
                                 ),
                               ),
                             ],
                           ),

                         ],
                       ),
                       Text("Rs.120",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),),


                     ],
                   ),
                 ),
               ),
               SizedBox(height: 5,),
               Padding(
                 padding: const EdgeInsets.only(left: 15,right: 15),
                 child: Container(
                   height:2.0,
                   //width:130.0,
                   color:Colors.white,),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 15,right: 15,top:10),
                 child: SizedBox(height: 100,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Image.asset('assets/images/addcartimg.png',width: 100,),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text("Dhosa",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),),
                           Spacer(),
                           Row(

                             children: [
                               GestureDetector(
                                 onTap: (){
                                   setState(() {
                                     sub();
                                     print(value);
                                   });

                                 },
                                 child: Container(
                                   height: 40,
                                   width: 40,
                                   decoration: BoxDecoration(
                                       color: Color(0xffFFBC00),
                                       borderRadius: BorderRadius.circular(10),
                                       boxShadow: [BoxShadow
                                         (
                                           color: Colors.black38,
                                           offset: Offset(2,2),
                                           spreadRadius: 1,
                                           blurRadius: 5
                                       )]
                                   ),
                                   child: Align(
                                     alignment: Alignment.topCenter,
                                     child: Icon(Icons.minimize,color: Colors.white,size: 25,),
                                   ),
                                 ),
                               ),
                               SizedBox(width: 20,),
                               Text('$value',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400),),
                               SizedBox(width: 20,),
                               InkWell(
                                 onTap: (){
                                   add();
                                   print(value);
                                 },
                                 child: Container(
                                   height: 40,
                                   width: 40,
                                   decoration: BoxDecoration(
                                       color: Color(0xffFFBC00),
                                       borderRadius: BorderRadius.circular(10),
                                       boxShadow: [BoxShadow
                                         (
                                           color: Colors.black38,
                                           offset: Offset(2,2),
                                           spreadRadius: 1,
                                           blurRadius: 5

                                       )]),
                                   child: Icon(Icons.add,color: Colors.white,size: 25,),
                                 ),
                               ),
                             ],
                           ),

                         ],
                       ),
                       Text("Rs.120",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),),


                     ],
                   ),
                 ),
               ),
               SizedBox(height: 5,),
               Padding(
                 padding: const EdgeInsets.only(left: 15,right: 15),
                 child: Container(
                   height:2.0,
                   //width:130.0,
                   color:Colors.white,),
               ),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Meals",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                     Text("Meals",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                   ],
                 ),
               ),Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Total Items",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                     Text("3",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                   ],
                 ),
               ),Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Delivery Charg",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                     Text("Rs.00.0",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                   ],
                 ),
               ),Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Time",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                     Text("33 mins",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Tax",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                     Text("Rs.05.00",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Total",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                     Text("Rs.245.05",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                   ],
                 ),
               ),
               SizedBox(height: 40,),
               InkWell(
                 // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ConfirmOrderPage()));
                 onTap: (){

                 }
                 ,
                 child: Container(
                     width: 200,
                     height: 55,
                     decoration: BoxDecoration(
                         color:  Color(0xffFFBC00),
                         borderRadius: BorderRadius.circular(50),
                         boxShadow: [BoxShadow(
                             color: Colors.black38,
                             offset: Offset(0,2),
                             blurRadius: 8,
                             spreadRadius: 1
                         )]
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("Confirm Order",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),),
                       ],
                     )

                 ),
               )

             ],
           ),
         ],
       ),
      ),

    );
  }
}
