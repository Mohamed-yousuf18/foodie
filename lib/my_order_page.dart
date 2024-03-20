import 'package:flutter/material.dart';
import 'package:foodie_app/homepage.dart';

import 'categorypage1.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({super.key});

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff47163F),
        selectedItemColor:Colors.white ,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 15,
        // selectedIconTheme: Theme.of(context).,
        onTap: (current_index){

          setState(() {
            index=current_index;
          });
          print(index);
          switch (current_index) {
            case 0:
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => MyOrderPage()));
            case 1:
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => HomePage()));
            case 2:
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => MyOrderPage()));
            default:
              Navigator.of(context).pop();
          }
        },
        currentIndex: index,

        items: [


          // unselectedFontSize:0.0;
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: 'Cart',
            icon: Icon(Icons.shopping_cart,color: Colors.white,),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home,color: Colors.white,),
          ),
          BottomNavigationBarItem(
            label: 'User',
            icon: Icon(Icons.account_circle,color: Colors.white),
          ),
        ],),
      appBar: AppBar(
        backgroundColor: Color(0xff47163F),
        shadowColor:(Colors.black),
        elevation: 8,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },icon: Icon(Icons.arrow_back,color: Colors.white,),),
        actions: [
          IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CategoryPage1()));}, icon:Icon(Icons.location_on,color: Colors.white,))
        ],

      ),
      body: Container(
        decoration:  const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            //  tileMode: TileMode.repeated ,
              colors: [
                Color(0xff45173E),
                Color(0xff7B296E),
                //Color(0xff7B296E),
                Color(0xffAB399A)
              ]
          ),

        ),
        child: ListView(
          children: [
             Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            //  tileMode: TileMode.repeated ,
                            colors: [
                              Color(0xff45173E),
                              // Color(0xff7B296E),
                              //Color(0xff7B296E),
                              Color(0xffB33399)
                            ]
                        ),
                        boxShadow: [BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2,2),
                            blurRadius: 8,
                            spreadRadius: 2
                        )]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Image.asset('assets/images/meals22.png',width: 50,),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Image.asset('assets/images/addcartimg2.png',width: 35,),
                                SizedBox(width: 10,),
                                Image.asset('assets/images/juice1.png',width: 30,)
                              ],
                            )
                          ],

                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10)),

                            Text("Processing",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                            SizedBox(height: 40,),
                            Text("Order ID:2545865456",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10 )),
                            Text("Today",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ],
                    ),






                  ),
                )
              ],
            ), Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            //  tileMode: TileMode.repeated ,
                            colors: [
                              Color(0xff45173E),
                              // Color(0xff7B296E),
                              //Color(0xff7B296E),
                              Color(0xffB33399)
                            ]
                        ),
                        boxShadow: [BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2,2),
                            blurRadius: 8,
                            spreadRadius: 2
                        )]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Image.asset('assets/images/meals22.png',width: 50,),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Image.asset('assets/images/addcartimg2.png',width: 35,),
                                SizedBox(width: 10,),
                                Image.asset('assets/images/juice1.png',width: 30,)
                              ],
                            )
                          ],

                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10)),

                            Text("Processing",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                            SizedBox(height: 40,),
                            Text("Order ID:2545865456",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10 )),
                            Text("Today",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ],
                    ),

                  ),
                )
              ],
            ), Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            //  tileMode: TileMode.repeated ,
                            colors: [
                              Color(0xff45173E),
                              // Color(0xff7B296E),
                              //Color(0xff7B296E),
                              Color(0xffB33399)
                            ]
                        ),
                        boxShadow: [BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2,2),
                            blurRadius: 8,
                            spreadRadius: 2
                        )]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Image.asset('assets/images/meals22.png',width: 50,),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Image.asset('assets/images/addcartimg2.png',width: 35,),
                                SizedBox(width: 10,),
                                Image.asset('assets/images/juice1.png',width: 30,)
                              ],
                            )
                          ],

                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10)),

                            Text("Deliverred",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                            SizedBox(height: 40,),
                            Text("Order ID:2545865456",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10 )),
                            Text("Yesterday",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ],
                    ),

                  ),
                )
              ],
            ), Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            //  tileMode: TileMode.repeated ,
                            colors: [
                              Color(0xff45173E),
                              // Color(0xff7B296E),
                              //Color(0xff7B296E),
                              Color(0xffB33399)
                            ]
                        ),
                        boxShadow: [BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2,2),
                            blurRadius: 8,
                            spreadRadius: 2
                        )]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Image.asset('assets/images/meals22.png',width: 50,),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Image.asset('assets/images/addcartimg2.png',width: 35,),
                                SizedBox(width: 10,),
                                Image.asset('assets/images/juice1.png',width: 30,)
                              ],
                            )
                          ],

                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10)),

                            Text("Cancel",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                            SizedBox(height: 40,),
                            Text("Order ID:2545865456",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10 )),
                            Text("23 Mar,2024",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ],
                    ),

                  ),
                )
              ],
            ), Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            //  tileMode: TileMode.repeated ,
                            colors: [
                              Color(0xff45173E),
                              // Color(0xff7B296E),
                              //Color(0xff7B296E),
                              Color(0xffB33399)
                            ]
                        ),
                        boxShadow: [BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2,2),
                            blurRadius: 8,
                            spreadRadius: 2
                        )]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Image.asset('assets/images/meals22.png',width: 50,),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Image.asset('assets/images/addcartimg2.png',width: 35,),
                                SizedBox(width: 10,),
                                Image.asset('assets/images/juice1.png',width: 30,)
                              ],
                            )
                          ],

                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10)),

                            Text("Processing",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                            SizedBox(height: 40,),
                            Text("Order ID:2545865456",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10 )),
                            Text("Today",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ],
                    ),


                  ),
                )
              ],
            ), Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            //  tileMode: TileMode.repeated ,
                            colors: [
                              Color(0xff45173E),
                              // Color(0xff7B296E),
                              //Color(0xff7B296E),
                              Color(0xffB33399)
                            ]
                        ),
                        boxShadow: [BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2,2),
                            blurRadius: 8,
                            spreadRadius: 2
                        )]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Image.asset('assets/images/meals22.png',width: 50,),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Image.asset('assets/images/addcartimg2.png',width: 35,),
                                SizedBox(width: 10,),
                                Image.asset('assets/images/juice1.png',width: 30,)
                              ],
                            )
                          ],

                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10)),

                            Text("Processing",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                            SizedBox(height: 40,),
                            Text("Order ID:2545865456",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10 )),
                            Text("Today",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ],
                    ),






                  ),
                )
              ],
            ), Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            //  tileMode: TileMode.repeated ,
                            colors: [
                              Color(0xff45173E),
                              // Color(0xff7B296E),
                              //Color(0xff7B296E),
                              Color(0xffB33399)
                            ]
                        ),
                        boxShadow: [BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2,2),
                            blurRadius: 8,
                            spreadRadius: 2
                        )]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Image.asset('assets/images/meals22.png',width: 50,),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Image.asset('assets/images/addcartimg2.png',width: 35,),
                                SizedBox(width: 10,),
                                Image.asset('assets/images/juice1.png',width: 30,)
                              ],
                            )
                          ],

                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10)),

                            Text("Processing",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                            SizedBox(height: 40,),
                            Text("Order ID:2545865456",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10 )),
                            Text("Today",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ],
                    ),






                  ),
                )
              ],
            ), Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            //  tileMode: TileMode.repeated ,
                            colors: [
                              Color(0xff45173E),
                              // Color(0xff7B296E),
                              //Color(0xff7B296E),
                              Color(0xffB33399)
                            ]
                        ),
                        boxShadow: [BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2,2),
                            blurRadius: 8,
                            spreadRadius: 2
                        )]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Image.asset('assets/images/meals22.png',width: 50,),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Image.asset('assets/images/addcartimg2.png',width: 35,),
                                SizedBox(width: 10,),
                                Image.asset('assets/images/juice1.png',width: 30,)
                              ],
                            )
                          ],

                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10)),

                            Text("Processing",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                            SizedBox(height: 40,),
                            Text("Order ID:2545865456",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10 )),
                            Text("Today",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ],
                    ),






                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            //  tileMode: TileMode.repeated ,
                            colors: [
                              Color(0xff45173E),
                              // Color(0xff7B296E),
                              //Color(0xff7B296E),
                              Color(0xffB33399)
                            ]
                        ),
                        boxShadow: [BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2,2),
                            blurRadius: 8,
                            spreadRadius: 2
                        )]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Image.asset('assets/images/meals22.png',width: 50,),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Image.asset('assets/images/addcartimg2.png',width: 35,),
                                SizedBox(width: 10,),
                                Image.asset('assets/images/juice1.png',width: 30,)
                              ],
                            )
                          ],

                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10)),

                            Text("Processing",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                            SizedBox(height: 40,),
                            Text("Order ID:2545865456",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10 )),
                            Text("Today",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ],
                    ),






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
