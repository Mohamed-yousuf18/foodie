import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/create_account_page.dart';
import 'package:foodie_app/sign_in_page.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      home:  child,
    ); },
      child: CreateAccountPage(),
    );
  }
}

