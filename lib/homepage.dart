import 'package:another_flushbar/flushbar.dart';
import 'package:floating_frosted_bottom_bar/app/frosted_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie_app/my_order_page.dart';
import 'package:foodie_app/order_page.dart';
import 'package:foodie_app/sample.dart';
import 'package:foodie_app/userpage.dart';
import 'package:foodie_app/widgets/Add_Icon_button.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

import 'categorypage1.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  int index=0;

  bool isHighlighted = false;

  void showFloatingFlushbar( {@required BuildContext? context,
    @required String? message,
    @required bool? isError}){
    Flushbar? flush;
    bool? _wasButtonClicked;
    flush = Flushbar<bool>(
      borderRadius: BorderRadius.circular(16),
      title: "1 Item Added",
      message: message,
      backgroundColor: Color(0XFFF6318C),
      duration: Duration(seconds: 3),
      margin: EdgeInsets.all(20),


      icon: Icon(
        Icons.info_outline,
        color: Colors.white,),
      mainButton: ElevatedButton(
        onPressed: () {
          Navigator.of(context!).push(MaterialPageRoute(builder: (_) => OrderPage()));
          flush!.dismiss(true); // result = true
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "View Cart",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                Icons.shopping_cart,
                color: Colors.black, size: 25,)
            ],
          ),
        ),
      ),) // <bool> is the type of the result passed to dismiss() and collected by show().then((result){})
      ..show(context!).then((result) {

      });
  }

  @override
  Widget build(BuildContext context)
  {

    var category=[
      {'img':'assets/images/catimg1.png','clr':'0xff43BFC7'},
      {'img':'assets/images/catimg2.png','clr':'0xffF8B195'},
      {'img':'assets/images/catimg3.png','clr':'0xffF6AAD0'},
      {'img':'assets/images/catimg4.png','clr':'0xffABD4C1'},


    ];
    var sugbox=[
      {'img':'assets/images/recimg1.png'},
      {'img':'assets/images/recimg2.png'},
      {'img':'assets/images/recimg3.png'},
      {'img':'assets/images/recimg1.png'},
      {'img':'assets/images/recimg2.png'},
      {'img':'assets/images/recimg3.png'},
      {'img':'assets/images/recimg1.png'},


    ]; var popmenu=[
      {'img':'assets/images/recimg1.png'},
      {'img':'assets/images/recimg2.png'},
      {'img':'assets/images/recimg3.png'},
      {'img':'assets/images/recimg1.png'},
      {'img':'assets/images/recimg2.png'},
      {'img':'assets/images/recimg3.png'},
      {'img':'assets/images/recimg1.png'}, {'img':'assets/images/recimg1.png'},
      {'img':'assets/images/recimg2.png'},
      {'img':'assets/images/recimg3.png'},
      {'img':'assets/images/recimg1.png'},
      {'img':'assets/images/recimg2.png'},
      {'img':'assets/images/recimg3.png'},
      {'img':'assets/images/recimg1.png'},


    ];
    MotionTabBarController? _motionTabBarController;
    @override
    void initState() {
      super.initState();

      //// Use normal tab controller
      // _tabController = TabController(
      //   initialIndex: 1,
      //   length: 4,
      //   vsync: this,
      // );

      //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
      _motionTabBarController = MotionTabBarController(
        initialIndex: 1,
        length: 4,
        vsync: this,
      );
    }

    @override
    void dispose() {
      super.dispose();

      // _tabController.dispose();
      _motionTabBarController!.dispose();
    }
    return Scaffold(
      drawer: const Drawer(
        child: Row(
          children: [
            Text("ygfayudksfg")
          ],
        ),
      ),
      // bottomNavigationBar: MotionTabBar(
      //   tabIconSize: 40,
      //   tabBarHeight: 80,
      //   tabBarColor:  Color(0xff45173E),
      //   tabIconColor: Colors.white70,
      //   tabSelectedColor: Colors.white,
      //   tabIconSelectedColor:  Color(0xff45173E),
      //   tabIconSelectedSize: 40,
      //   textStyle: TextStyle(fontSize: 15, color: Colors.white70, fontWeight: FontWeight.w600),
      //   initialSelectedTab: 'Home',
      //   labels: ["Cart", "Home", "User"],
      //   icons: [Icons.shopping_cart, Icons.home, Icons.person],
      // ),
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
                    .push(MaterialPageRoute(builder: (_) => MyOrderPage()));
              case 2:
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => UserPage()));
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
        leading: Builder(
          builder: (context) {
            return InkWell(
              onTap: (){
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/burgermenu1.png',width: 25, ),
                  ],
                ),
              ),
            );
          }
        ),
        actions: [
          IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CategoryPage1()));}, icon:Icon(Icons.location_on,color: Colors.white,))
        ],

      ),
      body: Container(
        decoration:  const BoxDecoration(
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

        //===============================================CATEGORY BOX=====================================================
        child:  ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16,left:15),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    prefixIcon:Icon(Icons.search_rounded,color: Colors.white,size: 30,),
                    label: Text("Search",style: TextStyle(color:(Colors.white),)),
                    //hintStyle: TextStyle(color: (Colors.white)),

                    //filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,color:Colors.white
                      ),
                    )
                ),
              ),
            ),
            SizedBox(
                height: 10
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Category',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SizedBox(
                height: 120,
                child: ListView.separated(
                  padding: const EdgeInsets.only(left: 15,bottom: 8,right: 15),
                  scrollDirection:Axis.horizontal ,
                  shrinkWrap: true,
                  itemCount: category.length,

                  separatorBuilder: (BuildContext context,int index){
                    return const SizedBox(width: 10,);

                  },
                  itemBuilder:(context,index){
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CategoryPage1()));
                      },
                      child: Container(
                        width: 230,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topLeft:Radius.circular(20),),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(2.0,2.0),
                                  blurRadius: 5.0,
                                  spreadRadius:3
                              ),

                            ],
                            color: Color(int.parse(category[index]['clr']!))
                        ),
                        child: Row(

                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [


                                  Row(
                                    children: [
                                      Text("Sea",style: TextStyle(color: Colors.white,fontSize: 18,)),
                                      Image.asset('assets/images/leaf.png',height: 30,width: 30,),
                                    ],
                                  ),

                                  Text("Foods",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold, fontFamily: "catfont"),)
                                ],
                              ),
                            ),


                            Spacer(),
                            Image.asset(category[index]["img"]!)
                          ],
                        ),
                      ),
                    );

                  },

                ),
              ),
            ),
            //===============================================Suggesion BOX=====================================================

            SizedBox(height: 15,),
            SizedBox(height: 100,
              child: ListView.separated(
                padding: EdgeInsets.only(left:15,right: 15),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 7,
                separatorBuilder: (BuildContext context,int index){
                  return SizedBox(width: 10,);
                },


                itemBuilder: (context,index){
                  return Container(

                    width: 100,
                    decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)
                    ) ,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(sugbox[index]["img"]!),
                    ),
                  );
                },
              ),
            ),
            //===============================================POPULER MENU BOX=====================================================
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Popular menu items",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
            ),

            SizedBox(height: 15,),
            GridView.builder(
              padding:      const EdgeInsets.all(16),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: popmenu.length,

              itemBuilder: (BuildContext context,int index){

                return Stack(
                  alignment: Alignment.topCenter,

                  children: [

                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => OrderPage()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 200,
                        // height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                          color: Colors.white,
                          boxShadow:[BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2,4),
                              blurRadius: 8,
                              spreadRadius: 0
                          )],

                        ),

                      ),
                    ),
                    //SizedBox(height: 20,),

                    Image.asset(popmenu[index]['img']!,width: 120,),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Flexible(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Bowl with grilled chicken",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),

                                  Text("Hypnos",style: TextStyle(color: Colors.black,fontSize: 15),),
                                  Text("35 mins",style: TextStyle(color: Colors.black,fontSize: 15),),

                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Row(

                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Rs.149",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),),
                                        Spacer(),
                                        Icon(Icons.star,color: Color(0xffFFBC00),size: 20,),
                                        Text('4.5')
                                      ],
                                    ),
                                  ),


                                ]),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  onTap: (){
                                    setState(() {
                                      isHighlighted = !isHighlighted;
                                    });
                                  },
                                  child: isHighlighted == true?Icon(Icons.favorite, color: Colors.red,):Icon(Icons.favorite_border, color: Colors.black,)),
                              // Container(
                              //     width: 35,
                              //     height: 35,
                              //     decoration: BoxDecoration(color: Color(0xffFFBC00),
                              //         borderRadius: BorderRadius.only(topLeft: Radius.circular(15))),
                              //
                              //
                              //     child: Icon(Icons.add,color: Colors.white,)
                              // ),
                              InkWell(
                                onTap: (){
                                  showFloatingFlushbar(context: context, message: 'Text', isError: true);
                                },
                                  child: AddItemButton(height: 35, width: 35,)),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //CircleAvatar(radius: 50,backgroundImage: AssetImage(popmenu[index]['img']!),),
                  ],
                );
              },

              gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
                //crossAxisCount: 2,
                mainAxisSpacing:16,
                crossAxisSpacing: 16,
                maxCrossAxisExtent: 200,
                mainAxisExtent: 300,
              ) ,
            )

          ],
        ),

      )

   );
  }
}
