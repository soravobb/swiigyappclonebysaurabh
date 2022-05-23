import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:swiggyappclone/widgets/productcategory.dart';

class ProductCategorylist extends StatelessWidget {
  const ProductCategorylist({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    const brands = Productcategory.productcategory;

   return Container(
      height: 120.0,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: brands.length,
        itemBuilder: (BuildContext context, int index) {
          child:
          return Column(
            children: <Widget>[
              CircleAvatar(
                radius: 40.0,
                backgroundImage:
                AssetImage(brands[index].image),
              ),
              SizedBox(height: 6.0),
              Text(
                brands[index].name,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          );
        }
        ),
   );
    }
          }

