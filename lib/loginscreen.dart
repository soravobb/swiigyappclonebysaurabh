import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
          children: [
          Container(height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/loginbg.png",),
          alignment: Alignment.topCenter,
          fit: BoxFit.fitWidth,
    ),
    ),
    ),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
               padding: const EdgeInsets.only(left: 16,top: 20),
               child: Text('with the wide collections of \n                cousine',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                SizedBox(height: 5,),
                Text('Ready to order from top resturants?',
                  style: TextStyle(fontSize: 10, color: Colors.black54, ),),
              ],
                ),
            SizedBox(height: 10,),
            MaterialButton(
              minWidth: 300.0,
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
            SizedBox(height: 18,),
            Container(
              width:295,
              height: 50,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.orange, width: 1),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'loginsignup');

                },
                child: Text(
                  "LOGIN / SIGNUP",
                  style: TextStyle(color: Colors.orange),
                ),
              ),
            ),
            SizedBox(height: 30,),
            ],
          ),
        ),
    );
  }
}
