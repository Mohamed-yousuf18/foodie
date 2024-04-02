import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'create_account_page.dart';
import 'homepage.dart';


class SigninPage extends StatefulWidget {
   SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

   FocusNode myFocusNode = FocusNode();

   String email = "";

   String passowrd = "";

   String name = "";

   bool login = false;

  void _login(BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // If login is successful, you can navigate to another screen or perform other actions.
      // For example, you might want to navigate to the home screen.
      Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => HomePage()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        // Show wrong password error message on screen using SnackBar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Wrong password provided for that user.'),
            duration: Duration(seconds: 2), // Adjust the duration as needed
          ),
        );
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Center(
                child: Image.asset(
                    "assets/images/signbckimg.png", fit: BoxFit.cover)),
            Padding(
              padding: EdgeInsets.all(14).w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(
                    height: .04.sh,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/logoicon.svg"),
                      // Icon(Icons.arrow_back, color: Colors.white70,),
                      const SizedBox(
                        width: 16,
                      ),
                       Text("foodie", style: TextStyle(fontSize: 25.sp,
                          color: Colors.white70,
                          fontWeight: FontWeight.w400),),
                    ],
                  ),
                   SizedBox(
                    height: .21.sh,
                  ),
                   Text("Login", style: TextStyle(fontSize: 22.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),),

                   15.verticalSpace,



                  //==================================================Email TextField box======================================================
                  // TextField(
                  //   autofocus: false,
                  //   style: const TextStyle(
                  //       color: Colors.black54,fontWeight: FontWeight.w400),
                  //   keyboardType: TextInputType.text,
                  //   decoration: InputDecoration(
                  //
                  //     fillColor:Colors.white70,
                  //     label: Text("Email", style: TextStyle(color:Colors.black),),
                  //     hintStyle: const TextStyle(
                  //         fontSize: 15, color: Colors.black54),
                  //     filled: true,
                  //     // label: Text("Search by Masjid Name", style: TextStyle(fontSize: 12),),
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(8),
                  //     ),
                  //     focusedBorder: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(8),
                  //       borderSide: const BorderSide(
                  //         color: Colors.grey,
                  //         // Change the border color for focused state
                  //         width: 2.0, // Change the border width for focused state
                  //       ),
                  //     ),
                  //     contentPadding: EdgeInsets.symmetric(
                  //         horizontal: 16, vertical: 15),
                  //     prefixIcon: Padding(
                  //       padding: const EdgeInsets.only(right: 10, bottom: 1),
                  //       child: IconButton(onPressed: () {}, icon: Icon(Icons
                  //           .email_outlined, size: 25, color: Colors.black54),),
                  //     ),
                  //   ),
                  //
                  // ),
                  TextField(
                    controller: _emailController,
                    focusNode: myFocusNode,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon:Icon(Icons.email_outlined,color: Colors.white,size: 25,),
                        label: Text("Email",style: TextStyle(color:(Colors.white),)),
                      contentPadding: EdgeInsets.symmetric(
                               horizontal: 16, vertical: 13).w,
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70)),


                    ),
                    onSubmitted: (value){
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                   SizedBox(
                    height: 30.h,
                  ),

                  //==================================================Password TextField box======================================================
                  // TextField(
                  //   autofocus: false,
                  //   style: TextStyle(
                  //       color: Colors.black, fontWeight: FontWeight.w400),
                  //   keyboardType: TextInputType.text,
                  //   decoration: InputDecoration(
                  //    fillColor: Colors.white70,
                  //     label: Text("Password", style: TextStyle(color: Colors.white54),),
                  //     hintStyle: TextStyle(fontSize: 15, color: Colors.black54),
                  //     // hintText: 'Password',
                  //     filled: true,
                  //     // label: Text("Search by Masjid Name", style: TextStyle(fontSize: 12),),
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(8),
                  //     ),
                  //     focusedBorder: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(8),
                  //       borderSide: const BorderSide(
                  //         color: Colors.grey,
                  //         // Change the border color for focused state
                  //         width: 2.0, // Change the border width for focused state
                  //       ),
                  //     ),
                  //     contentPadding: const EdgeInsets.symmetric(
                  //         horizontal: 16, vertical: 15),
                  //     prefixIcon: Padding(
                  //       padding: const EdgeInsets.only(right: 10, bottom: 1),
                  //       child: IconButton(onPressed: () {}, icon: const Icon(
                  //           Icons.lock_outline, size: 25,
                  //           color: Colors.black54),),
                  //     ),
                  //     suffixIcon: Padding(
                  //       padding: const EdgeInsets.only(right: 10, bottom: 1),
                  //       child: IconButton(onPressed: () {}, icon: const Icon(
                  //           CupertinoIcons.eye_slash, size: 25,
                  //           color: Colors.black54),),
                  //     ),
                  //   ),
                  // ),
                  TextField(
                    obscureText: true,
                    controller: _passwordController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16, vertical: 13).w,
                        prefixIcon:Icon(Icons.lock_outline,color: Colors.white,size: 25,),
                        label: Text("Password",style: TextStyle(color:(Colors.white),fontSize: 14.sp)),
                        suffixIcon: Icon( CupertinoIcons.eye_slash,color:(Colors.white)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70)),

                      //hintStyle: TextStyle(color: (Colors.white)),


                    ),





                    onSubmitted: (value){
                      setState(() {
                        passowrd = value;
                      });
                    },
                  ),
                   SizedBox(
                    height: .05.sh,
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child:  SizedBox(
                      height: 8.h,
                    ),
                  ),

                  //==================================================Sign In Button======================================================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize:  Size(280.w, 43.h),
                            backgroundColor: Colors.white10,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 4.0,
                          ),
                          onPressed: () {
                            _login(context);
                            //_signUp(context);
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (_) => HomePage()));
                          },
                          child: Text(
                            "LOGIN", style: TextStyle(fontWeight: FontWeight
                              .w600,fontSize: 18),)),
                    ],
                  ),
                   SizedBox(
                    height: 8.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("-OR-", style: TextStyle(color: Colors.white)),

                    ],
                  ),
                   SizedBox(
                    height: 8.h,
                  ),

                  //================================================== Text  Sign In With======================================================
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sign In with", style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600,fontSize: 13.sp)),
                    ],
                  ),

                   SizedBox(
                    height: 12.h,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      InkWell(child: const FaIcon(
                          FontAwesomeIcons.google, color: Colors.white70),
                        onTap: () {},),
                      SizedBox(width: 35.w,),
                      const InkWell(child: FaIcon(
                        FontAwesomeIcons.instagram, color: Colors.white70,),),
                      SizedBox(width: 35.w,),
                      const InkWell(child: FaIcon(
                        FontAwesomeIcons.facebook, color: Colors.white70,),),

                    ],

                  ),
                ],

              ),

            ),
            Align(heightFactor: 15,

              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder:(context, animation, secondaryAnimation) => CreateAccountPage(),
                   transitionDuration: Duration(milliseconds:300 ),
                  transitionsBuilder: (context, animation, secondaryAnimation, page) => SlideTransition(
                  position: Tween<Offset>(begin: Offset(2, 0), end: Offset(.0, .0)).animate(animation) ,
                  child: page)));
                },
                child:  Padding(
                  padding: EdgeInsets.all(14.sp),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Icon(Icons.account_circle_sharp, color: Colors.white),
                      SizedBox(width: 16,),
                      Text("CREATE ACCOUNT", style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),)
                    ],),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
