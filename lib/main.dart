import 'package:flutter/material.dart';
import 'package:swiggyappclone/editaccount.dart';
import 'package:swiggyappclone/homescreen.dart';
import 'package:swiggyappclone/loginscreen.dart';
import 'package:swiggyappclone/loginsignup.dart';
import 'package:swiggyappclone/morerestaurents.dart';
import 'package:swiggyappclone/myaccount.dart';
import 'package:swiggyappclone/widgets/restaurantcategory.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'swiggy clone',
        theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
        displayColor: Colors.black
    ),
        ),
      home: LoginScreen(),
        routes:{
          'homescreen': (context) => HomeScreen(),
          'loginsignup': (context) => LoginSignup(),
          'myaccount': (context) => MyAccount(),
          'morerestaurents': (context) => MoreRestaurents(),
          'editaccount': (context) => EditAccount(),


        },
    );

  }
}