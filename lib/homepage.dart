import 'package:another_flushbar/flushbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie_app/my_order_page.dart';
import 'package:foodie_app/order_page.dart';
import 'package:foodie_app/sign_in_page.dart';
import 'package:foodie_app/testingpage/bottom_navigation_bar.dart';
import 'package:foodie_app/userpage.dart';
import 'package:foodie_app/widgets/Add_Icon_button.dart';
import 'package:foodie_app/widgets/category_cont.dart';
import 'package:foodie_app/widgets/menu_bar_.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

import 'categorypage1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  List<menu> menubar =[

    menu(
      icon: Icon(Icons.home,color: Colors.white,),text: 'Home',),
    menu(
      icon: Icon(Icons.search_rounded,color: Colors.white,),text: 'Search',),
    menu(
      icon: Icon(Icons.favorite_border,color: Colors.white,),text: 'Favorites',),
    menu(
      icon: Icon(Icons.my_library_books_outlined,color: Colors.white,),text: 'Orders',),
    menu(
      icon: Icon(Icons.person,color: Colors.white,),text: 'Profile',),

    menu(
      icon: Icon(Icons.settings,color: Colors.white,),text: 'Settings',),
    menu(
      icon: Icon(Icons.help,color: Colors.white,),text: 'Help',),
    menu(
      icon: Icon(Icons.logout,color: Colors.white,),text: 'Logout',),

  ];

  int index=0;

  bool isHighlighted = false;
   bool location = false;

  void showFloatingFlushbar( {required BuildContext context,
    @required String? message,
    @required bool? isError}){
    Flushbar? flush;
    bool? _wasButtonClicked;
    flush = Flushbar<bool>(
      borderRadius: BorderRadius.circular(16),
      title: "1 Item Added",
      titleColor: Colors.black ,
      messageColor: Colors.black,
      message: message,
      backgroundColor: Colors.white,//Color(0XFFF6318C),
      duration: Duration(seconds: 3),
      margin: EdgeInsets.all(20),
      borderColor: Colors.grey,


      icon: Icon(
        Icons.info_outline,
        color: Colors.black,),
      mainButton: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => OrderPage()));
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
                color: Colors.black, size: 25,),
            ],
          ),
        ),
      ),) // <bool> is the type of the result passed to dismiss() and collected by show().then((result){})
      ..show(context).then((result) {

      });
  }

  @override
  Widget build(BuildContext context)
  {

    // var category=[
    //   {'img':'assets/images/CimgII.png','clr':'0xff43BFC7','subtxt':'Sea','txt':'Sea'},
    //   {'img':'assets/images/Cimgiii.png','clr':'0xffF8B195','subtxt':'Veg','txt':'Sea'},
    //   {'img':'assets/images/Cimgvi.png','clr':'0xffF6AAD0','subtxt':'Chinese','txt':'Sea'},
    //   {'img':'assets/images/CimgIV.png','clr':'0xffABD4C1','subtxt':'Fruit','txt':'Sea'},
    //
    //
    // ];

    List<CategoryCont>catecont=[
      CategoryCont(
        image: 'assets/images/CCimg6.png',
        subimage:'assets/images/leaf.png',
        subtext:"Fried ",
        Text: "Chicken",
        Colors:0xff747474 ,

      ), CategoryCont(
        image: 'assets/images/CCimg2.png',
        subimage:'assets/images/grapes.png',
        subtext:"Veg",
        Text: "Food",
        Colors:0xff747474 ,

      ), CategoryCont(
        image: 'assets/images/CCimg3.png',
        subimage:'assets/images/leaf.png',
        subtext:"Fruit",
        Text: "Dishes",
        Colors:0xff747474 ,

      ), CategoryCont(
        image: 'assets/images/CCimg4.png',
        subimage:'assets/images/leaf.png',
        subtext:"Sea",
        Text: "Food",
        Colors:0xff747474 ,

      ),


    ];
    var sugbox=[
      {'img':'assets/images/icons/Aimg1.png'},
      {'img':'assets/images/icons/Aimg2.png'},
      {'img':'assets/images/icons/Aimg3.png'},
      {'img':'assets/images/icons/Aimg4.png'},
      {'img':'assets/images/icons/Aimg2.png'},
      {'img':'assets/images/icons/Aimg5.png'},
      {'img':'assets/images/icons/Aimg7.png'},


    ]; var popmenu=[
      {'img':'assets/images/icons/Aimg1.png'},
      {'img':'assets/images/icons/Aimg2.png'},
      {'img':'assets/images/icons/Aimg3.png'},
      {'img':'assets/images/icons/Aimg2.png'},
      {'img':'assets/images/icons/Aimg1.png'},
      {'img':'assets/images/icons/Aimg2.png'},
      {'img':'assets/images/icons/Aimg1.png'},
      {'img':'assets/images/icons/Aimg1.png'},
      {'img':'assets/images/icons/Aimg1.png'},
      {'img':'assets/images/icons/Aimg1.png'},
      {'img':'assets/images/icons/Aimg1.png'},
      {'img':'assets/images/icons/Aimg1.png'},
      // {'img':'assets/images/recimg2.png'},
      // {'img':'assets/images/recimg3.png'},
      // {'img':'assets/images/recimg1.png'},
      // {'img':'assets/images/recimg2.png'},
      // {'img':'assets/images/recimg3.png'},
      // {'img':'assets/images/recimg1.png'}, {'img':'assets/images/recimg1.png'},
      // {'img':'assets/images/recimg2.png'},
      // {'img':'assets/images/recimg3.png'},
      // {'img':'assets/images/recimg1.png'},
      // {'img':'assets/images/recimg2.png'},
      // {'img':'assets/images/recimg3.png'},
      // {'img':'assets/images/recimg1.png'},


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
    var length;
    return Scaffold(
      drawer:  Drawer(
        child:Container(
          //color: Color(0xffFF7DE5),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                //  tileMode: TileMode.repeated ,
                colors: [
                  Color(0xff45173E),
                  Color(0xff7B296E),
                  //Color(0xff7B296E),
                  Color(0xffAB399A),
                ]
            ),
          ),
          child: ListView(
            children: [
              DrawerHeader(child:Column(
                children: [
                  CircleAvatar
                    (child: Icon(Icons.person,color: Colors.black,size: 50,),radius: 30,),
                  Text("Mohamed",style: TextStyle(color: Colors.white),),
                  Text("mohamed123@example.com",style: TextStyle(color: Colors.white),),
                ],
              )),
              SizedBox(
                height: 500,
                child: ListView.builder(
                  shrinkWrap: true,
                    itemCount: menubar.length,
                itemBuilder: (context,index){
                      return ListTile(
                        leading: menubar[index].icon,
                        title: Text('${menubar[index].text}',style: TextStyle(color: Colors.white),),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomePage()));
                        },
                      );

                },

                ),
              ),

            ],
          ),
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
          //backgroundColor: Color(0xff47163F),
          backgroundColor: Color(0xffD60000),
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


        //==================================================================================
      appBar: AppBar(
        //backgroundColor: Color(0xff47163F),
        backgroundColor:  Color(0xffD60000),
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
                    Image.asset('assets/images/burgermenu1.png',width: 25 ),
                  ],
                ),
              ),
            );
          }
        ),
        actions: [
          IconButton(onPressed: (){

            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CategoryPage1()));
            //if (location)
            }, icon:Icon(Icons.location_on,color: Colors.white,))
        ],

      ),
      body: Container(
        decoration:  const BoxDecoration(
          // gradient: LinearGradient(
          //   //  tileMode: TileMode.repeated ,
          //     colors: [
          //       Color(0xff45173E),
          //       Color(0xff7B296E),
          //       //Color(0xff7B296E),
          //       Color(0xffAB399A)
          //     ]
          // ),
          color: Color(0xffFAFAFA)

        ),

        //===============================================CATEGORY BOX=====================================================
        child:  ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16,left:15),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    prefixIcon:Icon(Icons.search_rounded,color: Colors.black,size: 30,),
                    label: Text("Search",style: TextStyle(color:(Colors.black),)),
                    //hintStyle: TextStyle(color: (Colors.white)),

                    //filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,color:Colors.black
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
                  Text('Category',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SizedBox(
                height: 140,
                child: ListView.separated(
                  padding: const EdgeInsets.only(left: 15,bottom: 8,right: 15),
                  scrollDirection:Axis.horizontal ,
                  shrinkWrap: true,
                  itemCount: catecont.length,

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
                            //color: Color(int.parse(category[index]['clr']!))
                          //color:Color(int.parse(catecont[index].Colors.substring(2),radix: 16))
                          color: Color(catecont[index].Colors)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 10),
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
                                        Text("${catecont[index].subtext}",style: TextStyle(color: Colors.white,fontSize: 16,)),
                                        //Image.asset('${catecont[index].subimage}',height: 30,width: 30,),
                                      ],
                                    ),

                                    Text("${catecont[index].Text}",style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),)
                                  ],
                                ),
                              ),


                              Spacer(),
                              Image.asset("${catecont[index].image}",scale: 3,)
                            ],
                          ),
                        ),
                      ),
                    );

                  },

                ),
              ),
            ),
            //===============================================Suggesion BOX=====================================================
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Choose your breakfast",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
            ),

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
                  return InkWell(
                    onTap: (){
                      //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>NavigationPage()));

                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5),

                      width: 100,
                      decoration:BoxDecoration(
                          color: Color(0xffFCFCFC),
                          borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(2.0,2.0),
                              blurRadius: 8.0,
                              spreadRadius:2
                          ),

                        ],
                      ) ,
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(sugbox[index]["img"]!,),
                      ),
                    ),
                  );
                },
              ),
            ),
            //===============================================POPULER MENU BOX=====================================================
            SizedBox(height: 10,),
            GestureDetector(
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => SigninPage()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Popular menu items",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
              ),
            ),

            SizedBox(height: 15,),
            GridView.builder(
              padding:      const EdgeInsets.all(16),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: popmenu.length,

              itemBuilder: (BuildContext context,int index){

                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => OrderPage()));
                  },
                  child: Stack(
                    alignment: Alignment.topCenter,

                    children: [

                      Container(
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
                      //SizedBox(height: 20,),
                      Column(
                        children: [
                          Flexible(
                            child: Column(
                              children: [
                            Image.asset(popmenu[index]['img']!,width: 120,),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Grilled chicken",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                                  SizedBox(height: 4,),
                                  Text("KFD",style: TextStyle(color: Colors.black,fontSize: 15),),
                                  SizedBox(height: 4,),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Rs.149",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),),
                                      Spacer(),
                                      Icon(Icons.star,color: Color(0xffFFBC00),size: 20,),
                                      Text('4.5'),


                                    ],
                                  ),

                                ],
                              ),
                            ),

                               ],
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [

                                LikeButton(

                                ),

                                // Padding(
                                //   padding: const EdgeInsets.only(left: 8.0),
                                //   child: InkWell(
                                //       onTap: (){
                                //         setState(() {
                                //           isHighlighted = !isHighlighted;
                                //         });
                                //       },
                                //       child: isHighlighted == true?Icon(Icons.favorite, color: Colors.red,):Icon(Icons.favorite_border, color: Colors.black,)),
                                // ),

                                InkWell(
                                    onTap: (){
                                      showFloatingFlushbar(context: context, message: 'Text', isError: true);
                                    },
                                    child: AddItemButton(height: 35, width: 35,)),
                              ],
                            ),
                          ),
                        ],

                      )




                      //CircleAvatar(radius: 50,backgroundImage: AssetImage(popmenu[index]['img']!),),
                    ],
                  ),
                );
              },

              gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
                //crossAxisCount: 2,
                mainAxisSpacing:16,
                crossAxisSpacing: 16,
                maxCrossAxisExtent: 200,
                mainAxisExtent: 260,
              ) ,
            )

          ],
        ),

      )

   );
  }
}


class CurvedNavigationBarItem {
}



// class _menu {
//   Widget? icon;
//   String? text;
//
//   _menu({
//     this.icon,
//     this.text,
//   });
// }
