

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text("MY ACCOUNT",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading :IconButton(onPressed: () {
          Navigator.pushNamed(context, 'homescreen');
        },
          icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

      Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 27.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('JAYDEEP DODIYA',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          )
                      ),

                      Row(
                        children: [
                          Text('8870123456',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[600],
                            ),
                          ),
                  Text('jaydeep@icloud.com',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[600],),),
                        ],
                      ),
                    ],
                  ),
                ),
                 GestureDetector(
                   onTap: () {
                     Navigator.pushNamed(context, 'editaccount');
                   },
                   child: Text(
                      'EDIT',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),),
                 ),
                //Icon(Icons.keyboard_arrow_right)
              ],
            ),
            Divider(
              color: Colors.black,
              thickness: 0.70,
            ),
          ],
        ),
      ),
            MyAccounts(),
          ],
        ),
      ),

    );
  }
}
class MyAccounttab  {
  const MyAccounttab ({
    required this.title,
    required this.body,
  });

  final String title;
  final String body;

  static const myaccount = [
    MyAccounttab(
        title: "My Account",
        body: "Favourites, Offers and Settings"),
    MyAccounttab(
        title: "Payments & Refunds",
        body: "Refund Status & Payments Modes"),
    MyAccounttab(
        title: "Adresses",
        body: "Share Edit Add New Adress"),
    MyAccounttab(
        title: "One Membership",
        body: "Get Unlimited Free Delivery & Extra Discount"),
    MyAccounttab(
        title: "Swiggy Money",
        body: "View Account Balance & Transactions History"),
    MyAccounttab(
        title: "Help",
        body: "FAQs & Links"),
  ];
}




class MyAccounts extends StatelessWidget {
  const MyAccounts({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    const accounts = MyAccounttab.myaccount;
    return Container(
      child: ListView.builder(
          padding: EdgeInsets.only(left: 10.0),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: accounts.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(accounts[index].title,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                        Text(accounts[index].body,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_right)
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 0.70,
              ),
            ],
          ),
        );
      }
      ),
    );



    }
  }