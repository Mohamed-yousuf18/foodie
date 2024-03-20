

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/sign_in_page.dart';


class CreateAccountPageTest extends StatelessWidget {
  const CreateAccountPageTest({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.purple,
      body: Stack(
        children: [
          Center(
              child: Image.asset("assets/images/pizza_img.png", width: 500,)),
          Padding(padding:EdgeInsets.all(16),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16,),
                InkWell(
                    onTap:(){
                      Navigator.of(context).pop(MaterialPageRoute(builder: (_)=>SigninPage()));
                    },
                    child: Icon(Icons.arrow_back,color: Colors.white,)),
                SizedBox(height: 40,),
                Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Text("CREATE ACCOUNT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),)
                ],),
                SizedBox(height: 50,),
                Text("Name",style: TextStyle(color: Colors.white),),
                TextField(
                  autofocus: false,
                  style: TextStyle(color:Colors.black,fontWeight: FontWeight.w400),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintStyle:TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w400),
                      hintText: 'eg.Mohamed',
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width:2.0 ) ,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(right: 10,bottom: 1),
                        child: Icon(Icons.account_circle_outlined,size: 25),
                      )

                  ),

                ),
                SizedBox(height: 20,),
                Text("Email",style: TextStyle(color: Colors.white),),
                TextField(
                  //autofocus: true,
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.4),fontWeight: FontWeight.w400),
                      hintText: 'yousuf@gmail.com',
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:BorderSide(
                            color: Colors.blue,
                            width: 2.0
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(right: 10,bottom: 1),
                        child: Icon(Icons.email_outlined),
                      )
                  ),
                ),
                SizedBox(height: 20),
                Text("Password",style: TextStyle(color: Colors.white),),
                TextField(
                  style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w400),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: TextStyle(color:Colors.black.withOpacity(0.5),fontSize: 15),
                    hintText: 'Password',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 10,bottom: 1),
                      child: Icon(Icons.lock_outline),
                    ),
                    suffixIcon: Padding(padding: EdgeInsets.only(right: 10,bottom: 1),
                        child: Icon(CupertinoIcons.eye_slash)),
                  ),


                ),
                SizedBox(height: 20),
                Text("Confirm Password",style: TextStyle(color: Colors.white)),
                TextField(
                  style:TextStyle(color: Colors.black.withOpacity(.5),fontWeight: FontWeight.w400),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    fillColor:Colors.white,
                    hintStyle: TextStyle(fontSize: 15),
                    hintText: 'Confirm Password',
                    filled:true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),

                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 10,bottom: 1),
                      child: Icon(Icons.lock_outline),
                    ),
                    suffixIcon: Padding(padding: EdgeInsets.only(right: 10,bottom: 1),
                        child: Icon(CupertinoIcons.eye_slash)),
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(300,50),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(50)
                            ),
                            elevation: 4.0
                        ),

                        onPressed:(){}, child: Text("CREATE ACCOUNT")),
                  ],


                ),
                SizedBox(height: 20,),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("-OR-",style: TextStyle(color: Colors.white),)],

                ),
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Already have an account? ",style: TextStyle(color: Colors.white),)],
                ),



                /* Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                   minimumSize: const Size(300, 45),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 4.0,
                    ),
                    onPressed: (){}, child: Text("Sign In")),
              ],
            ),*/
              ],

            ),

          ),
        ],
      ),


    );
  }
}
