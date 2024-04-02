import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie_app/homepage.dart';

class CustomDialogeWidget extends StatelessWidget {
  const CustomDialogeWidget({super.key});

  //get flatButtonStyle => null;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset('assets/images/popimg.png'),
                Positioned(
                    top: 40,
                    left: 0.0,
                    right: 0.0,
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/success.svg',
                        ), Text(
                          " Your order is \n successfully. ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ), Text(
                          "You can track the delivery in  \n         “Orders” section ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                        SizedBox(height: 50,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff263F6A),
                              //background color of button
                              //side: BorderSide(width:3, color:Colors.brown), //border width and color
                              elevation: 3,
                              //elevation of button
                              shape: RoundedRectangleBorder(
                                //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)),
                              //padding: EdgeInsets.all(20) //content padding inside button
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomePage()));
                              //code to execute when this button is pressed.
                            },
                            child: Text(
                              "Continue Order",
                              style: TextStyle(color: Colors.white),
                            )
                        ),
                        TextButton(

                          onPressed: () {},
                          child: Text(
                            "Go  to orders",
                            style: TextStyle(color: Colors.black54),
                          ),
                        )


                      ],
                    )),



              ],
            )
          ],
        ),
      ),
    );
  }
}
