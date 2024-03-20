import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff45173E),
      body: Column(
        children: [
          Container(
            height: 550,
            color: Colors.orange,
          )
        ],
      ),

    );
  }
}
