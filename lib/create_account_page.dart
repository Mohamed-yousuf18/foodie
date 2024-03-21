import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/homepage.dart';
import 'package:foodie_app/sign_in_page.dart';


class CreateAccountPage extends StatelessWidget {
   CreateAccountPage({super.key});
  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Stack(
        alignment : AlignmentDirectional.center,
        children: [
          SingleChildScrollView(

            physics: NeverScrollableScrollPhysics(),
            child: Image.asset("assets/images/createacc.png",fit:BoxFit.fill,height: MediaQuery.of(context).size.height,),
          ),

        Padding(padding:EdgeInsets.all(16),
             child: ListView(
                 children: [
                   SizedBox(height: 16,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       InkWell(
                           onTap:(){
                             Navigator.of(context).pop(MaterialPageRoute(builder: (_)=>SigninPage()));
                           },
                           child: Icon(Icons.arrow_back,color: Colors.white,)),
                       InkWell(
                           onTap:(){
                             Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomePage()));
                           },
                           child: Icon(Icons.arrow_forward,color: Colors.white,)),
                     ],
                   ),
                   SizedBox(height: 40,),

                   //===================================================NAME textfield================================================
                   Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                     Text("CREATE ACCOUNT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),)
                   ],),
                   SizedBox(height: 50,),
                   // Text("Name",style: TextStyle(color: Colors.white),),
                   // TextField(
                   //   autofocus: false,
                   //   style: TextStyle(color:Colors.black,fontWeight: FontWeight.w400),
                   //   keyboardType: TextInputType.text,
                   //   decoration: InputDecoration(
                   //       fillColor:Colors.white70,
                   //       hintStyle:TextStyle(fontSize: 15,color:Colors.black54,fontWeight: FontWeight.w400),
                   //       hintText: 'eg.Mohamed',
                   //       filled: true,
                   //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                   //       focusedBorder: OutlineInputBorder(
                   //         borderRadius: BorderRadius.circular(8),
                   //         borderSide: BorderSide(
                   //             color: Colors.grey,
                   //             width:2.0 ) ,
                   //       ),
                   //       contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                   //       prefixIcon: Padding(
                   //         padding: EdgeInsets.only(right: 10,bottom: 1),
                   //         child: Icon(Icons.account_circle_outlined,size: 25,color:Colors.black54),
                   //       )
                   //
                   //   ),
                   //
                   // ),

                   TextField(
                     //focusNode: myFocusNode,
                     style: TextStyle(color: Colors.white),
                     decoration: InputDecoration(
                       prefixIcon:Icon(Icons.account_circle_outlined,color: Colors.white,size: 25,),
                       label: Text("Name",style: TextStyle(color:(Colors.white),)),
                       enabledBorder: UnderlineInputBorder(
                           borderSide: BorderSide(color: Colors.white70)),


                     ),
                   ),
                   const SizedBox(
                     height: 20,
                   ),
                   //===================================================EMAIL textfield================================================
                   // SizedBox(height: 20,),
                   // Text("Email",style: TextStyle(color: Colors.white),),
                   // TextField(
                   //   //autofocus: true,
                   //   style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
                   //   keyboardType: TextInputType.text,
                   //   decoration: InputDecoration(
                   //       fillColor:Colors.white70,
                   //       hintStyle: TextStyle(color:Colors.black54,fontWeight: FontWeight.w400),
                   //       hintText: 'yousuf@gmail.com',
                   //       filled: true,
                   //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                   //       focusedBorder:OutlineInputBorder(
                   //         borderRadius: BorderRadius.circular(8),
                   //         borderSide:BorderSide(
                   //             color: Colors.blue,
                   //             width: 2.0
                   //         ),
                   //       ),
                   //       contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                   //       prefixIcon: Padding(
                   //         padding: EdgeInsets.only(right: 10,bottom: 1),
                   //         child: Icon(Icons.email_outlined,color:Colors.black54),
                   //       )
                   //   ),
                   // ),


                   TextField(
                     //focusNode: myFocusNode,
                     style: TextStyle(color: Colors.white),
                     decoration: InputDecoration(
                       prefixIcon:Icon(Icons.account_circle_outlined,color: Colors.white,size: 25,),
                       label: Text("Email",style: TextStyle(color:(Colors.white),)),
                       enabledBorder: UnderlineInputBorder(
                           borderSide: BorderSide(color: Colors.white70)),

                     ),
                   ),
                   const SizedBox(
                     height: 20,
                   ),

                   //===================================================PASSWORD textfield================================================
                   // SizedBox(height: 20),
                   // Text("Password",style: TextStyle(color: Colors.white),),
                   // TextField(
                   //   style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w400),
                   //   keyboardType: TextInputType.text,
                   //   decoration: InputDecoration(
                   //     fillColor: Colors.white70,
                   //     filled: true,
                   //     hintStyle: TextStyle(color:Colors.black54,fontSize: 15),
                   //     hintText: 'Password',
                   //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                   //     focusedBorder: OutlineInputBorder(
                   //       borderRadius: BorderRadius.circular(8),
                   //       borderSide: BorderSide(
                   //           color: Colors.grey,
                   //           width: 2.0
                   //       ),
                   //     ),
                   //     contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                   //     prefixIcon: Padding(
                   //       padding: EdgeInsets.only(right: 10,bottom: 1),
                   //       child: Icon(Icons.lock_outline,color:Colors.black54),
                   //     ),
                   //     suffixIcon: Padding(padding: EdgeInsets.only(right: 10,bottom: 1),
                   //         child: Icon(CupertinoIcons.eye_slash,color:Colors.black54)),
                   //   ),
                   // ),
                   TextField(
                     obscureText: true,
                     //controller: _CntrlText,
                     style: TextStyle(color: Colors.white),
                     decoration: InputDecoration(
                         prefixIcon:Icon(Icons.lock_outline,color: Colors.white,size: 25,),
                         label: Text("Password",style: TextStyle(color:(Colors.white),)),
                         suffixIcon: Icon( CupertinoIcons.eye_slash,color:(Colors.white)),
                       enabledBorder: UnderlineInputBorder(
                           borderSide: BorderSide(color: Colors.white70)),
                       //hintStyle: TextStyle(color: (Colors.white)),


                     ),
                   ),
                   const SizedBox(
                     height: 20,
                   ),


                   // //===================================================Confirm Password textfield================================================
                   // SizedBox(height: 20),
                   // Text("Confirm Password",style: TextStyle(color: Colors.white)),
                   // TextField(
                   //   style:TextStyle(color: Colors.black.withOpacity(.5),fontWeight: FontWeight.w400),
                   //   keyboardType: TextInputType.text,
                   //   decoration: InputDecoration(
                   //     fillColor:Colors.white70,
                   //     hintStyle: TextStyle(fontSize: 15,color:Colors.black54),
                   //     hintText: 'Confirm Password',
                   //     filled:true,
                   //     border: OutlineInputBorder(
                   //       borderRadius: BorderRadius.circular(8),
                   //
                   //     ),
                   //     focusedBorder: OutlineInputBorder(
                   //       borderRadius: BorderRadius.circular(8),
                   //       borderSide: BorderSide(
                   //           color: Colors.grey,
                   //           width: 2.0
                   //       ),
                   //     ),
                   //     contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                   //     prefixIcon: Padding(
                   //       padding: EdgeInsets.only(right: 10,bottom: 1),
                   //       child: Icon(Icons.lock_outline,color:Colors.black54),
                   //     ),
                   //     suffixIcon: Padding(padding: EdgeInsets.only(right: 10,bottom: 1),
                   //         child: Icon(CupertinoIcons.eye_slash,color:Colors.black54)),
                   //   ),
                   // ),
          TextField(
            obscureText: true,
           // controller: _CntrlText,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                prefixIcon:Icon(Icons.lock_outline,color: Colors.white,size: 25,),
                label: Text(" Confirm Password",style: TextStyle(color:(Colors.white),)),
                suffixIcon: Icon( CupertinoIcons.eye_slash,color:(Colors.white)),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70)),
              //hintStyle: TextStyle(color: (Colors.white)),


            ),
          ),
                   const SizedBox(
                     height: 20,
                   ),
                   //=============================================================================================================================
                   SizedBox(height: 50,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       ElevatedButton(
                           style: ElevatedButton.styleFrom(
                               minimumSize: Size(280.w, 43.h),
                               backgroundColor: Colors.white12,
                               foregroundColor: Colors.white,
                               shape: RoundedRectangleBorder(
                                   borderRadius:BorderRadius.circular(50)
                               ),
                               elevation: 4.0
                           ),

                           onPressed:(){
                             Navigator.of(context).push(MaterialPageRoute(builder: (_) => SigninPage() ));
                           }, child: Text("CREATE ACCOUNT",style: TextStyle(fontWeight: FontWeight
                           .w500,fontSize: 17),)),
                     ],


                   ),
                   SizedBox(height: 20,),

                   Row(mainAxisAlignment: MainAxisAlignment.center,
                     children: [Text("-OR-",style: TextStyle(color: Colors.white),)],

                   ),
                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [Text("Already have an account? ",style: TextStyle(color: Colors.white),),
                       Text("Sign In",style: TextStyle(color: Colors.lightBlueAccent,fontWeight: FontWeight.w500),)],

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
                 ])

         ),

        ],
      ),
    );
  }
}
