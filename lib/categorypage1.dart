import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'package:foodie_app/order_page.dart';
//import 'package:flutter_svg/svg.dart';

class CategoryPage1 extends StatefulWidget {
  const CategoryPage1({super.key});

  @override
  State<CategoryPage1> createState() => _CategoryPage1State();
}

class _CategoryPage1State extends State<CategoryPage1> {
  PageController pageController = PageController();
  double turns = 0.0;

  void _changeRotationForward() {
    setState(() => turns += 2.0 / 8.0);
  }
  void _changeRotationBack() {
    setState(() => turns -= 2.0 / 8.0);
  }

  int _currentPage = 0;
  int _previousPage = 0;

  void _changeRotation() {
    if (_currentPage > _previousPage) {
      // Sliding forward
      _changeRotationForward();
    } else if (_currentPage < _previousPage) {
      // Sliding backward
      _changeRotationBack();
    }
  }

 List<CardModel> card = [CardModel(
        image: ["assets/images/recimg1","assets/images/recimg3","assets/images/recimg2","assets/images/recimg1",],
        title: ["Veg Pizza","Veg Pizza","Veg Pizza","Veg Pizza","Parotta",],
        subtitle: "Rich Rich",
        amount: "Rs.99"),
    CardModel(
        image: ["assets/images/recimg3","assets/images/recimg2","assets/images/recimg1","assets/images/recimg3",],
        title: ["Burger","Burger","Burger","Burger","Parotta",],
        subtitle: "Rochy Rick",
        amount: "Rs.150"),
    CardModel(
        image: ["assets/images/recimg2","assets/images/recimg1","assets/images/recimg3","assets/images/recimg2",],
        title:[ "Dosa", "Dosa", "Dosa", "Dosa","Parotta",],
        subtitle: "Takka",
        amount: "Rs.80"),
    CardModel(
        image: ["assets/images/recimg1","assets/images/recimg2","assets/images/recimg3","assets/images/recimg1",],
        title: ["Parotta","Parotta","Parotta","Parotta","Parotta",],
        subtitle: "Flake",
        amount: "Rs.200"),
    CardModel(
        image: ["assets/images/recimg2","assets/images/recimg3","assets/images/recimg2","assets/images/recimg2",],
        title: ["Briyani","Briyani","Briyani","Briyani","Parotta",],
        subtitle: "Dominiox",
        amount: "Rs.140"),];


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

    return Scaffold(
      backgroundColor: Color(0xff45173E),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffFCFCFC),
          // gradient: LinearGradient(
          //     begin: Alignment.bottomCenter,
          //     end: Alignment.topCenter,
          //     //  tileMode: TileMode.repeated ,
          //     colors: [
          //       Color(0xff45173E),
          //       Color(0xff45173E),
          //      // Color(0xff7B296E),
          //       //Color(0xff7B296E),
          //       Color(0xffAB399A)
          //     ]
          // ),

        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 330,
                child: Stack(
                  children: [
                    Positioned(
                      top: -350,
                      left: -300,
                      right: -300,
                      child: Column(
                        children: [
                          AnimatedRotation(
                            turns: turns,
                            duration:  Duration(milliseconds: 300),
                            child: Container(
                              margin: EdgeInsets.only(bottom: 0),
                              decoration:  BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(300)),
                                // color: Colors.blue,
                                // Change color as needed
                              ),
                              height: 650,
                              width: 650,
                              // width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                // "assets/images/round.png",
                               "assets/images/redround3.png",
                                fit: BoxFit.cover,
                              ),
                              // child:
                              // CircleAvatar(
                              //   backgroundColor: Colors.black,
                              //   child:
                              //   Column(
                              //     children: [
                              //
                              //       Positioned(
                              //         top: -20,
                              //         child: CircleAvatar(
                              //           backgroundColor: Colors.orange,
                              //           radius: 50,
                              //         ),
                              //       ),
                              //       Row(
                              //         children: [
                              //           CircleAvatar(
                              //             backgroundColor: Colors.orange,
                              //             radius: 50,
                              //           ),
                              //           Spacer(),
                              //           CircleAvatar(
                              //             backgroundColor: Colors.orange,
                              //             radius: 50,
                              //           ),
                              //
                              //         ],
                              //       ),
                              //
                              //       Spacer(),
                              //       CircleAvatar(
                              //         backgroundColor: Colors.orange,
                              //         radius: 50,
                              //       ),
                              //     ],
                              //   ),
                              //
                              // ),

                            ),
                          ),
                        ],
                      ),
                    ),
                    // Other widgets of your page
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      if (_currentPage > 0) {
                        pageController.previousPage(
                          duration: Duration(milliseconds: 10),
                          curve: Curves.easeInOutCirc,
                        );
                      }
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  Text("CATEGORIES",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w600,fontSize: 17 ),),
                  //Spacer(),
                  ElevatedButton(
                      onPressed: (){
                        if (_currentPage < 4) {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 10),
                            curve: Curves.linear,
                          );
                        }
                      },
                      child: Icon(Icons.arrow_forward))
                  //Icon(Icons.arrow_forward)
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16,left:15),
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
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 450,
                child: PageView.builder(
                    onPageChanged: (index){
                      setState(() {
                        _previousPage = _currentPage;
                        _currentPage = index;
                        _changeRotation();
                        // if(index==2){Colors.black;Container();}
                      });
                    },
                    controller: pageController,
                    itemCount: card.length,
                    itemBuilder: (context, index){
                      return GridView.builder(
                        padding:       EdgeInsets.all(30),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (BuildContext context,int indexs){

                          return Transform.translate(
                            offset: indexs.isEven ? Offset(0, 30) : Offset(0, -15),
                            child: Container(

                              width: 200,
                              // height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(2,4),
                                    blurRadius: 8,
                                    spreadRadius: 0
                                )],

                              ),
                              child: Column(
                                children:[
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 8,top: 8),
                                            child: Row(


                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children:[SvgPicture.asset('assets/svg/heart2.svg'),]

                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                  onTap: (){
                                                    onTap: Navigator.of(context).push(MaterialPageRoute(builder: (_)=>OrderPage()));
                                                  },



                                                  child: Image.asset("${card[index].image![indexs]}.png",scale: 1,)),
                                            ],
                                          ),
                                          Text("${card[index].title![indexs]}",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w600,fontSize: 17 )),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 8),
                                            child: Row(
                                              children: [
                                                Text("${card[indexs].subtitle}",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize: 15 )),
                                                Spacer(),
                                                Icon(Icons.star,color: Color(0xffFFBC00),size: 20,),
                                                Text('4.5')
                                              ],
                                            ),
                                          ),
                                          Text("20min",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize: 15 )),
                                          // Spacer(),

                                        ],

                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text("${card[indexs].amount}",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w600,fontSize: 17 )),
                                      ),
                                      Spacer(),
                                      Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                              color:
                                              // Color(0xffFFBC00)
                                            Color(0xffD60000)

                                          ),
                                          child: Icon(Icons.add,color: Colors.white,)

                                      )

                                    ],


                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          //crossAxisCount: 2,
                          mainAxisSpacing:20,
                          crossAxisSpacing: 16,
                          maxCrossAxisExtent: 200,
                          mainAxisExtent: 300,
                        ) ,
                      );
                    }
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

class CardModel{
  List? image;
  List? title;
  String? subtitle;
  String? amount;

  CardModel({
    this.image,
    this.title,
    this.subtitle,
    this.amount,
});
}

