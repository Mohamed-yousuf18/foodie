import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie_app/categorypage2.dart';
//import 'package:flutter_svg/svg.dart';

class CategoryPage2 extends StatefulWidget {
  const CategoryPage2({super.key});

  @override
  State<CategoryPage2> createState() => _CategoryPage1State();
}

class _CategoryPage1State extends State<CategoryPage2> {
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

  List<CardModel> card = [
    CardModel(image: "assets/images/recimg1", title: "Veg Pizza", subtitle: "Rich Rich", amount: "Rs.99"),
    CardModel(image: "assets/images/recimg2", title: "Burger", subtitle: "Rochy Rick", amount: "Rs.150"),
    CardModel(image: "assets/images/recimg3", title: "Dosa", subtitle: "Takka", amount: "Rs.80"),
    CardModel(image: "assets/images/recimg1", title: "Parotta", subtitle: "Flake", amount: "Rs.200"),
    CardModel(image: "assets/images/recimg1", title: "Briyani", subtitle: "Dominiox", amount: "Rs.140"),
  ];


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
      backgroundColor: Colors.black38,
      body: SingleChildScrollView(
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
                              // color: Colors.blue, // Change color as needed
                            ),
                            height: 700,
                            width: 700,
                            //  width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              "assets/images/round.png",
                              fit: BoxFit.cover,
                            ),
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
                        duration: Duration(milliseconds: 0),
                        curve: Curves.linear,
                      );
                    }
                  },
                  child: Icon(Icons.arrow_back),
                ),
                InkWell(
                    onTap: (){
                      // Navigator.of(context).push(MaterialPageRoute(builder: (_) => CategoryPage()));
                    },
                    child: Text("CATEGORIES",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize: 17 ),)),
                //Spacer(),
                ElevatedButton(
                    onPressed: (){
                      if (_currentPage < 4) {
                        pageController.nextPage(
                          duration: Duration(microseconds:1 ),
                          curve: Curves.easeOutExpo,
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
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 560,
              child: PageView.builder(
                  onPageChanged: (index){
                    setState(() {
                      _previousPage = _currentPage;
                      _currentPage = index;
                      _changeRotation();
                    });
                  },
                  controller: pageController,
                  itemCount: 3,
                  itemBuilder: (context, index){
                    return GridView.builder(
                      padding:       EdgeInsets.all(30),
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: card.length,
                      itemBuilder: (BuildContext context,int index){
                        return Transform.translate(
                          offset: index.isEven ? Offset(0, 50) : Offset(0, -1),
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
                                            Image.asset("${card[index].image}.png",scale: 0.9,),
                                          ],
                                        ),
                                        Text("${card[index].title}",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w600,fontSize: 17 )),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8),
                                          child: Row(
                                            children: [
                                              Text("${card[index].subtitle}",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w400,fontSize: 15 )),
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
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("${card[index].amount}",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w600,fontSize: 17 )),
                                    ),
                                    Spacer(),
                                    Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                            color: Color(0xffFFBC00)

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
    );
  }
}

class CardModel{
  String? image;
  String? title;
  String? subtitle;
  String? amount;

  CardModel({
    this.image,
    this.title,
    this.subtitle,
    this.amount,
  });
}

