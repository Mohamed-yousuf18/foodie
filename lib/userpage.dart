import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodie_app/user_profile_model/user_model.dart';

class UserPage extends StatelessWidget {
   UserPage({super.key});

  List<UserModel> user = [
    UserModel(icon: Icon(Icons.person,color: Colors.white,size: 30,), text: "Profile Information"),
    UserModel(icon: Icon(Icons.payment, color: Colors.white,size: 30,), text: "Payment Information"),
    UserModel(icon: Icon(Icons.production_quantity_limits,  color: Colors.white,size: 30,), text: "Profile Information"),
    UserModel(icon: Icon(Icons.live_help_sharp,color: Colors.white,size: 30,), text: "Profile Information"),
    UserModel(icon: Icon(Icons.person), text: "Profile Information"),
    UserModel(icon: Icon(Icons.person), text: "Profile Information"),
    UserModel(icon: Icon(Icons.person), text: "Profile Information"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/userpagebck.png"), fit: BoxFit.fill)
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar
                            (child: Icon(Icons.person,color: Colors.black,size: 50,),radius: 50,),
                                       Text("Mohamed",style: TextStyle(color: Colors.white),),
                                       Text("mohamed123@example.com",style: TextStyle(color: Colors.white),),
        SizedBox(
          height: 30,
        ),
        Container(
                        width: 330,
                        height: 80,
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

                        child:Padding(
                          padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Column(
                                children: [
                                  Icon(Icons.event_note_outlined,color: Colors.white,),
                                  Text("My Order",style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.favorite_border,color: Colors.white,),
                                  Text("Favorites",style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.notification_add_outlined,color: Colors.white,),
                                  Text("Notification",style: TextStyle(color: Colors.white),),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
        SizedBox(height: 16,),
        SizedBox(
          height: 500,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: user.length,
              itemBuilder: (context, index){
              return  Column(
                children: [
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        user[index].icon ?? Icon(Icons.person) ,
                        SizedBox(width: 20,),
                        Text("${user[index].text}",style: TextStyle(color: Colors.white,fontSize: 18),),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,),

                      ],
                    ),
                  ),
                    Divider(
                          indent: 50,
                          endIndent: 15,
                          thickness: 2,
                        ),
                ],
              );
              }
          ),
        )



          ],
        ),
      )


    );
  }
}
