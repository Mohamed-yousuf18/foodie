import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green, // Set the app's primary theme color
      ),
      debugShowCheckedModeBanner: false,
      home: LogoRotate(),
    );
  }
}

class LogoRotate extends StatefulWidget {
  const LogoRotate({super.key});

  @override
  State<LogoRotate> createState() => LogoRotateState();
}

class LogoRotateState extends State<LogoRotate> {
  double turns = 0.0;

  void _changeRotation() {
    setState(() => turns += 1.0 / 8.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _changeRotation,
          child: const Text('Rotate Logo'),
        ),
        Padding(
          padding: const EdgeInsets.all(50),
          child: AnimatedRotation(
            turns: turns,
            duration: const Duration(milliseconds: 300),
            child: Image.asset("assets/images/catimg1.png"),
          ),
        ),
      ],
    );
  }
}