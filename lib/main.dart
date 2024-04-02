import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/create_account_page.dart';
import 'package:foodie_app/homepage.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid ? await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyDY0o0vpcPQ_pKQF91j8Gnwe-4wv_2sq6Y",
        appId: "1:343164795694:android:bf533559b01cc5fb9998bf",
        messagingSenderId: "343164795694",
        projectId: "foodieapp-10268"
    )
  )
      :
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       // designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_ , child) {
    return
    MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(

        useMaterial3: true,
      ),
      home:  StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              return HomePage();
            }
            else {
              return CreateAccountPage();
            }
          }
      ),
    ); },

    );
  }
}

