import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swiggyappclone/constants.dart';
import 'package:swiggyappclone/morerestaurents.dart';
import 'package:swiggyappclone/productcategorylist.dart';
import 'package:swiggyappclone/restaurantlist.dart';
import 'package:swiggyappclone/widgets/productcategory.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const brands = Productcategory.productcategory;
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
        child: Column(
        children: <Widget>[
    Expanded(

       child:SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                  left: 23,
                  right: 23,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "icons/location.svg",
                              color: Colors.orange,
                              height: 15,
                              width: 15,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const Text(
                              'Home',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down_sharp,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'E516 Goma plaza',
                              style: TextStyle(
                                fontSize: 10,
                                color: kLightBlackColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                     GestureDetector(
                       onTap: () {
                         Navigator.pushNamed(context, 'myaccount');
                       },
                       child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                    ),
                     ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
              child: Container(
                width: 450,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: (8), vertical: (20)),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Search for restaurant, item or more",
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ), 
            const SizedBox(height: 30),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(left: 16, right: 7),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 200,
                      width: 340,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/pizza-g2f6145135_1920.jpg'),
                            fit: BoxFit.cover),
                      ),
                      child: Stack(
                        children: const [
                          Positioned(
                            left: 20,
                            top: 25,
                            child: Text(
                              'Enjoy Free \nDelivery',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 100,
                            child: Text(
                              'And upto 30% OFF on treats &\nmore.',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 30),
            const ProductCategorylist(),
            SizedBox(height: 10),


            Text('restaurants near you',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,),),
            SizedBox(height: 20),
            Restaurantlist(),
            SizedBox(height: 20),
            TextButton(onPressed: () {
              Navigator.pushNamed(context, 'morerestaurents');
            },
              child: Text('more restaurants',
                style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold,),),),

            SizedBox(height: 30,),
            //Text('more restaurants',
              //style: TextStyle(
                  //fontSize: 20,
                  //fontWeight: FontWeight.w400),),







          ],
        ),
      ),
    ),
    ],
    ),
    ),
    );
  }
}
