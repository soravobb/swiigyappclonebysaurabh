


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditAccount extends StatelessWidget {
  const EditAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'NAME',),
              ),
            ),
            Container(padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'PHONE NUMBER',),
              ),
            ),
            Container(padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'EMAIL ADDRESS',),
              ),
            ),
            Container(padding: EdgeInsets.all(15),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    minWidth: 220.0,
                    onPressed: () {
                      Navigator.pushNamed(context, 'homescreen');
                    },
                    padding: EdgeInsets.all(25.0),
                    shape: RoundedRectangleBorder(
                    ),
                    color: Colors.orange,
                    child: Text(
                      'HOME',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width:220.0,
                    height: 50,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.orange, width: 1),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'myaccount');

                      },
                      child: Text(
                        "SAVE",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
        appBar: AppBar(
        elevation: 2,
        title: Text("EDIT ACCOUNT",
        style: TextStyle(
        fontSize: 15,
        color: Colors.black,
        fontWeight: FontWeight.bold,
    ),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    leading :IconButton(onPressed: () {
    Navigator.pushNamed(context, 'myaccount');
    },
    icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),),
    ),


      );
  }
}
