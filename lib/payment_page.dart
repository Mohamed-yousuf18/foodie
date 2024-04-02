import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie_app/homepage.dart';
import 'package:foodie_app/user_profile_model/payment_page_widget.dart';
import 'package:foodie_app/widgets/custom_Dialoge_widget.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  // Future showdialog(BuildContext context,String message) async {
  //   return showDialog(context: context,
  //       builder: (BuildContext context) {
  //
  //       }
  //   );
  // }
  //======================================================================================================

  List<Payment> pay = [
    Payment(
      icon: Icon(Icons.money, color: Colors.black),
      text: 'Cash On Delivery',
    ),
    Payment(
      icon:Icon(
  FontAwesomeIcons.googlePay,
  color: Colors.black, size: 25,),
      text: 'Google Pay',
    ),
    Payment(
      icon: Icon(Icons.money, color: Colors.black),
      text: 'Paytm UPI',
    ),
    Payment(
      icon: Icon(Icons.money, color: Colors.black),
      text: 'Creadit Card',
    ),
    Payment(
      icon: Icon(Icons.money, color: Colors.black),
      text: 'Cash On Delivery',
    ),Payment(
      icon: Icon(Icons.money, color: Colors.black),
      text: 'Cash On Delivery',
    ),
  ];
  //======================================================================================================

  var selected=null;
  bool isPaymentSelected=false;
  //======================================================================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff45173E),
      appBar: AppBar(
        backgroundColor: Color(0xff45173E),
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
        ),
        actions: [
          Text(
            "Checkout",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("DELIVERY ADDRESS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400))),
                SizedBox(
                  height: 10,
                ),
                Text("HOME ADDRESS",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 13,
                        fontWeight: FontWeight.w400)),
                Text("No.21,1st Cross Rainbow nagar ,Pudhucherry.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400))
              ],
            ),
          ),
          Container(

              // width: double.infinity,
              height: 720,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                ),
                color: Color(0xffFEE1FF),
              ),
              child:

              Column(
                children: [
                  Flexible(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 40, right: 20, top: 30),
                      //padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      //shrinkWrap: true,
                      itemCount: pay.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            //================================================================================RadioList=====================================
                            // ================================================================================RadioList=====================================
                            RadioListTile(
                                selected: true,


                              secondary:pay[index].icon,
                                controlAffinity : ListTileControlAffinity.trailing,
                                value: index,
                                groupValue:selected,
                                title:  Text(pay[index].text,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                onChanged: (v) {
                                setState(() {
                                  selected=v!;
                                  isPaymentSelected = true;
                                  print(v.toString(),

                                  );
                                });

                                }),
                        (index==3)?const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                                  Divider(
                                    thickness: 1,
                                    color: Colors.black,
                                  ),
                                  Text("More Payment Options",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),

                                ],
                              ):Container()
                          ],
                        );
                        //   Padding(
                        //   padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                        //   child: Column(
                        //     children: [
                        //       Row(
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         children: [
                        //           Icon(Icons.money, color: Colors.black),
                        //           SizedBox(width: 20,),
                        //           Text("Cash On Delivey",
                        //               style: TextStyle(
                        //                   color: Colors.black,
                        //                   fontSize: 16,
                        //                   fontWeight: FontWeight.w400)),
                        //           Spacer(),
                        //           Icon(Icons.radio_button_off, color: Colors.black),
                        //
                        //
                        //         ],
                        //       ),
                        //   (index==3||index==5)?const Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        
                        //
                        //     children: [
                        //           Divider(),
                        //           Text("Cash On Delivey",
                        //               style: TextStyle(
                        //                   color: Colors.black,
                        //                   fontSize: 16,
                        //                   fontWeight: FontWeight.w400)),
                        //
                        //         ],
                        //       ):Container()
                        //     ],
                        //   ),
                        // );
                      },
                      // separatorBuilder: (BuildContext context, int index) { return (index==3||index==5)?const Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      //
                      // children: [
                      //       Divider(),
                      //       Text("Cash On Delivey",
                      //           style: TextStyle(
                      //               color: Colors.black,
                      //               fontSize: 16,
                      //               fontWeight: FontWeight.w400)),
                      //
                      //     ],
                      //   ):Container(); },
                    ),
                  ),
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                      color:  Color(0xff750664),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 15),
                      child: Row(

                        children: [
                          Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Rs.249",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600)),
                            Text("View Details",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),

                          Spacer(),

                          // InkWell(
                          //   onTap: (){
                          //     if(isPaymentSelected){
                          //       Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomePage()));
                          //
                          //     }
                          //     else {
                          //
                          //     }
                          //
                          //
                          //
                          //   },
                          //   child: Container(
                          //     width: 150,
                          //     height: 60,
                          //       decoration: BoxDecoration(
                          //           color:  Colors.white,
                          //         borderRadius: BorderRadius.circular(50),
                          //         boxShadow: [BoxShadow(
                          //           color: Colors.black12,
                          //           offset: Offset(2,2),
                          //           spreadRadius: 2,
                          //           blurRadius: 5
                          //
                          //         )]
                          //
                          //       ),
                          //     child: Padding(
                          //      padding: EdgeInsets.only(left: 20,right: 20),
                          //       child: Row(
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //
                          //         children: [
                          //
                          //           Text("Pay",
                          //               style: TextStyle(
                          //                   color: Color(0xff750664),
                          //                   fontSize: 20,
                          //                   fontWeight: FontWeight.w600)),
                          //           SizedBox(width: 30,),
                          //           Icon(Icons.arrow_forward, color: Color(0xff750664),size: 25,)
                          //
                          //         ],
                          //
                          //
                          //       ),
                          //
                          //
                          //     ),
                          //
                          //
                          //   ),
                          // ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.only(top: 10,bottom: 10,left: 15,right: 15)
                            ),
                            onPressed: () {
                              if(isPaymentSelected){
                                showDialog(context: context,
                                      builder:(context)=> CustomDialogeWidget());
                              }
                              // showDialog(context: context,
                              //     builder:(context)=> CustomDialogeWidget());
                            },
                            child: Row(
                              children: [
                              Text("Pay",
                                          style: TextStyle(

                                              color: Color(0xff750664),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600)),
                                SizedBox(width: 30,),
                                        Icon(Icons.arrow_forward, color: Color(0xff750664),size: 25,)


                              ],
                            ),
                            // child: Container(
                            //   width: 150,
                            //   height: 60,
                            //     decoration: BoxDecoration(
                            //         color:  Colors.white,
                            //       borderRadius: BorderRadius.circular(50),
                            //       boxShadow: [BoxShadow(
                            //         color: Colors.black12,
                            //         offset: Offset(2,2),
                            //         spreadRadius: 2,
                            //         blurRadius: 5
                            //
                            //       )]
                            //
                            //     ),
                            //   child: Padding(
                            //    padding: EdgeInsets.only(left: 20,right: 20),
                            //     child: Row(
                            //       mainAxisAlignment: MainAxisAlignment.center,
                            //
                            //       children: [
                            //
                            //         Text("Pay",
                            //             style: TextStyle(
                            //                 color: Color(0xff750664),
                            //                 fontSize: 20,
                            //                 fontWeight: FontWeight.w600)),
                            //         SizedBox(width: 30,),
                            //         Icon(Icons.arrow_forward, color: Color(0xff750664),size: 25,)
                            //
                            //       ],
                            //
                            //
                            //     ),
                            //
                            //
                            //   ),
                            //
                            //
                            // ),
                          ),
                          // Spacer(),



                        ],
                      ),
                    ),


                  )
                ],
              )),


        ],
      ),
    );
  }
}
