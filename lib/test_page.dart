// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/widgets.dart';
// //
// // class TestPage extends StatefulWidget {
// //   const TestPage({super.key});
// //
// //   @override
// //   State<TestPage> createState() => _TestPageState();
// // }
// //
// // class _TestPageState extends State<TestPage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         alignment: Alignment.topCenter,
// //         children: [
// //           Positioned(
// //             child: Container(
// //             height: 400,
// //                      // width: 400,
// //             decoration: BoxDecoration(
// //               color: Colors.red,
// //               borderRadius: BorderRadius.circular(500)
// //             ),
// //                     ),
// //           ),
// //           Positioned(
// //             right: 130,
// //               bottom: 300,
// //               child: Image.asset("assets/images/CCimg1.png", width: 150,)),
// //           Positioned(
// //             right: 280,
// //               bottom: 150,
// //               child: Image.asset("assets/images/CCimg1.png", width: 150,)),
// //           Positioned(
// //             left: 280,
// //               bottom: 150,
// //               child: Image.asset("assets/images/CCimg1.png", width: 150,)),
// //           Positioned(
// //             right: 130,
// //               top: 300,
// //               child: Image.asset("assets/images/CCimg1.png", width: 150,)),
// //
// //       ]
// //       ),
// //     );
// //   }
// // }
// //  import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// //
// // class TestPage extends StatefulWidget {
// //    const TestPage({super.key});
// //
// //    @override
// //    State<TestPage> createState() => _TestPageState();
// //  }
// //
// //  class _TestPageState extends State<TestPage> {
// //    @override
// //    Widget build(BuildContext context) {
// //      return Scaffold(
// //        appBar: AppBar(
// //          leading: Icon(Icons.arrow_back,),
// //          actions: [
// //            Icon(Icons.favorite_border,),
// //            Icon(Icons.share,),
// //            Icon(Icons.more_vert,),
// //          ],
// //        ),
// //        body: Column(
// //          children: [
// //            Row(
// //              children: [
// //                CircleAvatar(),
// //                SizedBox(width: 20,),
// //                Text("Mango Leaf \n barbeque Restaurant",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
// //                SizedBox(width: 20,),
// //                Container(
// //                  width: 10,
// //                  height: 10,
// //                  color: Colors.red,
// //
// //                ),
// //              ],
// //            ),
// //            SizedBox(height: 20,),
// //
// //            Padding(
// //              padding: const EdgeInsets.all(8.0),
// //              child: Container(
// //                width: double.infinity,
// //                height: 150,
// //                color: Colors.blue,
// //                child: Padding(
// //                  padding: const EdgeInsets.all(8.0),
// //                  child: Row(
// //                    children: [
// //                      Container(
// //                        height: 120,
// //                        width: 110,
// //                        decoration: BoxDecoration(
// //                          color:Colors.red,
// //                          borderRadius: BorderRadius.circular(10),
// //                        ),
// //
// //                      ),
// //                      SizedBox(width: 8,),
// //                      Column(
// //                        mainAxisAlignment: MainAxisAlignment.center,
// //                        crossAxisAlignment: CrossAxisAlignment.start,
// //                        children: [
// //                          Row(
// //                            children: [
// //                              Text("Chicken Kadai",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
// //                              SizedBox(width: 80,),
// //                              Icon(Icons.favorite_border),
// //                            ],
// //                          ),
// //                          Text("In the eighteenth century... ",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w400)),
// //                          Row(
// //                            children: [
// //                              Icon(Icons.star),
// //                              Icon(Icons.star),
// //                              Icon(Icons.star),
// //                              Icon(Icons.star),
// //                              Icon(Icons.star),
// //
// //                            ],
// //
// //                          ),
// //                          Row(
// //                            children: [
// //                              Text("Rs.199 ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500)),
// //                              SizedBox(width: 100,),
// //                              Container(
// //                                height: 30,
// //                                width: 60,
// //                                decoration: BoxDecoration(
// //                                  color:Colors.red,
// //                                  borderRadius: BorderRadius.circular(10),
// //                                ),
// //
// //                              ),
// //                            ],
// //                          ),
// //
// //
// //                        ],
// //                      ),
// //
// //
// //
// //                    ],
// //                  ),
// //                ),
// //              ),
// //            )
// //          ],
// //
// //        ),
// //
// //      );
// //    }
// //  }
//
// import 'package:expansion_widget/expansion_widget.dart';
// import 'package:flutter/material.dart';
// import 'dart:math' as math;
//
// class TestPage extends StatefulWidget {
//   const TestPage({super.key});
//
//   @override
//   State<TestPage> createState() => _TestPageState();
// }
//
// class _TestPageState extends State<TestPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Padding(
//         padding: const EdgeInsets.only(top: 20.0),
//         child: Column(
//           children: [
//             ExpansionWidget(
//                 initiallyExpanded: true,
//                 titleBuilder:
//                     (double animationValue, _, bool isExpaned, toogleFunction) {
//                   return InkWell(
//                       onTap: () => toogleFunction(animated: true),
//                       child: Padding(
//                         padding: EdgeInsets.all(8),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Expanded(child: Text('Expansion Widget Title 1')),
//                             Transform.rotate(
//                               angle: math.pi * animationValue / 2,
//                               child: Icon(Icons.arrow_right, size: 40),
//                               alignment: Alignment.center,
//                             )
//                           ],
//                         ),
//                       ));
//                 },
//                 content: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     width: double.infinity,
//                     height: 150,
//                     color: Colors.blue,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         children: [
//                           Container(
//                             height: 120,
//                             width: 110,
//                             decoration: BoxDecoration(
//                               color: Colors.red,
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 8,
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   Text("Chicken Kadai",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold)),
//                                   SizedBox(
//                                     width: 80,
//                                   ),
//                                   Icon(Icons.favorite_border),
//                                 ],
//                               ),
//                               Text("In the eighteenth century... ",
//                                   style: TextStyle(
//                                       color: Colors.black54,
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w400)),
//                               Row(
//                                 children: [
//                                   Icon(Icons.star),
//                                   Icon(Icons.star),
//                                   Icon(Icons.star),
//                                   Icon(Icons.star),
//                                   Icon(Icons.star),
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   Text("Rs.199 ",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.w500)),
//                                   SizedBox(
//                                     width: 100,
//                                   ),
//                                   Container(
//                                     height: 30,
//                                     width: 60,
//                                     decoration: BoxDecoration(
//                                       color: Colors.red,
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 )),
//             ExpansionWidget(
//                 initiallyExpanded: true,
//                 titleBuilder:
//                     (double animationValue, _, bool isExpaned, toogleFunction) {
//                   return InkWell(
//                       onTap: () => toogleFunction(animated: true),
//                       child: Padding(
//                         padding: EdgeInsets.all(8),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Expanded(
//                               child: Container(
//                                 width: double.infinity,
//                                 height: 150,
//                                 color: Colors.blue,
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Row(
//                                     children: [
//                                       Container(
//                                         height: 120,
//                                         width: 110,
//                                         decoration: BoxDecoration(
//                                           color: Colors.red,
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 8,
//                                       ),
//                                       Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Row(
//                                             children: [
//                                               Text("Chicken Kadai",
//                                                   style: TextStyle(
//                                                       color: Colors.black,
//                                                       fontSize: 20,
//                                                       fontWeight:
//                                                           FontWeight.bold)),
//                                               SizedBox(
//                                                 width: 80,
//                                               ),
//                                               Icon(Icons.favorite_border),
//                                             ],
//                                           ),
//                                           Text("In the eighteenth century... ",
//                                               style: TextStyle(
//                                                   color: Colors.black54,
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.w400)),
//                                           Row(
//                                             children: [
//                                               Icon(Icons.star),
//                                               Icon(Icons.star),
//                                               Icon(Icons.star),
//                                               Icon(Icons.star),
//                                               Icon(Icons.star),
//                                             ],
//                                           ),
//                                           Row(
//                                             children: [
//                                               Text("Rs.199 ",
//                                                   style: TextStyle(
//                                                       color: Colors.black,
//                                                       fontSize: 18,
//                                                       fontWeight:
//                                                           FontWeight.w500)),
//                                               SizedBox(
//                                                 width: 100,
//                                               ),
//                                               Container(
//                                                 height: 30,
//                                                 width: 60,
//                                                 decoration: BoxDecoration(
//                                                   color: Colors.red,
//                                                   borderRadius:
//                                                       BorderRadius.circular(10),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Transform.rotate(
//                               angle: math.pi * animationValue / 2,
//                               // child: Icon(Icons.arrow_right, size: 40),
//                               alignment: Alignment.center,
//                             )
//                           ],
//                         ),
//                       ));
//                 },
//                 content: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     width: double.infinity,
//                     height: 150,
//                     color: Colors.blue,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         children: [
//                           Container(
//                             height: 120,
//                             width: 110,
//                             decoration: BoxDecoration(
//                               color: Colors.red,
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 8,
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   Text("Chicken Kadai",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold)),
//                                   SizedBox(
//                                     width: 80,
//                                   ),
//                                   Icon(Icons.favorite_border),
//                                 ],
//                               ),
//                               Text("In the eighteenth century... ",
//                                   style: TextStyle(
//                                       color: Colors.black54,
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w400)),
//                               Row(
//                                 children: [
//                                   Icon(Icons.star),
//                                   Icon(Icons.star),
//                                   Icon(Icons.star),
//                                   Icon(Icons.star),
//                                   Icon(Icons.star),
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   Text("Rs.199 ",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.w500)),
//                                   SizedBox(
//                                     width: 100,
//                                   ),
//                                   Container(
//                                     height: 30,
//                                     width: 60,
//                                     decoration: BoxDecoration(
//                                       color: Colors.red,
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 )),
//           ],
//         ),
//       )),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class TestPage extends StatefulWidget {
//   const TestPage({super.key});
//
//   @override
//   State<TestPage> createState() => _TestPageState();
// }
//
// class _TestPageState extends State<TestPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.red,
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(height: 300),
//             Text("ImmiGo",style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w600,
//             fontSize: 30),),
//
//             Text("WELCOME ON BOARD",style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w600,
//                 fontSize: 30),),
//             SizedBox(height: 90),
//           Container(
//             height: 430.2,
//            // color: Colors.grey,
//             //decoration: ,
//
//           )
//           ],
//         ),
//       ),
//     );
//   }
// }
/*import 'package:flutter/material.dart';
import 'package:foodie_app/widgets/bottomNavigationBarCustom.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _page = 0;
  int index  = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DefaultNavBar(),
      body: Container(
        child: Column(
          children: [
            Icon(Icons.toggle_on),
            Icon(Icons.fingerprint),
            //Icon(Icons.fingerprint_off),

          ],
        )

      ),
    );
  }


}

 */



/*import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CircleNavBar(
        activeIndex: 1,
        activeIcons: [
          Icon(Icons.person, color: Colors.deepPurple),
          Icon(Icons.home, color: Colors.deepPurple),
          Icon(Icons.favorite, color: Colors.deepPurple),
        ],
        inactiveIcons: [
          Text("My"),
          Text("Home"),
          Text("Like"),
        ],
        height:60,
        circleWidth: 60,
        color: Colors.orange,

      ),

    );
  }
}

 */

import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(

            ),
            Container(
              height: 400,
              color: Colors.deepOrange,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                physics:BouncingScrollPhysics(),
                shrinkWrap: true,
        
                itemCount: 14,
                itemBuilder: (BuildContext context,int index){
        
                  return  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 200,
                    // height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                      color: Colors.greenAccent,
                      boxShadow:[BoxShadow(
                          color: Colors.black26,
                          offset: Offset(2,4),
                          blurRadius: 8,
                          spreadRadius: 0
                      )],
        
                    ),
        
                  );;
                },
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisExtent:260,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    maxCrossAxisExtent: 200),
        
              ),
            ),

          ],
        ),
      ),
    );
  }
}


