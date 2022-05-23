


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swiggyappclone/widgets/restaurantcategory.dart';

class Restaurantlist extends StatelessWidget {
  const Restaurantlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const restaurants = Restaurantcategory.restaurantcategory;

    return Container(
        child: ListView.builder(
            padding: EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: restaurants.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                          )
                        ],
                      ),
                      child: Image.asset(
                        restaurants[index].image,
                        height: 150.0,
                        width: 150.0,
                        fit: BoxFit.fill,
                      ),
                    ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[


                  Text(restaurants[index].name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.grey[800], fontSize: 20, fontWeight: FontWeight.bold)),

                Text(restaurants[index].desc,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.grey[800], fontSize: 13.5)),



                    ],
                  ),
              ),

              ],
              ),
              );
            }
        ),
      );
  }

}