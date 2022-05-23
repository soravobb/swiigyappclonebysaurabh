

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swiggyappclone/widgets/restaurantcategory.dart';

class MoreRestaurents extends StatelessWidget {

  const MoreRestaurents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:Text("more restaurants",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading :IconButton(onPressed: () {
          Navigator.pushNamed(context, "homescreen",);
        },
        icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),),
      ),
      body: SingleChildScrollView(
        child: MoreRestaurentlist(),
      ),
    );


  }
}

class MoreRestaurentslist  {
  const MoreRestaurentslist({
    required this.image,
    required this.name,
    required this.desc,
  });

  final String image;
  final String name;
  final String desc;

  static const morerestaurents = [
    MoreRestaurentslist(
        image: "assets/images/burgerdish.jpg",
        name: "22nd parle",
        desc: "Burger,Streaks, french and cheese"),
    MoreRestaurentslist(
        image: "assets/images/eggdish.jpg",
        name: "The obroma",
        desc: "eggs, Avacados, healthy meal"),
    MoreRestaurentslist(
        image: "assets/images/muisellidish.jpg",
        name: "Mogaldham",
        desc: "Perfect healthy breakfast"),
    MoreRestaurentslist(
        image: "assets/images/pancakedish.jpg",
        name: "Pankingdom",
        desc: "Delicious Pancake with Honey "),
    MoreRestaurentslist(
        image: "assets/images/pastrydish.jpg",
        name: "Pastry Palace",
        desc: "Dark Chocolaye Pastry"),
    MoreRestaurentslist(
        image: "assets/images/tikkadish.jpg",
        name: "Indian house",
        desc: "Indian cousine with various flavors"),
    MoreRestaurentslist(
        image: "assets/images/pizzadish.jpg",
        name: "Italiano",
        desc: "Thin Crust pizza"),


  ];
}
class MoreRestaurentlist extends StatelessWidget {
  const MoreRestaurentlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const morerestaurents = MoreRestaurentslist.morerestaurents;

    return Container(
      child: ListView.builder(
          padding: EdgeInsets.only(left: 10.0),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: morerestaurents.length,
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
                      morerestaurents[index].image,
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


                        Text(morerestaurents[index].name,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.grey[800], fontSize: 20, fontWeight: FontWeight.bold)),

                        Text(morerestaurents[index].desc,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.grey, fontSize: 10)),



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



