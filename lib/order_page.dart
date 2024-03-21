import 'package:flutter/material.dart';
import 'package:foodie_app/my_order_page.dart';
import 'package:foodie_app/widgets/Add_Icon_button.dart';

import 'confirm_order_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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

    var gridcat=[
      {'img':'assets/images/recimg1.png'},
      {'img':'assets/images/recimg2.png'},
      {'img':'assets/images/recimg3.png'},
      {'img':'assets/images/recimg1.png'},
      {'img':'assets/images/recimg2.png'},
      {'img':'assets/images/recimg3.png'},
      {'img':'assets/images/recimg1.png'},
      {'img':'assets/images/recimg1.png'},
      {'img':'assets/images/recimg2.png'},
      {'img':'assets/images/recimg3.png'},
      {'img':'assets/images/recimg1.png'},
      {'img':'assets/images/recimg2.png'},
      {'img':'assets/images/recimg3.png'},
      {'img':'assets/images/recimg1.png'},
    ];
    return  Scaffold(
              appBar: AppBar(

                backgroundColor:Color(0xff45173E),
                leading: IconButton(onPressed:(){
                  Navigator.of(context).pop();
                },
                  icon:Icon(Icons.arrow_back_rounded,color: Colors.white,),),

                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>MyOrderPage()));
                      },
                      icon: Icon(Icons.shopping_cart,
                        color: Colors.white,),),
                  )
                  ],
              ),
      body:


      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            //  tileMode: TileMode.repeated ,
              colors: [
                Color(0xff45173E),
                Color(0xff7B296E),
                //Color(0xff7B296E),
                Color(0xffAB399A)
              ]
          ),

        ),
        child: Column(
          // crossAxisAlignment:CrossAxisAlignment.start,

          children: [
          Container(
           // width: double.maxFinite,
               // height: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40)),
                  color: Color(0xff45173E),
                    boxShadow: [BoxShadow
                      (
                        color: Colors.black38,
                        offset: Offset(2,2),
                        spreadRadius: 1,
                        blurRadius: 5

                    )]
                  ),
                  child: Column(

                    children: [
                     // CircleAvatar(foregroundImage: AssetImage('assets/images/recimg3.png',),radius: 150,backgroundColor: Colors.cyan,),
                 Image.asset('assets/images/meals22.png',width: 220,fit: BoxFit.fill,),
                     Padding(
                       padding: const EdgeInsets.only(left: 15,right: 15),
                       child: Row(
                       mainAxisAlignment:MainAxisAlignment.spaceBetween,
                         children: [
                           //Padding(padding: EdgeInsets.all(5)),

                           Text("Meals",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                           //SizedBox(width: 250,),
                           Text("Rs.120",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),

                         ],
                       ),

                     ),

                       Padding(
                         padding: const EdgeInsets.only(left: 15,right: 15),
                         child: Row(
                             children:[
                            Icon(Icons.star,color:  Color(0xffFFBC00),size: 20,),
                            Icon(Icons.star,color:  Color(0xffFFBC00),size: 20,),
                            Icon(Icons.star,color:  Color(0xffFFBC00),size: 20,),
                            Icon(Icons.star,color:  Color(0xffFFBC00),size: 20,),
                            Icon(Icons.star,color:  Color(0xffFFBC00),size: 20,),
                            Spacer(),

                            Text("33mins",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),

                          ]

                                               ),
                       ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: SizedBox(
                      //     height: 70,
                      //     child: ListView(
                      //       scrollDirection: Axis.vertical,
                      //       shrinkWrap: true,
                      //       children: [
                      //         Text("minFontSize & maxFontSizeThe AutoSizeText starts with TextStyle.fontSize. "
                      //           "'It measures the resulting text and rescales it to fit within its bonds. "
                      //           "You can however set the allowed range of the resulting font size.With minFontSize "
                      //           "you can specify the smallest possible font size. If the text still doesn't fit, "
                      //           "it will be handled according to overflow. The default minFontSize is 12.maxFontSize"
                      //           " sets the largest possible font size. This is useful if the TextStyle inherits the font size and you want to constrain it."
                      //           ,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400,),textAlign: TextAlign.start,), ]
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("minFontSize & maxFontSizeThe AutoSizeText starts with TextStyle.fontSize. "
                            "'It measures the resulting text and rescales it to fit within its bonds. "
                            "You can however set the allowed range of the resulting font size.With minFontSize "
                            "you can specify the smallest possible font size. If the text still doesn't fit, "
                            "it will be handled according to overflow. The default minFontSize is 12.maxFontSize"
                            " sets the largest possible font size. This is useful if the TextStyle inherits the font size and you want to constrain it."
                          ,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis),textAlign: TextAlign.start,maxLines: 4,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  sub();
                                  print(value);
                                });

                              },
                              child: Container(
                                height: 50,
                                width: 50,
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
                                  child: Icon(Icons.minimize,color: Colors.white,size: 35,),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text('$value',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w400),),
                            SizedBox(width: 20,),
                            InkWell(
                              onTap: (){
                                add();
                                  print(value);
                              },
                              child: Container(
                                height: 50,
                                width: 50,
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
                                child: Icon(Icons.add,color: Colors.white,size: 35,),
                              ),
                            ),

                              ],
                        ),
                      ),

                    ],
                  ),


                ),
                      SizedBox(height: 20,),
            Row(
              children: [
                Padding(padding:EdgeInsets.only(left:15)),
                Text("Recommended",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),textAlign:TextAlign.start),
              ],
            ),
            SizedBox(height: 20,),

            SizedBox(height: 160,

              child: Padding(
                padding: const EdgeInsets.only(left:15),
                child: ListView.separated(

                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  //physics: BouncingScrollPhysics,
                  itemCount: gridcat.length,
                    separatorBuilder: (BuildContext contex,int index){
                    return const SizedBox(width:10);
                    }
                  ,
                  itemBuilder:(context,index){
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 150,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                          boxShadow: [BoxShadow
                            (
                              color: Colors.black38,
                              offset: Offset(2,2),
                              spreadRadius: 1,
                              blurRadius: 5

                          )]
                      ),
                      child: Column(
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(top: 5,right: 5)),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(gridcat[index]['img']!,width: 70,),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:5),
                                  child: Text("Veg Mo",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:5,right: 5),
                                  child: Row(
                                    children: [
                                  Text("Hotel",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 12),),
                                      Spacer(),
                                      Icon(Icons.star,color: Color(0xffFFBC00),size: 15,),
                                      Text('4.5',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12))
                                    ],

                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Rs.149",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,),),
                              ),
                              Spacer(),
                              OrderAddButton(height: 25, width: 30,)
                            ],
                          ),

                        ],
                      )

                    );

                  },
                   ),
              ),
            ),

            SizedBox(height: 30,),
            //
            // Text("Order Now",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),)

               InkWell(
                 onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ConfirmOrderPage()));
                 }
                 ,
                 child: Container(
                   width: 200,
                   height: 55,
                   decoration: BoxDecoration(
                     color:  Color(0xffFFBC00),
                     borderRadius: BorderRadius.circular(50),
                     boxShadow: [BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0,2),
                      blurRadius: 8,
                       spreadRadius: 2
                     )]
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Order Now",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),),
                     ],
                   )

                 ),
               )

          ],

        ),
      ),



    );
  }
}
