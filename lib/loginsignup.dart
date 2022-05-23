import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swiggyappclone/constants.dart';

class LoginSignup extends StatelessWidget {
  const LoginSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
      children: [
      Container(height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/loginsignup.png",),
          alignment: Alignment.topCenter,
          fit: BoxFit.fitWidth,
        ),
      ),
    ),

               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 30),
                 child: Column(
                   children: [
                     Row(
                       children: [
                         Text('LOGIN', style: TextStyle(
                                fontSize: 25,fontWeight: FontWeight.bold,
                         ),),
                       ],
                     ),
                     Row(
                       children: [
                         Text('Enter your phone number to proceed', style: TextStyle(
                           fontSize: 15, color:kLightBlackColor,
                         ),),
                       ],
                     ),
                     SizedBox(height: 20),

  ],
                   ),
                 ),
        Container(width: 440.0,
          child: TextField(
            decoration: InputDecoration(
              hintText: '10 digit mobile no',),
          ),
        ),

        SizedBox(height: 22),
        MaterialButton(
          minWidth: 450.0,
          onPressed: () {
            Navigator.pushNamed(context, 'homescreen');
          },
          padding: EdgeInsets.all(25.0),
          shape: RoundedRectangleBorder(
          ),
          color: Colors.orange,
          child: Text(
            'EXPLORE',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),

        SizedBox(height: 10),
        RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 13),
            children: [
              TextSpan(
                text: "By clicking, I accept the ",),
              TextSpan(
                  text:  "Terms & Conditions ",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
              TextSpan(
                text: "& ",),
              TextSpan(
                  text:  "Privacy Policy",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            ],),
        ),


             ],
           ),
           ),
    );



  }
}
